# typed: strong

module Spotted
  module Models
    module Playlists
      class TrackAddParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Playlists::TrackAddParams,
              Spotted::Internal::AnyHash
            )
          end

        # The position to insert the items, a zero-based index. For example, to insert the
        # items in the first position: `position=0` ; to insert the items in the third
        # position: `position=2`. If omitted, the items will be appended to the playlist.
        # Items are added in the order they appear in the uris array. For example:
        # `{"uris": ["spotify:track:4iV5W9uYEdYUVa79Axb7Rh","spotify:track:1301WleyT98MSxVHPZCA6M"], "position": 3}`
        sig { returns(T.nilable(Integer)) }
        attr_reader :position

        sig { params(position: Integer).void }
        attr_writer :position

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        # A JSON array of the
        # [Spotify URIs](/documentation/web-api/concepts/spotify-uris-ids) to add. For
        # example:
        # `{"uris": ["spotify:track:4iV5W9uYEdYUVa79Axb7Rh","spotify:track:1301WleyT98MSxVHPZCA6M", "spotify:episode:512ojhOuo1ktJprKbVcKyQ"]}`<br/>A
        # maximum of 100 items can be added in one request. _**Note**: if the `uris`
        # parameter is present in the query string, any URIs listed here in the body will
        # be ignored._
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :uris

        sig { params(uris: T::Array[String]).void }
        attr_writer :uris

        sig do
          params(
            position: Integer,
            published: T::Boolean,
            uris: T::Array[String],
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The position to insert the items, a zero-based index. For example, to insert the
          # items in the first position: `position=0` ; to insert the items in the third
          # position: `position=2`. If omitted, the items will be appended to the playlist.
          # Items are added in the order they appear in the uris array. For example:
          # `{"uris": ["spotify:track:4iV5W9uYEdYUVa79Axb7Rh","spotify:track:1301WleyT98MSxVHPZCA6M"], "position": 3}`
          position: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # A JSON array of the
          # [Spotify URIs](/documentation/web-api/concepts/spotify-uris-ids) to add. For
          # example:
          # `{"uris": ["spotify:track:4iV5W9uYEdYUVa79Axb7Rh","spotify:track:1301WleyT98MSxVHPZCA6M", "spotify:episode:512ojhOuo1ktJprKbVcKyQ"]}`<br/>A
          # maximum of 100 items can be added in one request. _**Note**: if the `uris`
          # parameter is present in the query string, any URIs listed here in the body will
          # be ignored._
          uris: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              position: Integer,
              published: T::Boolean,
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
