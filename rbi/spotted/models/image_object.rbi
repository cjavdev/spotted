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

      sig do
        params(
          height: T.nilable(Integer),
          url: String,
          width: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # The image height in pixels.
        height:,
        # The source URL of the image.
        url:,
        # The image width in pixels.
        width:
      )
      end

      sig do
        override.returns(
          { height: T.nilable(Integer), url: String, width: T.nilable(Integer) }
        )
      end
      def to_hash
      end
    end
  end
end
