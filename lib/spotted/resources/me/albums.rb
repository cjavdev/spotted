# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      class Albums
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::AlbumListParams} for more details.
        #
        # Get a list of the albums saved in the current Spotify user's 'Your Music'
        # library.
        #
        # @overload list(limit: nil, market: nil, offset: nil, request_options: {})
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
        #
        # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Me::AlbumListResponse]
        #
        # @see Spotted::Models::Me::AlbumListParams
        def list(params = {})
          parsed, options = Spotted::Me::AlbumListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/albums",
            query: parsed,
            model: Spotted::Models::Me::AlbumListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::AlbumCheckParams} for more details.
        #
        # Check if one or more albums is already saved in the current Spotify user's 'Your
        # Music' library.
        #
        # @overload check(ids:, request_options: {})
        #
        # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Boolean>]
        #
        # @see Spotted::Models::Me::AlbumCheckParams
        def check(params)
          parsed, options = Spotted::Me::AlbumCheckParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/albums/contains",
            query: parsed,
            model: Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean],
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::AlbumRemoveParams} for more details.
        #
        # Remove one or more albums from the current user's 'Your Music' library.
        #
        # @overload remove(body_ids: nil, request_options: {})
        #
        # @param body_ids [Array<String>] Body param: A JSON array of the [Spotify IDs](/documentation/web-api/concepts/sp
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::AlbumRemoveParams
        def remove(params = {})
          parsed, options = Spotted::Me::AlbumRemoveParams.dump_request(params)
          query_params = [:query_ids]
          @client.request(
            method: :delete,
            path: "me/albums",
            query: parsed.slice(*query_params).transform_keys(query_ids: "ids"),
            body: parsed.except(*query_params),
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::AlbumSaveParams} for more details.
        #
        # Save one or more albums to the current user's 'Your Music' library.
        #
        # @overload save(body_ids: nil, request_options: {})
        #
        # @param body_ids [Array<String>] Body param: A JSON array of the [Spotify IDs](/documentation/web-api/concepts/sp
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::AlbumSaveParams
        def save(params = {})
          parsed, options = Spotted::Me::AlbumSaveParams.dump_request(params)
          query_params = [:query_ids]
          @client.request(
            method: :put,
            path: "me/albums",
            query: parsed.slice(*query_params).transform_keys(query_ids: "ids"),
            body: parsed.except(*query_params),
            model: NilClass,
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
end
