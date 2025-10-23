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
        sig { returns(T::Array[Spotted::ImageObject]) }
        attr_accessor :icons

        # The name of the category.
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            id: String,
            href: String,
            icons: T::Array[Spotted::ImageObject::OrHash],
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
              icons: T::Array[Spotted::ImageObject],
              name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
