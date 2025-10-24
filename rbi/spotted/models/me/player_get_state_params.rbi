# typed: strong

module Spotted
  module Models
    module Me
      class PlayerGetStateParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Spotted::Me::PlayerGetStateParams, Spotted::Internal::AnyHash)
          end

        # A comma-separated list of item types that your client supports besides the
        # default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**:
        # This parameter was introduced to allow existing clients to maintain their
        # current behaviour and might be deprecated in the future._<br/> In addition to
        # providing this parameter, make sure that your client properly handles cases of
        # new types in the future by checking against the `type` field of each object.
        sig { returns(T.nilable(String)) }
        attr_reader :additional_types

        sig { params(additional_types: String).void }
        attr_writer :additional_types

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
            additional_types: String,
            market: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A comma-separated list of item types that your client supports besides the
          # default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**:
          # This parameter was introduced to allow existing clients to maintain their
          # current behaviour and might be deprecated in the future._<br/> In addition to
          # providing this parameter, make sure that your client properly handles cases of
          # new types in the future by checking against the `type` field of each object.
          additional_types: nil,
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
              additional_types: String,
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
end
