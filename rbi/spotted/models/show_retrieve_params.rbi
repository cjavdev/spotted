# typed: strong

module Spotted
  module Models
    class ShowRetrieveParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Spotted::ShowRetrieveParams, Spotted::Internal::AnyHash)
        end

      # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
      sig { returns(String) }
      attr_accessor :id

      # An
      # [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
      # If a country code is specified, only content that is available in that market
      # will be returned.<br/> If a valid user access token is specified in the request
      # header, the country associated with the user account will take priority over
      # this parameter.<br/> _**Note**: If neither market or user country are provided,
      # the content is considered unavailable for the client._<br/> Users can view the
      # country that is associated with their account in the
      # [account settings](https://www.spotify.com/account/overview/).
      sig { returns(T.nilable(String)) }
      attr_reader :market

      sig { params(market: String).void }
      attr_writer :market

      sig do
        params(
          id: String,
          market: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
        id:,
        # An
        # [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
        # If a country code is specified, only content that is available in that market
        # will be returned.<br/> If a valid user access token is specified in the request
        # header, the country associated with the user account will take priority over
        # this parameter.<br/> _**Note**: If neither market or user country are provided,
        # the content is considered unavailable for the client._<br/> Users can view the
        # country that is associated with their account in the
        # [account settings](https://www.spotify.com/account/overview/).
        market: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            market: String,
            request_options: Spotted::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
