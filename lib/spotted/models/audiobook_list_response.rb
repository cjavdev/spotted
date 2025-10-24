# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Audiobooks#list
    class AudiobookListResponse < Spotted::Internal::Type::BaseModel
      # @!attribute audiobooks
      #
      #   @return [Array<Spotted::Models::AudiobookListResponse::Audiobook>]
      required :audiobooks,
               -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::AudiobookListResponse::Audiobook] }

      # @!method initialize(audiobooks:)
      #   @param audiobooks [Array<Spotted::Models::AudiobookListResponse::Audiobook>]

      class Audiobook < Spotted::Models::AudiobookBase
        # @!attribute chapters
        #   The chapters of the audiobook.
        #
        #   @return [Spotted::Models::AudiobookListResponse::Audiobook::Chapters]
        required :chapters, -> { Spotted::Models::AudiobookListResponse::Audiobook::Chapters }

        # @!method initialize(chapters:)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::AudiobookListResponse::Audiobook} for more details.
        #
        #   @param chapters [Spotted::Models::AudiobookListResponse::Audiobook::Chapters] The chapters of the audiobook.

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
          #   {Spotted::Models::AudiobookListResponse::Audiobook::Chapters} for more details.
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
