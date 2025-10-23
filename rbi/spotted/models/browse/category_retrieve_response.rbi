# typed: strong

module Spotted
  module Models
    module Browse
      class CategoryRetrieveResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Browse::CategoryRetrieveResponse,
              Spotted::Internal::AnyHash
            )
          end

        # The [Spotify category ID](/documentation/web-api/concepts/spotify-uris-ids) of
        # the category.
        sig { returns(String) }
        attr_accessor :id

        # A link to the Web API endpoint returning full details of the category.
        sig { returns(String) }
        attr_accessor :href

        # The category icon, in various sizes.
        sig do
          returns(
            T::Array[Spotted::Models::Browse::CategoryRetrieveResponse::Icon]
          )
        end
        attr_accessor :icons

        # The name of the category.
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            id: String,
            href: String,
            icons:
              T::Array[
                Spotted::Models::Browse::CategoryRetrieveResponse::Icon::OrHash
              ],
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The [Spotify category ID](/documentation/web-api/concepts/spotify-uris-ids) of
          # the category.
          id:,
          # A link to the Web API endpoint returning full details of the category.
          href:,
          # The category icon, in various sizes.
          icons:,
          # The name of the category.
          name:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              href: String,
              icons:
                T::Array[
                  Spotted::Models::Browse::CategoryRetrieveResponse::Icon
                ],
              name: String
            }
          )
        end
        def to_hash
        end

        class Icon < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Browse::CategoryRetrieveResponse::Icon,
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
      end
    end
  end
end
