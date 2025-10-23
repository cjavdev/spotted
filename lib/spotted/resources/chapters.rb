# frozen_string_literal: true

module Spotted
  module Resources
    class Chapters
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::ChapterRetrieveParams} for more details.
      #
      # Get Spotify catalog information for a single audiobook chapter. Chapters are
      # only available within the US, UK, Canada, Ireland, New Zealand and Australia
      # markets.
      #
      # @overload retrieve(id, market: nil, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids)
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::ChapterRetrieveResponse]
      #
      # @see Spotted::Models::ChapterRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Spotted::ChapterRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["chapters/%1$s", id],
          query: parsed,
          model: Spotted::Models::ChapterRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::ChapterListParams} for more details.
      #
      # Get Spotify catalog information for several audiobook chapters identified by
      # their Spotify IDs. Chapters are only available within the US, UK, Canada,
      # Ireland, New Zealand and Australia markets.
      #
      # @overload list(ids:, market: nil, request_options: {})
      #
      # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::ChapterListResponse]
      #
      # @see Spotted::Models::ChapterListParams
      def list(params)
        parsed, options = Spotted::ChapterListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "chapters",
          query: parsed,
          model: Spotted::Models::ChapterListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Spotted::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
