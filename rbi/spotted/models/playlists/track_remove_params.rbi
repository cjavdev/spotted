# typed: strong

module Spotted
  module Models
    module Playlists
      class TrackRemoveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Playlists::TrackRemoveParams,
              Spotted::Internal::AnyHash
            )
          end

        # An array of objects containing
        # [Spotify URIs](/documentation/web-api/concepts/spotify-uris-ids) of the tracks
        # or episodes to remove. For example:
        # `{ "tracks": [{ "uri": "spotify:track:4iV5W9uYEdYUVa79Axb7Rh" },{ "uri": "spotify:track:1301WleyT98MSxVHPZCA6M" }] }`.
        # A maximum of 100 objects can be sent at once.
        sig { returns(T::Array[Spotted::Playlists::TrackRemoveParams::Track]) }
        attr_accessor :tracks

        # The playlist's snapshot ID against which you want to make the changes. The API
        # will validate that the specified items exist and in the specified positions and
        # make the changes, even if more recent changes have been made to the playlist.
        sig { returns(T.nilable(String)) }
        attr_reader :snapshot_id

        sig { params(snapshot_id: String).void }
        attr_writer :snapshot_id

        sig do
          params(
            tracks:
              T::Array[Spotted::Playlists::TrackRemoveParams::Track::OrHash],
            snapshot_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of objects containing
          # [Spotify URIs](/documentation/web-api/concepts/spotify-uris-ids) of the tracks
          # or episodes to remove. For example:
          # `{ "tracks": [{ "uri": "spotify:track:4iV5W9uYEdYUVa79Axb7Rh" },{ "uri": "spotify:track:1301WleyT98MSxVHPZCA6M" }] }`.
          # A maximum of 100 objects can be sent at once.
          tracks:,
          # The playlist's snapshot ID against which you want to make the changes. The API
          # will validate that the specified items exist and in the specified positions and
          # make the changes, even if more recent changes have been made to the playlist.
          snapshot_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              tracks: T::Array[Spotted::Playlists::TrackRemoveParams::Track],
              snapshot_id: String,
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Track < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Playlists::TrackRemoveParams::Track,
                Spotted::Internal::AnyHash
              )
            end

          # Spotify URI
          sig { returns(T.nilable(String)) }
          attr_reader :uri

          sig { params(uri: String).void }
          attr_writer :uri

          sig { params(uri: String).returns(T.attached_class) }
          def self.new(
            # Spotify URI
            uri: nil
          )
          end

          sig { override.returns({ uri: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
