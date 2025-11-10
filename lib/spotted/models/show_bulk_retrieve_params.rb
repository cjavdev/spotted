# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Shows#bulk_retrieve
    class ShowBulkRetrieveParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      # @!attribute ids
      #   A comma-separated list of the
      #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the shows.
      #   Maximum: 50 IDs.
      #
      #   @return [String]
      required :ids, String

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

      # @!method initialize(ids:, market: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ShowBulkRetrieveParams} for more details.
      #
      #   @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
      #
      #   @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
