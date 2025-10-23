# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Player#list_recently_played
      class PlayerListRecentlyPlayedParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute after
        #   A Unix timestamp in milliseconds. Returns all items after (but not including)
        #   this cursor position. If `after` is specified, `before` must not be specified.
        #
        #   @return [Integer, nil]
        optional :after, Integer

        # @!attribute before
        #   A Unix timestamp in milliseconds. Returns all items before (but not including)
        #   this cursor position. If `before` is specified, `after` must not be specified.
        #
        #   @return [Integer, nil]
        optional :before, Integer

        # @!attribute limit
        #   The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(after: nil, before: nil, limit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::PlayerListRecentlyPlayedParams} for more details.
        #
        #   @param after [Integer] A Unix timestamp in milliseconds. Returns all items
        #
        #   @param before [Integer] A Unix timestamp in milliseconds. Returns all items
        #
        #   @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
