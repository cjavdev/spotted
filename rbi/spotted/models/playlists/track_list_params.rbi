# typed: strong

module Spotted
  module Models
    module Playlists
      class TrackListParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Playlists::TrackListParams,
              Spotted::Internal::AnyHash
            )
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

        # Filters for the query: a comma-separated list of the fields to return. If
        # omitted, all fields are returned. For example, to get just the total number of
        # items and the request limit:<br/>`fields=total,limit`<br/>A dot separator can be
        # used to specify non-reoccurring fields, while parentheses can be used to specify
        # reoccurring fields within objects. For example, to get just the added date and
        # user ID of the adder:<br/>`fields=items(added_at,added_by.id)`<br/>Use multiple
        # parentheses to drill down into nested objects, for
        # example:<br/>`fields=items(track(name,href,album(name,href)))`<br/>Fields can be
        # excluded by prefixing them with an exclamation mark, for
        # example:<br/>`fields=items.track.album(!external_urls,images)`
        sig { returns(T.nilable(String)) }
        attr_reader :fields

        sig { params(fields: String).void }
        attr_writer :fields

        # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 100.
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
            additional_types: String,
            fields: String,
            limit: Integer,
            market: String,
            offset: Integer,
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
          # Filters for the query: a comma-separated list of the fields to return. If
          # omitted, all fields are returned. For example, to get just the total number of
          # items and the request limit:<br/>`fields=total,limit`<br/>A dot separator can be
          # used to specify non-reoccurring fields, while parentheses can be used to specify
          # reoccurring fields within objects. For example, to get just the added date and
          # user ID of the adder:<br/>`fields=items(added_at,added_by.id)`<br/>Use multiple
          # parentheses to drill down into nested objects, for
          # example:<br/>`fields=items(track(name,href,album(name,href)))`<br/>Fields can be
          # excluded by prefixing them with an exclamation mark, for
          # example:<br/>`fields=items.track.album(!external_urls,images)`
          fields: nil,
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 100.
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
              additional_types: String,
              fields: String,
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
end
