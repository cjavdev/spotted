# typed: strong

module Spotted
  module Models
    class NarratorObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::NarratorObject, Spotted::Internal::AnyHash)
        end

      # The name of the Narrator.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

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
        params(name: String, published: T::Boolean).returns(T.attached_class)
      end
      def self.new(
        # The name of the Narrator.
        name: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil
      )
      end

      sig { override.returns({ name: String, published: T::Boolean }) }
      def to_hash
      end
    end
  end
end
