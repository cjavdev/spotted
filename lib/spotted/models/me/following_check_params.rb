# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Following#check
      class FollowingCheckParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute ids
        #   A comma-separated list of the artist or the user
        #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) to check. For
        #   example: `ids=74ASZWbe4lXaubB36ztrGX,08td7MxkoHQkXnWAYD8d6Q`. A maximum of 50
        #   IDs can be sent in one request.
        #
        #   @return [String]
        required :ids, String

        # @!attribute type
        #   The ID type: either `artist` or `user`.
        #
        #   @return [Symbol, Spotted::Models::Me::FollowingCheckParams::Type]
        required :type, enum: -> { Spotted::Me::FollowingCheckParams::Type }

        # @!method initialize(ids:, type:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::FollowingCheckParams} for more details.
        #
        #   @param ids [String] A comma-separated list of the artist or the user [Spotify IDs](/documentation/we
        #
        #   @param type [Symbol, Spotted::Models::Me::FollowingCheckParams::Type] The ID type: either `artist` or `user`.
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
