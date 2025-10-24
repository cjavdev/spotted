# frozen_string_literal: true

module Spotted
  module Resources
    class Browse
      # @return [Spotted::Resources::Browse::Categories]
      attr_reader :categories

      # @deprecated
      #
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::BrowseGetFeaturedPlaylistsParams} for more details.
      #
      # Get a list of Spotify featured playlists (shown, for example, on a Spotify
      # player's 'Browse' tab).
      #
      # @overload get_featured_playlists(limit: nil, locale: nil, offset: nil, request_options: {})
      #
      # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
      #
      # @param locale [String] The desired language, consisting of an [ISO 639-1](http://en.wikipedia.org/wiki/
      #
      # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::BrowseGetFeaturedPlaylistsResponse]
      #
      # @see Spotted::Models::BrowseGetFeaturedPlaylistsParams
      def get_featured_playlists(params = {})
        parsed, options = Spotted::BrowseGetFeaturedPlaylistsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "browse/featured-playlists",
          query: parsed,
          model: Spotted::Models::BrowseGetFeaturedPlaylistsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::BrowseGetNewReleasesParams} for more details.
      #
      # Get a list of new album releases featured in Spotify (shown, for example, on a
      # Spotify player’s “Browse” tab).
      #
      # @overload get_new_releases(limit: nil, offset: nil, request_options: {})
      #
      # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
      #
      # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::BrowseGetNewReleasesResponse]
      #
      # @see Spotted::Models::BrowseGetNewReleasesParams
      def get_new_releases(params = {})
        parsed, options = Spotted::BrowseGetNewReleasesParams.dump_request(params)
        @client.request(
          method: :get,
          path: "browse/new-releases",
          query: parsed,
          model: Spotted::Models::BrowseGetNewReleasesResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Spotted::Client]
      def initialize(client:)
        @client = client
        @categories = Spotted::Resources::Browse::Categories.new(client: client)
      end
    end
  end
end
