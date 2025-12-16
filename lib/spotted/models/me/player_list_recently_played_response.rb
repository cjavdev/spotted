# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Player#list_recently_played
      class PlayerListRecentlyPlayedResponse < Spotted::Internal::Type::BaseModel
        # @!attribute context
        #   The context the track was played from.
        #
        #   @return [Spotted::Models::Me::ContextObject, nil]
        optional :context, -> { Spotted::Me::ContextObject }

        # @!attribute played_at
        #   The date and time the track was played.
        #
        #   @return [Time, nil]
        optional :played_at, Time

        # @!attribute published
        #   The playlist's public/private status (if it should be added to the user's
        #   profile or not): `true` the playlist will be public, `false` the playlist will
        #   be private, `null` the playlist status is not relevant. For more about
        #   public/private status, see
        #   [Working with Playlists](/documentation/web-api/concepts/playlists)
        #
        #   @return [Boolean, nil]
        optional :published, Spotted::Internal::Type::Boolean

        # @!attribute track
        #   The track the user listened to.
        #
        #   @return [Spotted::Models::TrackObject, nil]
        optional :track, -> { Spotted::TrackObject }

        # @!method initialize(context: nil, played_at: nil, published: nil, track: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::PlayerListRecentlyPlayedResponse} for more details.
        #
        #   @param context [Spotted::Models::Me::ContextObject] The context the track was played from.
        #
        #   @param played_at [Time] The date and time the track was played.
        #
        #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
        #
        #   @param track [Spotted::Models::TrackObject] The track the user listened to.
      end
    end
  end
end
