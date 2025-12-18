# frozen_string_literal: true

module Spotted
  module Resources
    class Browse
      class Categories
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Browse::CategoryRetrieveParams} for more details.
        #
        # Get a single category used to tag items in Spotify (on, for example, the Spotify
        # player’s “Browse” tab).
        #
        # @overload retrieve(category_id, locale: nil, request_options: {})
        #
        # @param category_id [String] The [Spotify category ID](/documentation/web-api/concepts/spotify-uris-ids) for
        #
        # @param locale [String] The desired language, consisting of an [ISO 639-1](http://en.wikipedia.org/wiki/
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Browse::CategoryRetrieveResponse]
        #
        # @see Spotted::Models::Browse::CategoryRetrieveParams
        def retrieve(category_id, params = {})
          parsed, options = Spotted::Browse::CategoryRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["browse/categories/%1$s", category_id],
            query: parsed,
            model: Spotted::Models::Browse::CategoryRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Browse::CategoryListParams} for more details.
        #
        # Get a list of categories used to tag items in Spotify (on, for example, the
        # Spotify player’s “Browse” tab).
        #
        # @overload list(limit: nil, locale: nil, offset: nil, request_options: {})
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param locale [String] The desired language, consisting of an [ISO 639-1](http://en.wikipedia.org/wiki/
        #
        # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Internal::CursorURLPage<Spotted::Models::Browse::CategoryListResponse>]
        #
        # @see Spotted::Models::Browse::CategoryListParams
        def list(params = {})
          parsed, options = Spotted::Browse::CategoryListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "browse/categories",
            query: parsed,
            page: Spotted::Internal::CursorURLPage,
            model: Spotted::Models::Browse::CategoryListResponse,
            options: options
          )
        end

        # @deprecated
        #
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Browse::CategoryGetPlaylistsParams} for more details.
        #
        # Get a list of Spotify playlists tagged with a particular category.
        #
        # @overload get_playlists(category_id, limit: nil, offset: nil, request_options: {})
        #
        # @param category_id [String] The [Spotify category ID](/documentation/web-api/concepts/spotify-uris-ids) for
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Browse::CategoryGetPlaylistsResponse]
        #
        # @see Spotted::Models::Browse::CategoryGetPlaylistsParams
        def get_playlists(category_id, params = {})
          parsed, options = Spotted::Browse::CategoryGetPlaylistsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["browse/categories/%1$s/playlists", category_id],
            query: parsed,
            model: Spotted::Models::Browse::CategoryGetPlaylistsResponse,
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
