# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Shows#retrieve
    class ShowRetrieveResponse < Spotted::Models::ShowBase
      # @!attribute episodes
      #   The episodes of the show.
      #
      #   @return [Spotted::Models::ShowRetrieveResponse::Episodes]
      required :episodes, -> { Spotted::Models::ShowRetrieveResponse::Episodes }

      # @!method initialize(episodes:)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ShowRetrieveResponse} for more details.
      #
      #   @param episodes [Spotted::Models::ShowRetrieveResponse::Episodes] The episodes of the show.

      class Episodes < Spotted::Internal::Type::BaseModel
        # @!attribute href
        #   A link to the Web API endpoint returning the full result of the request
        #
        #   @return [String]
        required :href, String

        # @!attribute items
        #
        #   @return [Array<Spotted::Models::SimplifiedEpisodeObject>]
        required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedEpisodeObject] }

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
        #   {Spotted::Models::ShowRetrieveResponse::Episodes} for more details.
        #
        #   The episodes of the show.
        #
        #   @param href [String] A link to the Web API endpoint returning the full result of the request
        #
        #   @param items [Array<Spotted::Models::SimplifiedEpisodeObject>]
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
