# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Episodes#list
      class EpisodeListResponse < Spotted::Internal::Type::BaseModel
        # @!attribute added_at
        #   The date and time the episode was saved. Timestamps are returned in ISO 8601
        #   format as Coordinated Universal Time (UTC) with a zero offset:
        #   YYYY-MM-DDTHH:MM:SSZ.
        #
        #   @return [Time, nil]
        optional :added_at, Time

        # @!attribute episode
        #   Information about the episode.
        #
        #   @return [Spotted::Models::EpisodeObject, nil]
        optional :episode, -> { Spotted::EpisodeObject }

        # @!attribute published
        #   The playlist's public/private status (if it should be added to the user's
        #   profile or not): `true` the playlist will be public, `false` the playlist will
        #   be private, `null` the playlist status is not relevant. For more about
        #   public/private status, see
        #   [Working with Playlists](/documentation/web-api/concepts/playlists)
        #
        #   @return [Boolean, nil]
        optional :published, Spotted::Internal::Type::Boolean

        # @!method initialize(added_at: nil, episode: nil, published: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::EpisodeListResponse} for more details.
        #
        #   @param added_at [Time] The date and time the episode was saved.
        #
        #   @param episode [Spotted::Models::EpisodeObject] Information about the episode.
        #
        #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      end
    end
  end
end
