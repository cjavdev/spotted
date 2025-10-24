# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Following#unfollow
      class FollowingUnfollowParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute body_ids
        #   A JSON array of the artist or user
        #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
        #   `{ids:["74ASZWbe4lXaubB36ztrGX", "08td7MxkoHQkXnWAYD8d6Q"]}`. A maximum of 50
        #   IDs can be sent in one request. _**Note**: if the `ids` parameter is present in
        #   the query string, any IDs listed here in the body will be ignored._
        #
        #   @return [Array<String>, nil]
        optional :body_ids, Spotted::Internal::Type::ArrayOf[String], api_name: :ids

        # @!attribute type
        #   The ID type: either `artist` or `user`.
        #
        #   @return [Symbol, Spotted::Models::Me::FollowingUnfollowParams::Type]
        required :type, enum: -> { Spotted::Me::FollowingUnfollowParams::Type }

        # @!method initialize(type:, body_ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::FollowingUnfollowParams} for more details.
        #
        #   @param type [Symbol, Spotted::Models::Me::FollowingUnfollowParams::Type] The ID type: either `artist` or `user`.
        #
        #   @param body_ids [Array<String>] A JSON array of the artist or user [Spotify IDs](/documentation/web-api/concepts
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]

        # The ID type: either `artist` or `user`.
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
