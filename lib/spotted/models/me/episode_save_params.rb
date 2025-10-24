# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Episodes#save
      class EpisodeSaveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute body_ids
        #   A JSON array of the
        #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). <br/>A maximum
        #   of 50 items can be specified in one request. _**Note**: if the `ids` parameter
        #   is present in the query string, any IDs listed here in the body will be
        #   ignored._
        #
        #   @return [Array<String>]
        required :body_ids, Spotted::Internal::Type::ArrayOf[String], api_name: :ids

        # @!method initialize(body_ids:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::EpisodeSaveParams} for more details.
        #
        #   @param body_ids [Array<String>] A JSON array of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-i
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
