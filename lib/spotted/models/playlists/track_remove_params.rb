# frozen_string_literal: true

module Spotted
  module Models
    module Playlists
      # @see Spotted::Resources::Playlists::Tracks#remove
      class TrackRemoveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute tracks
        #   An array of objects containing
        #   [Spotify URIs](/documentation/web-api/concepts/spotify-uris-ids) of the tracks
        #   or episodes to remove. For example:
        #   `{ "tracks": [{ "uri": "spotify:track:4iV5W9uYEdYUVa79Axb7Rh" },{ "uri": "spotify:track:1301WleyT98MSxVHPZCA6M" }] }`.
        #   A maximum of 100 objects can be sent at once.
        #
        #   @return [Array<Spotted::Models::Playlists::TrackRemoveParams::Track>]
        required :tracks, -> { Spotted::Internal::Type::ArrayOf[Spotted::Playlists::TrackRemoveParams::Track] }

        # @!attribute snapshot_id
        #   The playlist's snapshot ID against which you want to make the changes. The API
        #   will validate that the specified items exist and in the specified positions and
        #   make the changes, even if more recent changes have been made to the playlist.
        #
        #   @return [String, nil]
        optional :snapshot_id, String

        # @!method initialize(tracks:, snapshot_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Playlists::TrackRemoveParams} for more details.
        #
        #   @param tracks [Array<Spotted::Models::Playlists::TrackRemoveParams::Track>] An array of objects containing [Spotify URIs](/documentation/web-api/concepts/sp
        #
        #   @param snapshot_id [String] The playlist's snapshot ID against which you want to make the changes.
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]

        class Track < Spotted::Internal::Type::BaseModel
          # @!attribute uri
          #   Spotify URI
          #
          #   @return [String, nil]
          optional :uri, String

          # @!method initialize(uri: nil)
          #   @param uri [String] Spotify URI
        end
      end
    end
  end
end
