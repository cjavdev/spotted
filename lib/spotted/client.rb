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

    # @return [String, nil]
    attr_reader :client_id

    # @return [String, nil]
    attr_reader :client_secret

    # @return [String, nil]
    attr_reader :access_token

    # @return [Spotted::Resources::Albums]
    attr_reader :albums

    # @return [Spotted::Resources::Artists]
    attr_reader :artists

    # @return [Spotted::Resources::Shows]
    attr_reader :shows

    # @return [Spotted::Resources::Episodes]
    attr_reader :episodes

    # @return [Spotted::Resources::Audiobooks]
    attr_reader :audiobooks

    # @return [Spotted::Resources::Me]
    attr_reader :me

    # @return [Spotted::Resources::Chapters]
    attr_reader :chapters

    # @return [Spotted::Resources::Tracks]
    attr_reader :tracks

    # @return [Spotted::Resources::Search]
    attr_reader :search

    # @return [Spotted::Resources::Playlists]
    attr_reader :playlists

    # @return [Spotted::Resources::Users]
    attr_reader :users

    # @return [Spotted::Resources::Browse]
    attr_reader :browse

    # @return [Spotted::Resources::AudioFeatures]
    attr_reader :audio_features

    # @return [Spotted::Resources::AudioAnalysis]
    attr_reader :audio_analysis

    # @return [Spotted::Resources::Recommendations]
    attr_reader :recommendations

    # @return [Spotted::Resources::Markets]
    attr_reader :markets

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {**bearer_auth, **oauth_2_0}
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def bearer_auth
      return {} if @access_token.nil?

      {"authorization" => "Bearer #{@access_token}"}
    end

    # @api private
    # @return [Spotted::Internal::OAuth2ClientCredentials]
    attr_reader :oauth_2_0_state

    # @api private
    #
    # @return [Hash{String=>String}]
    private def oauth_2_0
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
    # @param access_token [String, nil] Defaults to `ENV["SPOTIFY_ACCESS_TOKEN"]`
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
      access_token: ENV["SPOTIFY_ACCESS_TOKEN"],
      base_url: ENV["SPOTTED_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.spotify.com/v1"

      @client_id = client_id&.to_s
      @client_secret = client_secret&.to_s
      @access_token = access_token&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @albums = Spotted::Resources::Albums.new(client: self)
      @artists = Spotted::Resources::Artists.new(client: self)
      @shows = Spotted::Resources::Shows.new(client: self)
      @episodes = Spotted::Resources::Episodes.new(client: self)
      @audiobooks = Spotted::Resources::Audiobooks.new(client: self)
      @me = Spotted::Resources::Me.new(client: self)
      @chapters = Spotted::Resources::Chapters.new(client: self)
      @tracks = Spotted::Resources::Tracks.new(client: self)
      @search = Spotted::Resources::Search.new(client: self)
      @playlists = Spotted::Resources::Playlists.new(client: self)
      @users = Spotted::Resources::Users.new(client: self)
      @browse = Spotted::Resources::Browse.new(client: self)
      @audio_features = Spotted::Resources::AudioFeatures.new(client: self)
      @audio_analysis = Spotted::Resources::AudioAnalysis.new(client: self)
      @recommendations = Spotted::Resources::Recommendations.new(client: self)
      @markets = Spotted::Resources::Markets.new(client: self)
    end

    # Generates the Spotify authorization URL for OAuth2 authorization code flow.
    #
    # @param redirect_uri [String] The URI to redirect to after authorization
    # @param scope [String, Array<String>, nil] Space-delimited string or array of authorization scopes
    # @param state [String, nil] Optional state parameter for CSRF protection
    # @param show_dialog [Boolean] Whether to force the user to approve the app again
    #
    # @return [String] The authorization URL to redirect the user to
    #
    # @example Basic usage
    #   client = Spotted::Client.new(client_id: "...", client_secret: "...")
    #   url = client.authorization_url(redirect_uri: "http://localhost:3000/callback")
    #
    # @example With scopes and state
    #   url = client.authorization_url(
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
      "https://accounts.spotify.com/authorize?#{query_string}"
    end
  end
end
