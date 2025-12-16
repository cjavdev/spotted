# typed: strong

module Spotted
  module Models
    class ResumePointObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::ResumePointObject, Spotted::Internal::AnyHash)
        end

      # Whether or not the episode has been fully played by the user.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :fully_played

      sig { params(fully_played: T::Boolean).void }
      attr_writer :fully_played

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

      # The user's most recent position in the episode in milliseconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :resume_position_ms

      sig { params(resume_position_ms: Integer).void }
      attr_writer :resume_position_ms

      sig do
        params(
          fully_played: T::Boolean,
          published: T::Boolean,
          resume_position_ms: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether or not the episode has been fully played by the user.
        fully_played: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # The user's most recent position in the episode in milliseconds.
        resume_position_ms: nil
      )
      end

      sig do
        override.returns(
          {
            fully_played: T::Boolean,
            published: T::Boolean,
            resume_position_ms: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
