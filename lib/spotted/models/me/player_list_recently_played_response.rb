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

        # @!attribute track
        #   The track the user listened to.
        #
        #   @return [Spotted::Models::TrackObject, nil]
        optional :track, -> { Spotted::TrackObject }

        # @!method initialize(context: nil, played_at: nil, track: nil)
        #   @param context [Spotted::Models::Me::ContextObject] The context the track was played from.
        #
        #   @param played_at [Time] The date and time the track was played.
        #
        #   @param track [Spotted::Models::TrackObject] The track the user listened to.
      end
    end
  end
end
