# frozen_string_literal: true

module Spotted
  # Handles OAuth 2.0 authorization flows for Spotify API
  class Auth
    AUTHORIZE_URL = "https://accounts.spotify.com/authorize"
    TOKEN_URL = "https://accounts.spotify.com/api/token"

    # @return [String]
    attr_reader :client_id

    # @return [String]
    attr_reader :client_secret

    # Creates a new Auth instance for handling OAuth flows
    #
    # @param client_id [String] The Spotify application client ID
    # @param client_secret [String] The Spotify application client secret
    #
    # @raise [ArgumentError] if client_id or client_secret is missing
    def initialize(client_id:, client_secret:)
      if client_id.nil? || client_id.empty?
        raise ArgumentError, "client_id is required"
      end

      if client_secret.nil? || client_secret.empty?
        raise ArgumentError, "client_secret is required"
      end

      @client_id = client_id
      @client_secret = client_secret
    end

    # Generates the Spotify authorization URL for OAuth2 authorization code flow
    #
    # @param redirect_uri [String] The URI to redirect to after authorization
    # @param scope [String, Array<String>, nil] Space-delimited string or array of authorization scopes
    # @param state [String, nil] Optional state parameter for CSRF protection
    # @param show_dialog [Boolean] Whether to force the user to approve the app again
    #
    # @return [String] The authorization URL to redirect the user to
    #
    # @example Basic usage
    #   auth = Spotted::Auth.new(client_id: "...", client_secret: "...")
    #   url = auth.authorization_url(redirect_uri: "http://localhost:3000/callback")
    #
    # @example With scopes and state
    #   url = auth.authorization_url(
    #     redirect_uri: "http://localhost:3000/callback",
    #     scope: ["user-read-private", "user-read-email"],
    #     state: "random_state_string"
    #   )
    def authorization_url(redirect_uri:, scope: nil, state: nil, show_dialog: false)
      params = {
        client_id: @client_id,
        response_type: "code",
        redirect_uri: redirect_uri
      }

      params[:scope] = scope.is_a?(Array) ? scope.join(" ") : scope if scope
      params[:state] = state if state
      params[:show_dialog] = "true" if show_dialog

      query_string = URI.encode_www_form(params)
      "#{AUTHORIZE_URL}?#{query_string}"
    end

    # Exchanges an authorization code for an access token
    #
    # @param code [String] The authorization code received from the authorization callback
    # @param redirect_uri [String] The redirect URI used in the authorization request (must match exactly)
    #
    # @return [Hash] Token response containing:
    #   - access_token [String] The access token to use for API requests
    #   - token_type [String] The type of token (usually "Bearer")
    #   - expires_in [Integer] Number of seconds until the token expires
    #   - refresh_token [String] Token to use to refresh the access token
    #   - scope [String] Space-delimited list of granted scopes
    #
    # @raise [Spotted::APIError] if the token exchange fails
    #
    # @example
    #   auth = Spotted::Auth.new(client_id: "...", client_secret: "...")
    #   credentials = auth.exchange_authorization_code(
    #     code: params[:code],
    #     redirect_uri: "http://localhost:3000/callback"
    #   )
    #   access_token = credentials[:access_token]
    def exchange_authorization_code(code:, redirect_uri:)
      body = URI.encode_www_form(
        grant_type: "authorization_code",
        code: code,
        redirect_uri: redirect_uri
      )

      make_token_request(body: body)
    end

    # Refreshes an access token using a refresh token
    #
    # @param refresh_token [String] The refresh token received from a previous authorization
    #
    # @return [Hash] Token response containing:
    #   - access_token [String] The new access token to use for API requests
    #   - token_type [String] The type of token (usually "Bearer")
    #   - expires_in [Integer] Number of seconds until the token expires
    #   - scope [String] Space-delimited list of granted scopes
    #
    # @raise [Spotted::APIError] if the token refresh fails
    #
    # @example
    #   auth = Spotted::Auth.new(client_id: "...", client_secret: "...")
    #   credentials = auth.refresh_access_token(refresh_token: stored_refresh_token)
    #   new_access_token = credentials[:access_token]
    def refresh_access_token(refresh_token:)
      body = URI.encode_www_form(
        grant_type: "refresh_token",
        refresh_token: refresh_token
      )

      make_token_request(body: body)
    end

    private

    # Makes a request to the token endpoint
    #
    # @param body [String] The URL-encoded form body
    # @return [Hash] The parsed JSON response
    # @raise [Spotted::APIError] if the request fails
    def make_token_request(body:)
      uri = URI(TOKEN_URL)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      # Configure SSL to use system certificates
      http.verify_mode = OpenSSL::SSL::VERIFY_PEER
      http.cert_store = OpenSSL::X509::Store.new
      http.cert_store.set_default_paths

      request = Net::HTTP::Post.new(uri.path)
      request["Content-Type"] = "application/x-www-form-urlencoded"
      request["Authorization"] = "Basic #{Base64.strict_encode64("#{@client_id}:#{@client_secret}")}"
      request.body = body

      response = http.request(request)

      parse_token_response(response)
    end

    # Parses the token response and handles errors
    #
    # @param response [Net::HTTPResponse] The HTTP response from the token endpoint
    # @return [Hash] The parsed token data with symbolized keys
    # @raise [Spotted::APIError] if the response indicates an error
    def parse_token_response(response)
      body = JSON.parse(response.body)

      case response
      when Net::HTTPSuccess
        # Convert string keys to symbols for easier access
        body.transform_keys(&:to_sym)
      else
        error_message = body["error_description"] || body["error"] || "Token request failed"
        raise Spotted::APIError.new(
          message: error_message,
          status_code: response.code.to_i,
          body: body
        )
      end
    end
  end
end
