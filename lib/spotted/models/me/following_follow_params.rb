# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Following#follow
      class FollowingFollowParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute body_ids
        #   A JSON array of the artist or user
        #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
        #   `{ids:["74ASZWbe4lXaubB36ztrGX", "08td7MxkoHQkXnWAYD8d6Q"]}`. A maximum of 50
        #   IDs can be sent in one request. _**Note**: if the `ids` parameter is present in
        #   the query string, any IDs listed here in the body will be ignored._
        #
        #   @return [Array<String>]
        required :body_ids, Spotted::Internal::Type::ArrayOf[String], api_name: :ids

        # @!attribute type
        #   The ID type.
        #
        #   @return [Symbol, Spotted::Models::Me::FollowingFollowParams::Type]
        required :type, enum: -> { Spotted::Me::FollowingFollowParams::Type }

        # @!method initialize(body_ids:, type:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::FollowingFollowParams} for more details.
        #
        #   @param body_ids [Array<String>] A JSON array of the artist or user [Spotify IDs](/documentation/web-api/concepts
        #
        #   @param type [Symbol, Spotted::Models::Me::FollowingFollowParams::Type] The ID type.
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]

        # The ID type.
        module Type
          extend Spotted::Internal::Type::Enum

          ARTIST = :artist
          USER = :user

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
