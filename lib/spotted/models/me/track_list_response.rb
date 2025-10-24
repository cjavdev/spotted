# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Tracks#list
      class TrackListResponse < Spotted::Internal::Type::BaseModel
        # @!attribute added_at
        #   The date and time the track was saved. Timestamps are returned in ISO 8601
        #   format as Coordinated Universal Time (UTC) with a zero offset:
        #   YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example, the date/time of an
        #   album release), an additional field indicates the precision; see for example,
        #   release_date in an album object.
        #
        #   @return [Time, nil]
        optional :added_at, Time

        # @!attribute track
        #   Information about the track.
        #
        #   @return [Spotted::Models::TrackObject, nil]
        optional :track, -> { Spotted::TrackObject }

        # @!method initialize(added_at: nil, track: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::TrackListResponse} for more details.
        #
        #   @param added_at [Time] The date and time the track was saved.
        #
        #   @param track [Spotted::Models::TrackObject] Information about the track.
      end
    end
  end
end
