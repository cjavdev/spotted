# frozen_string_literal: true

module Spotted
  module Models
    module Users
      # @see Spotted::Resources::Users::Playlists#list
      class PlaylistListParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute limit
        #   The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute offset
        #   The index of the first playlist to return. Default: 0 (the first object).
        #   Maximum offset: 100.000\. Use with `limit` to get the next set of playlists.
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!method initialize(limit: nil, offset: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Users::PlaylistListParams} for more details.
        #
        #   @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        #   @param offset [Integer] The index of the first playlist to return. Default:
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
