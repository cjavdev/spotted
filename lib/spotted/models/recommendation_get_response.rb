# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Recommendations#get
    class RecommendationGetResponse < Spotted::Internal::Type::BaseModel
      # @!attribute seeds
      #   An array of recommendation seed objects.
      #
      #   @return [Array<Spotted::Models::RecommendationGetResponse::Seed>]
      required :seeds, -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::RecommendationGetResponse::Seed] }

      # @!attribute tracks
      #   An array of track object (simplified) ordered according to the parameters
      #   supplied.
      #
      #   @return [Array<Spotted::Models::TrackObject>]
      required :tracks, -> { Spotted::Internal::Type::ArrayOf[Spotted::TrackObject] }

      # @!method initialize(seeds:, tracks:)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::RecommendationGetResponse} for more details.
      #
      #   @param seeds [Array<Spotted::Models::RecommendationGetResponse::Seed>] An array of recommendation seed objects.
      #
      #   @param tracks [Array<Spotted::Models::TrackObject>] An array of track object (simplified) ordered according to the parameters suppli

      class Seed < Spotted::Internal::Type::BaseModel
        # @!attribute id
        #   The id used to select this seed. This will be the same as the string used in the
        #   `seed_artists`, `seed_tracks` or `seed_genres` parameter.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute after_filtering_size
        #   The number of tracks available after min\_\* and max\_\* filters have been
        #   applied.
        #
        #   @return [Integer, nil]
        optional :after_filtering_size, Integer, api_name: :afterFilteringSize

        # @!attribute after_relinking_size
        #   The number of tracks available after relinking for regional availability.
        #
        #   @return [Integer, nil]
        optional :after_relinking_size, Integer, api_name: :afterRelinkingSize

        # @!attribute href
        #   A link to the full track or artist data for this seed. For tracks this will be a
        #   link to a Track Object. For artists a link to an Artist Object. For genre seeds,
        #   this value will be `null`.
        #
        #   @return [String, nil]
        optional :href, String

        # @!attribute initial_pool_size
        #   The number of recommended tracks available for this seed.
        #
        #   @return [Integer, nil]
        optional :initial_pool_size, Integer, api_name: :initialPoolSize

        # @!attribute type
        #   The entity type of this seed. One of `artist`, `track` or `genre`.
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(id: nil, after_filtering_size: nil, after_relinking_size: nil, href: nil, initial_pool_size: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::RecommendationGetResponse::Seed} for more details.
        #
        #   @param id [String] The id used to select this seed. This will be the same as the string used in the
        #
        #   @param after_filtering_size [Integer] The number of tracks available after min\_\* and max\_\* filters have been appli
        #
        #   @param after_relinking_size [Integer] The number of tracks available after relinking for regional availability.
        #
        #   @param href [String] A link to the full track or artist data for this seed. For tracks this will be a
        #
        #   @param initial_pool_size [Integer] The number of recommended tracks available for this seed.
        #
        #   @param type [String] The entity type of this seed. One of `artist`, `track` or `genre`.
      end
    end
  end
end
