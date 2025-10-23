# frozen_string_literal: true

module Spotted
  module Models
    module Playlists
      # @see Spotted::Resources::Playlists::Tracks#retrieve
      class TrackRetrieveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute additional_types
        #   A comma-separated list of item types that your client supports besides the
        #   default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**:
        #   This parameter was introduced to allow existing clients to maintain their
        #   current behaviour and might be deprecated in the future._<br/> In addition to
        #   providing this parameter, make sure that your client properly handles cases of
        #   new types in the future by checking against the `type` field of each object.
        #
        #   @return [String, nil]
        optional :additional_types, String

        # @!attribute fields
        #   Filters for the query: a comma-separated list of the fields to return. If
        #   omitted, all fields are returned. For example, to get just the total number of
        #   items and the request limit:<br/>`fields=total,limit`<br/>A dot separator can be
        #   used to specify non-reoccurring fields, while parentheses can be used to specify
        #   reoccurring fields within objects. For example, to get just the added date and
        #   user ID of the adder:<br/>`fields=items(added_at,added_by.id)`<br/>Use multiple
        #   parentheses to drill down into nested objects, for
        #   example:<br/>`fields=items(track(name,href,album(name,href)))`<br/>Fields can be
        #   excluded by prefixing them with an exclamation mark, for
        #   example:<br/>`fields=items.track.album(!external_urls,images)`
        #
        #   @return [String, nil]
        optional :fields, String

        # @!attribute limit
        #   The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute market
        #   An
        #   [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
        #   If a country code is specified, only content that is available in that market
        #   will be returned.<br/> If a valid user access token is specified in the request
        #   header, the country associated with the user account will take priority over
        #   this parameter.<br/> _**Note**: If neither market or user country are provided,
        #   the content is considered unavailable for the client._<br/> Users can view the
        #   country that is associated with their account in the
        #   [account settings](https://www.spotify.com/account/overview/).
        #
        #   @return [String, nil]
        optional :market, String

        # @!attribute offset
        #   The index of the first item to return. Default: 0 (the first item). Use with
        #   limit to get the next set of items.
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!method initialize(additional_types: nil, fields: nil, limit: nil, market: nil, offset: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Playlists::TrackRetrieveParams} for more details.
        #
        #   @param additional_types [String] A comma-separated list of item types that your client supports besides the defau
        #
        #   @param fields [String] Filters for the query: a comma-separated list of the
        #
        #   @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        #   @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
        #
        #   @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
