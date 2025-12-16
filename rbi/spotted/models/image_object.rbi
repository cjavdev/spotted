# typed: strong

module Spotted
  module Models
    class ImageObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Spotted::ImageObject, Spotted::Internal::AnyHash) }

      # The image height in pixels.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :height

      # The source URL of the image.
      sig { returns(String) }
      attr_accessor :url

      # The image width in pixels.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :width

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
          height: T.nilable(Integer),
          url: String,
          width: T.nilable(Integer),
          published: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The image height in pixels.
        height:,
        # The source URL of the image.
        url:,
        # The image width in pixels.
        width:,
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
            height: T.nilable(Integer),
            url: String,
            width: T.nilable(Integer),
            published: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
