# typed: strong

module Spotted
  module Models
    class PlaylistRetrieveResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::PlaylistRetrieveResponse,
            Spotted::Internal::AnyHash
          )
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
      attr_accessor :description

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
      sig do
        returns(T.nilable(Spotted::Models::PlaylistRetrieveResponse::Owner))
      end
      attr_reader :owner

      sig do
        params(
          owner: Spotted::Models::PlaylistRetrieveResponse::Owner::OrHash
        ).void
      end
      attr_writer :owner

      # The playlist's public/private status (if it is added to the user's profile):
      # `true` the playlist is public, `false` the playlist is private, `null` the
      # playlist status is not relevant. For more about public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :public

      sig { params(public: T::Boolean).void }
      attr_writer :public

      # The version identifier for the current playlist. Can be supplied in other
      # requests to target a specific playlist version
      sig { returns(T.nilable(String)) }
      attr_reader :snapshot_id

      sig { params(snapshot_id: String).void }
      attr_writer :snapshot_id

      # The tracks of the playlist.
      sig do
        returns(T.nilable(Spotted::Models::PlaylistRetrieveResponse::Tracks))
      end
      attr_reader :tracks

      sig do
        params(
          tracks: Spotted::Models::PlaylistRetrieveResponse::Tracks::OrHash
        ).void
      end
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
          description: T.nilable(String),
          external_urls: Spotted::ExternalURLObject::OrHash,
          href: String,
          images: T::Array[Spotted::ImageObject::OrHash],
          name: String,
          owner: Spotted::Models::PlaylistRetrieveResponse::Owner::OrHash,
          public: T::Boolean,
          snapshot_id: String,
          tracks: Spotted::Models::PlaylistRetrieveResponse::Tracks::OrHash,
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
        # The playlist's public/private status (if it is added to the user's profile):
        # `true` the playlist is public, `false` the playlist is private, `null` the
        # playlist status is not relevant. For more about public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        public: nil,
        # The version identifier for the current playlist. Can be supplied in other
        # requests to target a specific playlist version
        snapshot_id: nil,
        # The tracks of the playlist.
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
            description: T.nilable(String),
            external_urls: Spotted::ExternalURLObject,
            href: String,
            images: T::Array[Spotted::ImageObject],
            name: String,
            owner: Spotted::Models::PlaylistRetrieveResponse::Owner,
            public: T::Boolean,
            snapshot_id: String,
            tracks: Spotted::Models::PlaylistRetrieveResponse::Tracks,
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
              Spotted::Models::PlaylistRetrieveResponse::Owner,
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

      class Tracks < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::PlaylistRetrieveResponse::Tracks,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig { returns(T::Array[Spotted::PlaylistTrackObject]) }
        attr_accessor :items

        # The maximum number of items in the response (as set in the query or by default).
        sig { returns(Integer) }
        attr_accessor :limit

        # URL to the next page of items. ( `null` if none)
        sig { returns(T.nilable(String)) }
        attr_accessor :next_

        # The offset of the items returned (as set in the query or by default)
        sig { returns(Integer) }
        attr_accessor :offset

        # URL to the previous page of items. ( `null` if none)
        sig { returns(T.nilable(String)) }
        attr_accessor :previous

        # The total number of items available to return.
        sig { returns(Integer) }
        attr_accessor :total

        # The tracks of the playlist.
        sig do
          params(
            href: String,
            items: T::Array[Spotted::PlaylistTrackObject::OrHash],
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # A link to the Web API endpoint returning the full result of the request
          href:,
          items:,
          # The maximum number of items in the response (as set in the query or by default).
          limit:,
          # URL to the next page of items. ( `null` if none)
          next_:,
          # The offset of the items returned (as set in the query or by default)
          offset:,
          # URL to the previous page of items. ( `null` if none)
          previous:,
          # The total number of items available to return.
          total:
        )
        end

        sig do
          override.returns(
            {
              href: String,
              items: T::Array[Spotted::PlaylistTrackObject],
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              previous: T.nilable(String),
              total: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
