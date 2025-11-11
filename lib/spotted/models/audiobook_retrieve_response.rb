# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Audiobooks#retrieve
    class AudiobookRetrieveResponse < Spotted::Models::AudiobookBase
      # @!attribute chapters
      #   The chapters of the audiobook.
      #
      #   @return [Spotted::Models::AudiobookRetrieveResponse::Chapters]
      required :chapters, -> { Spotted::Models::AudiobookRetrieveResponse::Chapters }

      # @!method initialize(chapters:)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::AudiobookRetrieveResponse} for more details.
      #
      #   @param chapters [Spotted::Models::AudiobookRetrieveResponse::Chapters] The chapters of the audiobook.

      class Chapters < Spotted::Internal::Type::BaseModel
        # @!attribute href
        #   A link to the Web API endpoint returning the full result of the request
        #
        #   @return [String]
        required :href, String

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

        # @!attribute items
        #
        #   @return [Array<Spotted::Models::SimplifiedChapterObject>, nil]
        optional :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedChapterObject] }

        # @!method initialize(href:, limit:, next_:, offset:, previous:, total:, items: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::AudiobookRetrieveResponse::Chapters} for more details.
        #
        #   The chapters of the audiobook.
        #
        #   @param href [String] A link to the Web API endpoint returning the full result of the request
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
        #
        #   @param items [Array<Spotted::Models::SimplifiedChapterObject>]
      end
    end
  end
end
