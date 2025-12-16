# typed: strong

module Spotted
  module Models
    class PlaylistTracksRefObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::PlaylistTracksRefObject, Spotted::Internal::AnyHash)
        end

      # A link to the Web API endpoint where full details of the playlist's tracks can
      # be retrieved.
      sig { returns(T.nilable(String)) }
      attr_reader :href

      sig { params(href: String).void }
      attr_writer :href

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

      # Number of tracks in the playlist.
      sig { returns(T.nilable(Integer)) }
      attr_reader :total

      sig { params(total: Integer).void }
      attr_writer :total

      sig do
        params(href: String, published: T::Boolean, total: Integer).returns(
          T.attached_class
        )
      end
      def self.new(
        # A link to the Web API endpoint where full details of the playlist's tracks can
        # be retrieved.
        href: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # Number of tracks in the playlist.
        total: nil
      )
      end

      sig do
        override.returns(
          { href: String, published: T::Boolean, total: Integer }
        )
      end
      def to_hash
      end
    end
  end
end
