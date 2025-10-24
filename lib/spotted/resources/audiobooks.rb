# frozen_string_literal: true

module Spotted
  module Resources
    class Audiobooks
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::AudiobookRetrieveParams} for more details.
      #
      # Get Spotify catalog information for a single audiobook. Audiobooks are only
      # available within the US, UK, Canada, Ireland, New Zealand and Australia markets.
      #
      # @overload retrieve(id, market: nil, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids)
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::AudiobookRetrieveResponse]
      #
      # @see Spotted::Models::AudiobookRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Spotted::AudiobookRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["audiobooks/%1$s", id],
          query: parsed,
          model: Spotted::Models::AudiobookRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::AudiobookListParams} for more details.
      #
      # Get Spotify catalog information for several audiobooks identified by their
      # Spotify IDs. Audiobooks are only available within the US, UK, Canada, Ireland,
      # New Zealand and Australia markets.
      #
      # @overload list(ids:, market: nil, request_options: {})
      #
      # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::AudiobookListResponse]
      #
      # @see Spotted::Models::AudiobookListParams
      def list(params)
        parsed, options = Spotted::AudiobookListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "audiobooks",
          query: parsed,
          model: Spotted::Models::AudiobookListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::AudiobookListChaptersParams} for more details.
      #
      # Get Spotify catalog information about an audiobook's chapters. Audiobooks are
      # only available within the US, UK, Canada, Ireland, New Zealand and Australia
      # markets.
      #
      # @overload list_chapters(id, limit: nil, market: nil, offset: nil, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids)
      #
      # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Internal::CursorURLPage<Spotted::Models::SimplifiedChapterObject>]
      #
      # @see Spotted::Models::AudiobookListChaptersParams
      def list_chapters(id, params = {})
        parsed, options = Spotted::AudiobookListChaptersParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["audiobooks/%1$s/chapters", id],
          query: parsed,
          page: Spotted::Internal::CursorURLPage,
          model: Spotted::SimplifiedChapterObject,
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
