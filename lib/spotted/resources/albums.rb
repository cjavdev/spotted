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

      # @api private
      #
      # @param client [Spotted::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
