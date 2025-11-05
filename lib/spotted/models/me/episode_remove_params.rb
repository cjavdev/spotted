# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Episodes#remove
      class EpisodeRemoveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute ids
        #   A JSON array of the
        #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). <br/>A maximum
        #   of 50 items can be specified in one request. _**Note**: if the `ids` parameter
        #   is present in the query string, any IDs listed here in the body will be
        #   ignored._
        #
        #   @return [Array<String>, nil]
        optional :ids, Spotted::Internal::Type::ArrayOf[String]

        # @!method initialize(ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::EpisodeRemoveParams} for more details.
        #
        #   @param ids [Array<String>] A JSON array of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-i
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
