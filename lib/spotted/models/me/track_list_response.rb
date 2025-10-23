# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Tracks#list
      class TrackListResponse < Spotted::Internal::Type::BaseModel
        # @!attribute href
        #   A link to the Web API endpoint returning the full result of the request
        #
        #   @return [String]
        required :href, String

        # @!attribute items
        #
        #   @return [Array<Spotted::Models::Me::TrackListResponse::Item>]
        required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::TrackListResponse::Item] }

        # @!attribute limit
        #   The maximum number of items in the response (as set in the query or by default).
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute next_
        #   URL to the next page of items. ( `null` if none)
        #
        #   @return [String, nil]
        required :next_, String, api_name: :next, nil?: true

        # @!attribute offset
        #   The offset of the items returned (as set in the query or by default)
        #
        #   @return [Integer]
        required :offset, Integer

        # @!attribute previous
        #   URL to the previous page of items. ( `null` if none)
        #
        #   @return [String, nil]
        required :previous, String, nil?: true

        # @!attribute total
        #   The total number of items available to return.
        #
        #   @return [Integer]
        required :total, Integer

        # @!method initialize(href:, items:, limit:, next_:, offset:, previous:, total:)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::TrackListResponse} for more details.
        #
        #   @param href [String] A link to the Web API endpoint returning the full result of the request
        #
        #   @param items [Array<Spotted::Models::Me::TrackListResponse::Item>]
        #
        #   @param limit [Integer] The maximum number of items in the response (as set in the query or by default).
        #
        #   @param next_ [String, nil] URL to the next page of items. ( `null` if none)
        #
        #   @param offset [Integer] The offset of the items returned (as set in the query or by default)
        #
        #   @param previous [String, nil] URL to the previous page of items. ( `null` if none)
        #
        #   @param total [Integer] The total number of items available to return.

        class Item < Spotted::Internal::Type::BaseModel
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
          #   {Spotted::Models::Me::TrackListResponse::Item} for more details.
          #
          #   @param added_at [Time] The date and time the track was saved.
          #
          #   @param track [Spotted::Models::TrackObject] Information about the track.
        end
      end
    end
  end
end
