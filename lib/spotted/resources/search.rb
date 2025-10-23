# frozen_string_literal: true

module Spotted
  module Resources
    class Search
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::SearchQueryParams} for more details.
      #
      # Get Spotify catalog information about albums, artists, playlists, tracks, shows,
      # episodes or audiobooks that match a keyword string. Audiobooks are only
      # available within the US, UK, Canada, Ireland, New Zealand and Australia markets.
      #
      # @overload query(q:, type:, include_external: nil, limit: nil, market: nil, offset: nil, request_options: {})
      #
      # @param q [String] Your search query.
      #
      # @param type [Array<Symbol, Spotted::Models::SearchQueryParams::Type>] A comma-separated list of item types to search across. Search results include hi
      #
      # @param include_external [Symbol, Spotted::Models::SearchQueryParams::IncludeExternal] If `include_external=audio` is specified it signals that the client can play ext
      #
      # @param limit [Integer] The maximum number of results to return in each item type.
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param offset [Integer] The index of the first result to return. Use
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::SearchQueryResponse]
      #
      # @see Spotted::Models::SearchQueryParams
      def query(params)
        parsed, options = Spotted::SearchQueryParams.dump_request(params)
        @client.request(
          method: :get,
          path: "search",
          query: parsed,
          model: Spotted::Models::SearchQueryResponse,
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
