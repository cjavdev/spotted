# frozen_string_literal: true

module Spotted
  module Resources
    class Episodes
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::EpisodeRetrieveParams} for more details.
      #
      # Get Spotify catalog information for a single episode identified by its unique
      # Spotify ID.
      #
      # @overload retrieve(id, market: nil, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the episo
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::EpisodeRetrieveResponse]
      #
      # @see Spotted::Models::EpisodeRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Spotted::EpisodeRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["episodes/%1$s", id],
          query: parsed,
          model: Spotted::Models::EpisodeRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::EpisodeListParams} for more details.
      #
      # Get Spotify catalog information for several episodes based on their Spotify IDs.
      #
      # @overload list(ids:, market: nil, request_options: {})
      #
      # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::EpisodeListResponse]
      #
      # @see Spotted::Models::EpisodeListParams
      def list(params)
        parsed, options = Spotted::EpisodeListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "episodes",
          query: parsed,
          model: Spotted::Models::EpisodeListResponse,
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
