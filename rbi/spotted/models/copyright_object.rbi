# typed: strong

module Spotted
  module Models
    class CopyrightObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::CopyrightObject, Spotted::Internal::AnyHash)
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

      # The copyright text for this content.
      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { params(text: String).void }
      attr_writer :text

      # The type of copyright: `C` = the copyright, `P` = the sound recording
      # (performance) copyright.
      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      sig do
        params(published: T::Boolean, text: String, type: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # The copyright text for this content.
        text: nil,
        # The type of copyright: `C` = the copyright, `P` = the sound recording
        # (performance) copyright.
        type: nil
      )
      end

      sig do
        override.returns({ published: T::Boolean, text: String, type: String })
      end
      def to_hash
      end
    end
  end
end
