# typed: strong

module Spotted
  module Models
    class SimplifiedPlaylistObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::SimplifiedPlaylistObject, Spotted::Internal::AnyHash)
        end

      # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      # playlist.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # `true` if the owner allows other users to modify the playlist.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :collaborative

      sig { params(collaborative: T::Boolean).void }
      attr_writer :collaborative

      # The playlist description. _Only returned for modified, verified playlists,
      # otherwise_ `null`.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Known external URLs for this playlist.
      sig { returns(T.nilable(Spotted::ExternalURLObject)) }
      attr_reader :external_urls

      sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
      attr_writer :external_urls

      # A link to the Web API endpoint providing full details of the playlist.
      sig { returns(T.nilable(String)) }
      attr_reader :href

      sig { params(href: String).void }
      attr_writer :href

      # Images for the playlist. The array may be empty or contain up to three images.
      # The images are returned by size in descending order. See
      # [Working with Playlists](/documentation/web-api/concepts/playlists). _**Note**:
      # If returned, the source URL for the image (`url`) is temporary and will expire
      # in less than a day._
      sig { returns(T.nilable(T::Array[Spotted::ImageObject])) }
      attr_reader :images

      sig { params(images: T::Array[Spotted::ImageObject::OrHash]).void }
      attr_writer :images

      # The name of the playlist.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The user who owns the playlist
      sig { returns(T.nilable(Spotted::SimplifiedPlaylistObject::Owner)) }
      attr_reader :owner

      sig do
        params(owner: Spotted::SimplifiedPlaylistObject::Owner::OrHash).void
      end
      attr_writer :owner

      # The version identifier for the current playlist. Can be supplied in other
      # requests to target a specific playlist version
      sig { returns(T.nilable(String)) }
      attr_reader :snapshot_id

      sig { params(snapshot_id: String).void }
      attr_writer :snapshot_id

      # A collection containing a link ( `href` ) to the Web API endpoint where full
      # details of the playlist's tracks can be retrieved, along with the `total` number
      # of tracks in the playlist. Note, a track object may be `null`. This can happen
      # if a track is no longer available.
      sig { returns(T.nilable(Spotted::PlaylistTracksRefObject)) }
      attr_reader :tracks

      sig { params(tracks: Spotted::PlaylistTracksRefObject::OrHash).void }
      attr_writer :tracks

      # The object type: "playlist"
      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      # playlist.
      sig { returns(T.nilable(String)) }
      attr_reader :uri

      sig { params(uri: String).void }
      attr_writer :uri

      sig do
        params(
          id: String,
          collaborative: T::Boolean,
          description: String,
          external_urls: Spotted::ExternalURLObject::OrHash,
          href: String,
          images: T::Array[Spotted::ImageObject::OrHash],
          name: String,
          owner: Spotted::SimplifiedPlaylistObject::Owner::OrHash,
          snapshot_id: String,
          tracks: Spotted::PlaylistTracksRefObject::OrHash,
          type: String,
          uri: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # playlist.
        id: nil,
        # `true` if the owner allows other users to modify the playlist.
        collaborative: nil,
        # The playlist description. _Only returned for modified, verified playlists,
        # otherwise_ `null`.
        description: nil,
        # Known external URLs for this playlist.
        external_urls: nil,
        # A link to the Web API endpoint providing full details of the playlist.
        href: nil,
        # Images for the playlist. The array may be empty or contain up to three images.
        # The images are returned by size in descending order. See
        # [Working with Playlists](/documentation/web-api/concepts/playlists). _**Note**:
        # If returned, the source URL for the image (`url`) is temporary and will expire
        # in less than a day._
        images: nil,
        # The name of the playlist.
        name: nil,
        # The user who owns the playlist
        owner: nil,
        # The version identifier for the current playlist. Can be supplied in other
        # requests to target a specific playlist version
        snapshot_id: nil,
        # A collection containing a link ( `href` ) to the Web API endpoint where full
        # details of the playlist's tracks can be retrieved, along with the `total` number
        # of tracks in the playlist. Note, a track object may be `null`. This can happen
        # if a track is no longer available.
        tracks: nil,
        # The object type: "playlist"
        type: nil,
        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        # playlist.
        uri: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            collaborative: T::Boolean,
            description: String,
            external_urls: Spotted::ExternalURLObject,
            href: String,
            images: T::Array[Spotted::ImageObject],
            name: String,
            owner: Spotted::SimplifiedPlaylistObject::Owner,
            snapshot_id: String,
            tracks: Spotted::PlaylistTracksRefObject,
            type: String,
            uri: String
          }
        )
      end
      def to_hash
      end

      class Owner < Spotted::Models::PlaylistUserObject
        OrHash =
          T.type_alias do
            T.any(
              Spotted::SimplifiedPlaylistObject::Owner,
              Spotted::Internal::AnyHash
            )
          end

        # The name displayed on the user's profile. `null` if not available.
        sig { returns(T.nilable(String)) }
        attr_accessor :display_name

        # The user who owns the playlist
        sig do
          params(display_name: T.nilable(String)).returns(T.attached_class)
        end
        def self.new(
          # The name displayed on the user's profile. `null` if not available.
          display_name: nil
        )
        end

        sig { override.returns({ display_name: T.nilable(String) }) }
        def to_hash
        end
      end
    end
  end
end
