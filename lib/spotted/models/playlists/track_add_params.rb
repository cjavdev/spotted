# frozen_string_literal: true

module Spotted
  module Models
    module Playlists
      # @see Spotted::Resources::Playlists::Tracks#add
      class TrackAddParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute body_position
        #   The position to insert the items, a zero-based index. For example, to insert the
        #   items in the first position: `position=0` ; to insert the items in the third
        #   position: `position=2`. If omitted, the items will be appended to the playlist.
        #   Items are added in the order they appear in the uris array. For example:
        #   `{"uris": ["spotify:track:4iV5W9uYEdYUVa79Axb7Rh","spotify:track:1301WleyT98MSxVHPZCA6M"], "position": 3}`
        #
        #   @return [Integer, nil]
        optional :body_position, Integer, api_name: :position

        # @!attribute body_uris
        #   A JSON array of the
        #   [Spotify URIs](/documentation/web-api/concepts/spotify-uris-ids) to add. For
        #   example:
        #   `{"uris": ["spotify:track:4iV5W9uYEdYUVa79Axb7Rh","spotify:track:1301WleyT98MSxVHPZCA6M", "spotify:episode:512ojhOuo1ktJprKbVcKyQ"]}`<br/>A
        #   maximum of 100 items can be added in one request. _**Note**: if the `uris`
        #   parameter is present in the query string, any URIs listed here in the body will
        #   be ignored._
        #
        #   @return [Array<String>, nil]
        optional :body_uris, Spotted::Internal::Type::ArrayOf[String], api_name: :uris

        # @!method initialize(body_position: nil, body_uris: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Playlists::TrackAddParams} for more details.
        #
        #   @param body_position [Integer] The position to insert the items, a zero-based index. For example, to insert the
        #
        #   @param body_uris [Array<String>] A JSON array of the [Spotify URIs](/documentation/web-api/concepts/spotify-uris-
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
