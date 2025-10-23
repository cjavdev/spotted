# typed: strong

module Spotted
  class Client < Spotted::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :client_id

    sig { returns(String) }
    attr_reader :client_secret

    sig { returns(Spotted::Resources::Albums) }
    attr_reader :albums

    # @api private
    sig { returns(Spotted::Internal::OAuth2ClientCredentials) }
    attr_reader :o_auth2_state

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        client_id: T.nilable(String),
        client_secret: T.nilable(String),
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
