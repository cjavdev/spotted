# typed: strong

module Spotted
  module Models
    class AudiobookListChaptersParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Spotted::AudiobookListChaptersParams,
            Spotted::Internal::AnyHash
          )
        end

      # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

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

      # The index of the first item to return. Default: 0 (the first item). Use with
      # limit to get the next set of items.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          limit: Integer,
          market: String,
          offset: Integer,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        limit: nil,
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
        # The index of the first item to return. Default: 0 (the first item). Use with
        # limit to get the next set of items.
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            limit: Integer,
            market: String,
            offset: Integer,
            request_options: Spotted::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
