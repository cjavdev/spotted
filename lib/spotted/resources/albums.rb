# frozen_string_literal: true

module Spotted
  module Resources
    class Albums
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::AlbumRetrieveParams} for more details.
      #
      # Get Spotify catalog information for a single album.
      #
      # @overload retrieve(id, market: nil, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the album.
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::AlbumRetrieveResponse]
      #
      # @see Spotted::Models::AlbumRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Spotted::AlbumRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["albums/%1$s", id],
          query: parsed,
          model: Spotted::Models::AlbumRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::AlbumListParams} for more details.
      #
      # Get Spotify catalog information for multiple albums identified by their Spotify
      # IDs.
      #
      # @overload list(ids:, market: nil, request_options: {})
      #
      # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::AlbumListResponse]
      #
      # @see Spotted::Models::AlbumListParams
      def list(params)
        parsed, options = Spotted::AlbumListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "albums",
          query: parsed,
          model: Spotted::Models::AlbumListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::AlbumGetTracksParams} for more details.
      #
      # Get Spotify catalog information about an album’s tracks. Optional parameters can
      # be used to limit the number of tracks returned.
      #
      # @overload get_tracks(id, limit: nil, market: nil, offset: nil, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the album.
      #
      # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::AlbumGetTracksResponse]
      #
      # @see Spotted::Models::AlbumGetTracksParams
      def get_tracks(id, params = {})
        parsed, options = Spotted::AlbumGetTracksParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["albums/%1$s/tracks", id],
          query: parsed,
          model: Spotted::Models::AlbumGetTracksResponse,
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
