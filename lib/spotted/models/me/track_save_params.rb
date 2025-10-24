# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Tracks#save
      class TrackSaveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute ids
        #   A JSON array of the
        #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
        #   `["4iV5W9uYEdYUVa79Axb7Rh", "1301WleyT98MSxVHPZCA6M"]`<br/>A maximum of 50 items
        #   can be specified in one request. _**Note**: if the `timestamped_ids` is present
        #   in the body, any IDs listed in the query parameters (deprecated) or the `ids`
        #   field in the body will be ignored._
        #
        #   @return [Array<String>]
        required :ids, Spotted::Internal::Type::ArrayOf[String]

        # @!attribute timestamped_ids
        #   A JSON array of objects containing track IDs with their corresponding
        #   timestamps. Each object must include a track ID and an `added_at` timestamp.
        #   This allows you to specify when tracks were added to maintain a specific
        #   chronological order in the user's library.<br/>A maximum of 50 items can be
        #   specified in one request. _**Note**: if the `timestamped_ids` is present in the
        #   body, any IDs listed in the query parameters (deprecated) or the `ids` field in
        #   the body will be ignored._
        #
        #   @return [Array<Spotted::Models::Me::TrackSaveParams::TimestampedID>, nil]
        optional :timestamped_ids,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Me::TrackSaveParams::TimestampedID] }

        # @!method initialize(ids:, timestamped_ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::TrackSaveParams} for more details.
        #
        #   @param ids [Array<String>] A JSON array of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-i
        #
        #   @param timestamped_ids [Array<Spotted::Models::Me::TrackSaveParams::TimestampedID>] A JSON array of objects containing track IDs with their corresponding timestamps
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]

        class TimestampedID < Spotted::Internal::Type::BaseModel
          # @!attribute id
          #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   track.
          #
          #   @return [String]
          required :id, String

          # @!attribute added_at
          #   The timestamp when the track was added to the library. Use ISO 8601 format with
          #   UTC timezone (e.g., `2023-01-15T14:30:00Z`). You can specify past timestamps to
          #   insert tracks at specific positions in the library's chronological order. The
          #   API uses minute-level granularity for ordering, though the timestamp supports
          #   millisecond precision.
          #
          #   @return [Time]
          required :added_at, Time

          # @!method initialize(id:, added_at:)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Me::TrackSaveParams::TimestampedID} for more details.
          #
          #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track
          #
          #   @param added_at [Time] The timestamp when the track was added to the library. Use ISO 8601 format with
        end
      end
    end
  end
end
