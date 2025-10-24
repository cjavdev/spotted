# frozen_string_literal: true

module Spotted
  class Client < Spotted::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :client_id

    # @return [String]
    attr_reader :client_secret

    # @return [Spotted::Resources::Albums]
    attr_reader :albums

    # @api private
    # @return [Spotted::Internal::OAuth2ClientCredentials]
    attr_reader :oauth_2_0_state

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return @oauth_2_0_state.auth_headers if @oauth_2_0_state

      return {} unless @client_id && @client_secret

      path = Spotted::Internal::Util.interpolate_path("https://accounts.spotify.com/api/token")
      token_url = Spotted::Internal::Util.join_parsed_uri(
        @base_url_components,
        {
          path: path,
          query: {grant_type: "client_credentials"}
        }
      )

      @oauth_2_0_state = Spotted::Internal::OAuth2ClientCredentials.new(
        token_url: token_url.to_s,
        client_id: @client_id,
        client_secret: @client_secret,
        timeout: @timeout,
        client: self
      )
      @oauth_2_0_state.auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param client_id [String, nil] Defaults to `ENV["SPOTIFY_CLIENT_ID"]`
    #
    # @param client_secret [String, nil] Defaults to `ENV["SPOTIFY_CLIENT_SECRET"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["SPOTTED_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      client_id: ENV["SPOTIFY_CLIENT_ID"],
      client_secret: ENV["SPOTIFY_CLIENT_SECRET"],
      base_url: ENV["SPOTTED_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.spotify.com/v1"

      if client_id.nil?
        raise ArgumentError.new("client_id is required, and can be set via environ: \"SPOTIFY_CLIENT_ID\"")
      end
      if client_secret.nil?
        raise ArgumentError.new("client_secret is required, and can be set via environ: \"SPOTIFY_CLIENT_SECRET\"")
      end

      @client_id = client_id.to_s
      @client_secret = client_secret.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @albums = Spotted::Resources::Albums.new(client: self)
    end
  end
end
