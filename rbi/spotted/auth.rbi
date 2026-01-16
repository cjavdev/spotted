# typed: strong

module Spotted
  class Auth
    AUTHORIZE_URL = T.let("https://accounts.spotify.com/authorize", String)
    TOKEN_URL = T.let("https://accounts.spotify.com/api/token", String)

    sig { returns(String) }
    attr_reader :client_id

    sig { returns(String) }
    attr_reader :client_secret

    sig { params(client_id: String, client_secret: String).void }
    def initialize(client_id:, client_secret:); end

    sig do
      params(
        redirect_uri: String,
        scope: T.nilable(T.any(String, T::Array[String])),
        state: T.nilable(String),
        show_dialog: T::Boolean
      ).returns(String)
    end
    def authorization_url(redirect_uri:, scope: nil, state: nil, show_dialog: false); end

    sig do
      params(
        code: String,
        redirect_uri: String
      ).returns(T::Hash[Symbol, T.untyped])
    end
    def exchange_authorization_code(code:, redirect_uri:); end

    sig do
      params(
        refresh_token: String
      ).returns(T::Hash[Symbol, T.untyped])
    end
    def refresh_access_token(refresh_token:); end
  end
end
