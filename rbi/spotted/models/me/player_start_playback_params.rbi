# typed: strong

module Spotted
  module Models
    module Me
      class PlayerStartPlaybackParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Me::PlayerStartPlaybackParams,
              Spotted::Internal::AnyHash
            )
          end

        # The id of the device this command is targeting. If not supplied, the user's
        # currently active device is the target.
        sig { returns(T.nilable(String)) }
        attr_reader :device_id

        sig { params(device_id: String).void }
        attr_writer :device_id

        # Optional. Spotify URI of the context to play. Valid contexts are albums, artists
        # & playlists. `{context_uri:"spotify:album:1Je1IMUlBXcx1Fz0WE7oPT"}`
        sig { returns(T.nilable(String)) }
        attr_reader :context_uri

        sig { params(context_uri: String).void }
        attr_writer :context_uri

        # Optional. Indicates from where in the context playback should start. Only
        # available when context_uri corresponds to an album or playlist object "position"
        # is zero based and can’t be negative. Example: `"offset": {"position": 5}` "uri"
        # is a string representing the uri of the item to start at. Example:
        # `"offset": {"uri": "spotify:track:1301WleyT98MSxVHPZCA6M"}`
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :offset

        sig { params(offset: T::Hash[Symbol, T.anything]).void }
        attr_writer :offset

        # integer
        sig { returns(T.nilable(Integer)) }
        attr_reader :position_ms

        sig { params(position_ms: Integer).void }
        attr_writer :position_ms

        # Optional. A JSON array of the Spotify track URIs to play. For example:
        # `{"uris": ["spotify:track:4iV5W9uYEdYUVa79Axb7Rh", "spotify:track:1301WleyT98MSxVHPZCA6M"]}`
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :uris

        sig { params(uris: T::Array[String]).void }
        attr_writer :uris

        sig do
          params(
            device_id: String,
            context_uri: String,
            offset: T::Hash[Symbol, T.anything],
            position_ms: Integer,
            uris: T::Array[String],
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The id of the device this command is targeting. If not supplied, the user's
          # currently active device is the target.
          device_id: nil,
          # Optional. Spotify URI of the context to play. Valid contexts are albums, artists
          # & playlists. `{context_uri:"spotify:album:1Je1IMUlBXcx1Fz0WE7oPT"}`
          context_uri: nil,
          # Optional. Indicates from where in the context playback should start. Only
          # available when context_uri corresponds to an album or playlist object "position"
          # is zero based and can’t be negative. Example: `"offset": {"position": 5}` "uri"
          # is a string representing the uri of the item to start at. Example:
          # `"offset": {"uri": "spotify:track:1301WleyT98MSxVHPZCA6M"}`
          offset: nil,
          # integer
          position_ms: nil,
          # Optional. A JSON array of the Spotify track URIs to play. For example:
          # `{"uris": ["spotify:track:4iV5W9uYEdYUVa79Axb7Rh", "spotify:track:1301WleyT98MSxVHPZCA6M"]}`
          uris: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              device_id: String,
              context_uri: String,
              offset: T::Hash[Symbol, T.anything],
              position_ms: Integer,
              uris: T::Array[String],
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
