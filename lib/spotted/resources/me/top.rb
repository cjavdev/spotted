# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      class Top
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::TopListTopArtistsParams} for more details.
        #
        # Get the current user's top artists based on calculated affinity.
        #
        # @overload list_top_artists(limit: nil, offset: nil, time_range: nil, request_options: {})
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
        #
        # @param time_range [String] Over what time frame the affinities are computed. Valid values: `long_term` (cal
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Internal::CursorURLPage<Spotted::Models::ArtistObject>]
        #
        # @see Spotted::Models::Me::TopListTopArtistsParams
        def list_top_artists(params = {})
          parsed, options = Spotted::Me::TopListTopArtistsParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/top/artists",
            query: parsed,
            page: Spotted::Internal::CursorURLPage,
            model: Spotted::ArtistObject,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::TopListTopTracksParams} for more details.
        #
        # Get the current user's top tracks based on calculated affinity.
        #
        # @overload list_top_tracks(limit: nil, offset: nil, time_range: nil, request_options: {})
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
        #
        # @param time_range [String] Over what time frame the affinities are computed. Valid values: `long_term` (cal
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Internal::CursorURLPage<Spotted::Models::TrackObject>]
        #
        # @see Spotted::Models::Me::TopListTopTracksParams
        def list_top_tracks(params = {})
          parsed, options = Spotted::Me::TopListTopTracksParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/top/tracks",
            query: parsed,
            page: Spotted::Internal::CursorURLPage,
            model: Spotted::TrackObject,
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
