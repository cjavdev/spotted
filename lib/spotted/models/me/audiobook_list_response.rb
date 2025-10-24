# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Audiobooks#list
      class AudiobookListResponse < Spotted::Internal::Type::BaseModel
        # @!attribute added_at
        #   The date and time the audiobook was saved Timestamps are returned in ISO 8601
        #   format as Coordinated Universal Time (UTC) with a zero offset:
        #   YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example, the date/time of an
        #   album release), an additional field indicates the precision; see for example,
        #   release_date in an album object.
        #
        #   @return [Time, nil]
        optional :added_at, Time

        # @!attribute audiobook
        #   Information about the audiobook.
        #
        #   @return [Spotted::Models::Me::AudiobookListResponse::Audiobook, nil]
        optional :audiobook, -> { Spotted::Models::Me::AudiobookListResponse::Audiobook }

        # @!method initialize(added_at: nil, audiobook: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::AudiobookListResponse} for more details.
        #
        #   @param added_at [Time] The date and time the audiobook was saved
        #
        #   @param audiobook [Spotted::Models::Me::AudiobookListResponse::Audiobook] Information about the audiobook.

        # @see Spotted::Models::Me::AudiobookListResponse#audiobook
        class Audiobook < Spotted::Models::AudiobookBase
          # @!attribute chapters
          #   The chapters of the audiobook.
          #
          #   @return [Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters]
          required :chapters, -> { Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters }

          # @!method initialize(chapters:)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Me::AudiobookListResponse::Audiobook} for more details.
          #
          #   Information about the audiobook.
          #
          #   @param chapters [Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters] The chapters of the audiobook.

          class Chapters < Spotted::Internal::Type::BaseModel
            # @!attribute href
            #   A link to the Web API endpoint returning the full result of the request
            #
            #   @return [String]
            required :href, String

            # @!attribute items
            #
            #   @return [Array<Spotted::Models::SimplifiedChapterObject>]
            required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedChapterObject] }

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
            #   {Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters} for more
            #   details.
            #
            #   The chapters of the audiobook.
            #
            #   @param href [String] A link to the Web API endpoint returning the full result of the request
            #
            #   @param items [Array<Spotted::Models::SimplifiedChapterObject>]
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
          end
        end
      end
    end
  end
end
