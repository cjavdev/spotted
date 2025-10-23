# frozen_string_literal: true

module Spotted
  module Resources
    class Artists
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::ArtistRetrieveParams} for more details.
      #
      # Get Spotify catalog information for a single artist identified by their unique
      # Spotify ID.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::ArtistObject]
      #
      # @see Spotted::Models::ArtistRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["artists/%1$s", id],
          model: Spotted::ArtistObject,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::ArtistListParams} for more details.
      #
      # Get Spotify catalog information for several artists based on their Spotify IDs.
      #
      # @overload list(ids:, request_options: {})
      #
      # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::ArtistListResponse]
      #
      # @see Spotted::Models::ArtistListParams
      def list(params)
        parsed, options = Spotted::ArtistListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "artists",
          query: parsed,
          model: Spotted::Models::ArtistListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::ArtistListAlbumsParams} for more details.
      #
      # Get Spotify catalog information about an artist's albums.
      #
      # @overload list_albums(id, include_groups: nil, limit: nil, market: nil, offset: nil, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist
      #
      # @param include_groups [String] A comma-separated list of keywords that will be used to filter the response. If
      #
      # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::ArtistListAlbumsResponse]
      #
      # @see Spotted::Models::ArtistListAlbumsParams
      def list_albums(id, params = {})
        parsed, options = Spotted::ArtistListAlbumsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["artists/%1$s/albums", id],
          query: parsed,
          model: Spotted::Models::ArtistListAlbumsResponse,
          options: options
        )
      end

      # @deprecated
      #
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::ArtistListRelatedArtistsParams} for more details.
      #
      # Get Spotify catalog information about artists similar to a given artist.
      # Similarity is based on analysis of the Spotify community's listening history.
      #
      # @overload list_related_artists(id, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::ArtistListRelatedArtistsResponse]
      #
      # @see Spotted::Models::ArtistListRelatedArtistsParams
      def list_related_artists(id, params = {})
        @client.request(
          method: :get,
          path: ["artists/%1$s/related-artists", id],
          model: Spotted::Models::ArtistListRelatedArtistsResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::ArtistListTopTracksParams} for more details.
      #
      # Get Spotify catalog information about an artist's top tracks by country.
      #
      # @overload list_top_tracks(id, market: nil, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::ArtistListTopTracksResponse]
      #
      # @see Spotted::Models::ArtistListTopTracksParams
      def list_top_tracks(id, params = {})
        parsed, options = Spotted::ArtistListTopTracksParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["artists/%1$s/top-tracks", id],
          query: parsed,
          model: Spotted::Models::ArtistListTopTracksResponse,
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
