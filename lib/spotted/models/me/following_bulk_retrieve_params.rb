# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Following#bulk_retrieve
      class FollowingBulkRetrieveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute type
        #   The ID type: currently only `artist` is supported.
        #
        #   @return [Symbol, :artist]
        required :type, const: :artist

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

        # @!method initialize(after: nil, limit: nil, type: :artist, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::FollowingBulkRetrieveParams} for more details.
        #
        #   @param after [String] The last artist ID retrieved from the previous request.
        #
        #   @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        #   @param type [Symbol, :artist] The ID type: currently only `artist` is supported.
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
