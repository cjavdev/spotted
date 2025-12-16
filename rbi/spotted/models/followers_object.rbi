# typed: strong

module Spotted
  module Models
    class FollowersObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::FollowersObject, Spotted::Internal::AnyHash)
        end

      # This will always be set to null, as the Web API does not support it at the
      # moment.
      sig { returns(T.nilable(String)) }
      attr_accessor :href

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

      # The total number of followers.
      sig { returns(T.nilable(Integer)) }
      attr_reader :total

      sig { params(total: Integer).void }
      attr_writer :total

      sig do
        params(
          href: T.nilable(String),
          published: T::Boolean,
          total: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # This will always be set to null, as the Web API does not support it at the
        # moment.
        href: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # The total number of followers.
        total: nil
      )
      end

      sig do
        override.returns(
          { href: T.nilable(String), published: T::Boolean, total: Integer }
        )
      end
      def to_hash
      end
    end
  end
end
