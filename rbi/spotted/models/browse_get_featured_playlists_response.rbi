# typed: strong

module Spotted
  module Models
    class BrowseGetFeaturedPlaylistsResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::BrowseGetFeaturedPlaylistsResponse,
            Spotted::Internal::AnyHash
          )
        end

      # The localized message of a playlist.
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig { returns(T.nilable(Spotted::PagingPlaylistObject)) }
      attr_reader :playlists

      sig { params(playlists: Spotted::PagingPlaylistObject::OrHash).void }
      attr_writer :playlists

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

      sig do
        params(
          message: String,
          playlists: Spotted::PagingPlaylistObject::OrHash,
          published: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The localized message of a playlist.
        message: nil,
        playlists: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil
      )
      end

      sig do
        override.returns(
          {
            message: String,
            playlists: Spotted::PagingPlaylistObject,
            published: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
