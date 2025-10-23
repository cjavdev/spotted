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
    attr_reader :api_key

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
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["SPOTTED_API_KEY"]`
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
      api_key: ENV["SPOTTED_API_KEY"],
      base_url: ENV["SPOTTED_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.spotify.com/v1"

      @api_key = api_key&.to_s

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
  end
end
