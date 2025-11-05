# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Following#follow
      class FollowingFollowParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute ids
        #   A JSON array of the artist or user
        #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
        #   `{ids:["74ASZWbe4lXaubB36ztrGX", "08td7MxkoHQkXnWAYD8d6Q"]}`. A maximum of 50
        #   IDs can be sent in one request. _**Note**: if the `ids` parameter is present in
        #   the query string, any IDs listed here in the body will be ignored._
        #
        #   @return [Array<String>]
        required :ids, Spotted::Internal::Type::ArrayOf[String]

        # @!method initialize(ids:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::FollowingFollowParams} for more details.
        #
        #   @param ids [Array<String>] A JSON array of the artist or user [Spotify IDs](/documentation/web-api/concepts
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
