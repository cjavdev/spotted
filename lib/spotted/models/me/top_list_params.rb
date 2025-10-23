# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Top#list
      class TopListParams < Spotted::Internal::Type::BaseModel
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

        # @!attribute time_range
        #   Over what time frame the affinities are computed. Valid values: `long_term`
        #   (calculated from ~1 year of data and including all new data as it becomes
        #   available), `medium_term` (approximately last 6 months), `short_term`
        #   (approximately last 4 weeks). Default: `medium_term`
        #
        #   @return [String, nil]
        optional :time_range, String

        # @!method initialize(limit: nil, offset: nil, time_range: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::TopListParams} for more details.
        #
        #   @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        #   @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
        #
        #   @param time_range [String] Over what time frame the affinities are computed. Valid values: `long_term` (cal
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]

        # The type of entity to return. Valid values: `artists` or `tracks`
        module Type
          extend Spotted::Internal::Type::Enum

          ARTISTS = :artists
          TRACKS = :tracks

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
