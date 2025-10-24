# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Following#list
      class FollowingListParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute type
        #   The ID type: currently only `artist` is supported.
        #
        #   @return [Symbol, Spotted::Models::Me::FollowingListParams::Type]
        required :type, enum: -> { Spotted::Me::FollowingListParams::Type }

        # @!attribute after
        #   The last artist ID retrieved from the previous request.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute limit
        #   The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(type:, after: nil, limit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::FollowingListParams} for more details.
        #
        #   @param type [Symbol, Spotted::Models::Me::FollowingListParams::Type] The ID type: currently only `artist` is supported.
        #
        #   @param after [String] The last artist ID retrieved from the previous request.
        #
        #   @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]

        # The ID type: currently only `artist` is supported.
        module Type
          extend Spotted::Internal::Type::Enum

          ARTIST = :artist

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
