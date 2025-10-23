# frozen_string_literal: true

module Spotted
  module Models
    class PlaylistTrackObject < Spotted::Internal::Type::BaseModel
      # @!attribute added_at
      #   The date and time the track or episode was added. _**Note**: some very old
      #   playlists may return `null` in this field._
      #
      #   @return [Time, nil]
      optional :added_at, Time

      # @!attribute added_by
      #   The Spotify user who added the track or episode. _**Note**: some very old
      #   playlists may return `null` in this field._
      #
      #   @return [Spotted::Models::PlaylistUserObject, nil]
      optional :added_by, -> { Spotted::PlaylistUserObject }

      # @!attribute is_local
      #   Whether this track or episode is a
      #   [local file](/documentation/web-api/concepts/playlists/#local-files) or not.
      #
      #   @return [Boolean, nil]
      optional :is_local, Spotted::Internal::Type::Boolean

      # @!attribute track
      #   Information about the track or episode.
      #
      #   @return [Spotted::Models::TrackObject, Spotted::Models::EpisodeObject, nil]
      optional :track, union: -> { Spotted::PlaylistTrackObject::Track }

      # @!method initialize(added_at: nil, added_by: nil, is_local: nil, track: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::PlaylistTrackObject} for more details.
      #
      #   @param added_at [Time] The date and time the track or episode was added. \_**Note**: some very old
      #   playl
      #
      #   @param added_by [Spotted::Models::PlaylistUserObject] The Spotify user who added the track or episode. \_**Note**: some very old
      #   playli
      #
      #   @param is_local [Boolean] Whether this track or episode is a [local file](/documentation/web-api/concepts/
      #
      #   @param track [Spotted::Models::TrackObject, Spotted::Models::EpisodeObject] Information about the track or episode.

      # Information about the track or episode.
      #
      # @see Spotted::Models::PlaylistTrackObject#track
      module Track
        extend Spotted::Internal::Type::Union

        discriminator :type

        variant :track, -> { Spotted::TrackObject }

        variant :episode, -> { Spotted::EpisodeObject }

        # @!method self.variants
        #   @return [Array(Spotted::Models::TrackObject, Spotted::Models::EpisodeObject)]
      end
    end
  end
end
