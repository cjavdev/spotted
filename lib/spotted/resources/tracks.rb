# frozen_string_literal: true

module Spotted
  module Resources
    class Tracks
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::TrackRetrieveParams} for more details.
      #
      # Get Spotify catalog information for a single track identified by its unique
      # Spotify ID.
      #
      # @overload retrieve(id, market: nil, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids)
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::TrackRetrieveResponse]
      #
      # @see Spotted::Models::TrackRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Spotted::TrackRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["tracks/%1$s", id],
          query: parsed,
          model: Spotted::Models::TrackRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::TrackListParams} for more details.
      #
      # Get Spotify catalog information for multiple tracks based on their Spotify IDs.
      #
      # @overload list(ids:, market: nil, request_options: {})
      #
      # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::TrackListResponse]
      #
      # @see Spotted::Models::TrackListParams
      def list(params)
        parsed, options = Spotted::TrackListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "tracks",
          query: parsed,
          model: Spotted::Models::TrackListResponse,
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
