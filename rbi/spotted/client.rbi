# typed: strong

module Spotted
  class Client < Spotted::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(T.nilable(String)) }
    attr_reader :client_id

    sig { returns(T.nilable(String)) }
    attr_reader :client_secret

    sig { returns(T.nilable(String)) }
    attr_reader :access_token

    sig { returns(Spotted::Resources::Albums) }
    attr_reader :albums

    sig { returns(Spotted::Resources::Artists) }
    attr_reader :artists

    sig { returns(Spotted::Resources::Shows) }
    attr_reader :shows

    sig { returns(Spotted::Resources::Episodes) }
    attr_reader :episodes

    sig { returns(Spotted::Resources::Audiobooks) }
    attr_reader :audiobooks

    sig { returns(Spotted::Resources::Me) }
    attr_reader :me

    sig { returns(Spotted::Resources::Chapters) }
    attr_reader :chapters

    sig { returns(Spotted::Resources::Tracks) }
    attr_reader :tracks

    sig { returns(Spotted::Resources::Search) }
    attr_reader :search

    sig { returns(Spotted::Resources::Playlists) }
    attr_reader :playlists

    sig { returns(Spotted::Resources::Users) }
    attr_reader :users

    sig { returns(Spotted::Resources::Browse) }
    attr_reader :browse

    sig { returns(Spotted::Resources::AudioFeatures) }
    attr_reader :audio_features

    sig { returns(Spotted::Resources::AudioAnalysis) }
    attr_reader :audio_analysis

    sig { returns(Spotted::Resources::Recommendations) }
    attr_reader :recommendations

    sig { returns(Spotted::Resources::Markets) }
    attr_reader :markets

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # @api private
    sig { returns(T::Hash[String, String]) }
    private def bearer_auth
    end

    # @api private
    sig { returns(Spotted::Internal::OAuth2ClientCredentials) }
    attr_reader :oauth_2_0_state

    # @api private
    sig { returns(T::Hash[String, String]) }
    private def oauth_2_0
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        client_id: T.nilable(String),
        client_secret: T.nilable(String),
        access_token: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["SPOTIFY_CLIENT_ID"]`
      client_id: ENV["SPOTIFY_CLIENT_ID"],
      # Defaults to `ENV["SPOTIFY_CLIENT_SECRET"]`
      client_secret: ENV["SPOTIFY_CLIENT_SECRET"],
      # Defaults to `ENV["SPOTIFY_ACCESS_TOKEN"]`
      access_token: ENV["SPOTIFY_ACCESS_TOKEN"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["SPOTTED_BASE_URL"]`
      base_url: ENV["SPOTTED_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Spotted::Client::DEFAULT_MAX_RETRIES,
      timeout: Spotted::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Spotted::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Spotted::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
