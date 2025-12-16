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

        # @!attribute published
        #   The playlist's public/private status (if it should be added to the user's
        #   profile or not): `true` the playlist will be public, `false` the playlist will
        #   be private, `null` the playlist status is not relevant. For more about
        #   public/private status, see
        #   [Working with Playlists](/documentation/web-api/concepts/playlists)
        #
        #   @return [Boolean, nil]
        optional :published, Spotted::Internal::Type::Boolean

        # @!attribute snapshot_id
        #   The playlist's snapshot ID against which you want to make the changes. The API
        #   will validate that the specified items exist and in the specified positions and
        #   make the changes, even if more recent changes have been made to the playlist.
        #
        #   @return [String, nil]
        optional :snapshot_id, String

        # @!method initialize(tracks:, published: nil, snapshot_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Playlists::TrackRemoveParams} for more details.
        #
        #   @param tracks [Array<Spotted::Models::Playlists::TrackRemoveParams::Track>] An array of objects containing [Spotify URIs](/documentation/web-api/concepts/sp
        #
        #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
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
