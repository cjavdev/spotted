# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Player#start_playback
      class PlayerStartPlaybackParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute device_id
        #   The id of the device this command is targeting. If not supplied, the user's
        #   currently active device is the target.
        #
        #   @return [String, nil]
        optional :device_id, String

        # @!attribute context_uri
        #   Optional. Spotify URI of the context to play. Valid contexts are albums, artists
        #   & playlists. `{context_uri:"spotify:album:1Je1IMUlBXcx1Fz0WE7oPT"}`
        #
        #   @return [String, nil]
        optional :context_uri, String

        # @!attribute offset
        #   Optional. Indicates from where in the context playback should start. Only
        #   available when context_uri corresponds to an album or playlist object "position"
        #   is zero based and can’t be negative. Example: `"offset": {"position": 5}` "uri"
        #   is a string representing the uri of the item to start at. Example:
        #   `"offset": {"uri": "spotify:track:1301WleyT98MSxVHPZCA6M"}`
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :offset, Spotted::Internal::Type::HashOf[Spotted::Internal::Type::Unknown]

        # @!attribute position_ms
        #   integer
        #
        #   @return [Integer, nil]
        optional :position_ms, Integer

        # @!attribute uris
        #   Optional. A JSON array of the Spotify track URIs to play. For example:
        #   `{"uris": ["spotify:track:4iV5W9uYEdYUVa79Axb7Rh", "spotify:track:1301WleyT98MSxVHPZCA6M"]}`
        #
        #   @return [Array<String>, nil]
        optional :uris, Spotted::Internal::Type::ArrayOf[String]

        # @!method initialize(device_id: nil, context_uri: nil, offset: nil, position_ms: nil, uris: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::PlayerStartPlaybackParams} for more details.
        #
        #   @param device_id [String] The id of the device this command is targeting. If not supplied, the user's curr
        #
        #   @param context_uri [String] Optional. Spotify URI of the context to play.
        #
        #   @param offset [Hash{Symbol=>Object}] Optional. Indicates from where in the context playback should start. Only availa
        #
        #   @param position_ms [Integer] integer
        #
        #   @param uris [Array<String>] Optional. A JSON array of the Spotify track URIs to play.
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
