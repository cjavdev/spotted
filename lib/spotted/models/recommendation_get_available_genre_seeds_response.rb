# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Recommendations#get_available_genre_seeds
    class RecommendationGetAvailableGenreSeedsResponse < Spotted::Internal::Type::BaseModel
      # @!attribute genres
      #
      #   @return [Array<String>]
      required :genres, Spotted::Internal::Type::ArrayOf[String]

      # @!method initialize(genres:)
      #   @param genres [Array<String>]
    end
  end
end
