# typed: strong

module Spotted
  module Models
    class ExternalURLObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::ExternalURLObject, Spotted::Internal::AnyHash)
        end

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

      # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
      # object.
      sig { returns(T.nilable(String)) }
      attr_reader :spotify

      sig { params(spotify: String).void }
      attr_writer :spotify

      sig do
        params(published: T::Boolean, spotify: String).returns(T.attached_class)
      end
      def self.new(
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
        # object.
        spotify: nil
      )
      end

      sig { override.returns({ published: T::Boolean, spotify: String }) }
      def to_hash
      end
    end
  end
end
