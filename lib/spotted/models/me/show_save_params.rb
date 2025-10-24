# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Shows#save
      class ShowSaveParams < Spotted::Internal::Type::BaseModel
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

        # @!method initialize(body_ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::ShowSaveParams} for more details.
        #
        #   @param body_ids [Array<String>] A JSON array of the [Spotify IDs](https://developer.spotify.com/documentation/we
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
