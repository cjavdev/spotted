# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Shows#remove
      class ShowRemoveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute body_ids
        #   A JSON array of the
        #   [Spotify IDs](https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids).
        #   A maximum of 50 items can be specified in one request. _Note: if the `ids`
        #   parameter is present in the query string, any IDs listed here in the body will
        #   be ignored._
        #
        #   @return [Array<String>, nil]
        optional :body_ids, Spotted::Internal::Type::ArrayOf[String], api_name: :ids

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

        # @!method initialize(body_ids: nil, market: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::ShowRemoveParams} for more details.
        #
        #   @param body_ids [Array<String>] A JSON array of the [Spotify IDs](https://developer.spotify.com/documentation/we
        #
        #   @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
