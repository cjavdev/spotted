# typed: strong

module Spotted
  module Models
    module Playlists
      class ImageRetrieveResponseItem < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Playlists::ImageRetrieveResponseItem,
              Spotted::Internal::AnyHash
            )
          end

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
            {
              height: T.nilable(Integer),
              url: String,
              width: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end

      ImageRetrieveResponse =
        T.let(
          Spotted::Internal::Type::ArrayOf[
            Spotted::Models::Playlists::ImageRetrieveResponseItem
          ],
          Spotted::Internal::Type::Converter
        )
    end
  end
end
