# frozen_string_literal: true

module Spotted
  module Resources
    class Shows
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::ShowRetrieveParams} for more details.
      #
      # Get Spotify catalog information for a single show identified by its unique
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
      # @return [Spotted::Models::ShowRetrieveResponse]
      #
      # @see Spotted::Models::ShowRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Spotted::ShowRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["shows/%1$s", id],
          query: parsed,
          model: Spotted::Models::ShowRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::ShowListParams} for more details.
      #
      # Get Spotify catalog information for several shows based on their Spotify IDs.
      #
      # @overload list(ids:, market: nil, request_options: {})
      #
      # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::ShowListResponse]
      #
      # @see Spotted::Models::ShowListParams
      def list(params)
        parsed, options = Spotted::ShowListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "shows",
          query: parsed,
          model: Spotted::Models::ShowListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::ShowGetEpisodesParams} for more details.
      #
      # Get Spotify catalog information about an show’s episodes. Optional parameters
      # can be used to limit the number of episodes returned.
      #
      # @overload get_episodes(id, limit: nil, market: nil, offset: nil, request_options: {})
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
      # @return [Spotted::Models::ShowGetEpisodesResponse]
      #
      # @see Spotted::Models::ShowGetEpisodesParams
      def get_episodes(id, params = {})
        parsed, options = Spotted::ShowGetEpisodesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["shows/%1$s/episodes", id],
          query: parsed,
          model: Spotted::Models::ShowGetEpisodesResponse,
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
