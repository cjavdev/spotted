# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Browse#get_new_releases
    class BrowseGetNewReleasesParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      # @!attribute limit
      #   The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   The index of the first item to return. Default: 0 (the first item). Use with
      #   limit to get the next set of items.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(limit: nil, offset: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::BrowseGetNewReleasesParams} for more details.
      #
      #   @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
      #
      #   @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
      #
      #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
