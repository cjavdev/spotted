# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Recommendations#list_available_genre_seeds
    class RecommendationListAvailableGenreSeedsParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
