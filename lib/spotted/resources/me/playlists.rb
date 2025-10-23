# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      class Playlists
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlaylistRetrieveParams} for more details.
        #
        # Get a list of the playlists owned or followed by the current Spotify user.
        #
        # @overload retrieve(limit: nil, offset: nil, request_options: {})
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param offset [Integer] 'The index of the first playlist to return. Default:
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::PagingPlaylistObject]
        #
        # @see Spotted::Models::Me::PlaylistRetrieveParams
        def retrieve(params = {})
          parsed, options = Spotted::Me::PlaylistRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/playlists",
            query: parsed,
            model: Spotted::PagingPlaylistObject,
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
