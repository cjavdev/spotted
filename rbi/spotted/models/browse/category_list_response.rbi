# typed: strong

module Spotted
  module Models
    module Browse
      class CategoryListResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Browse::CategoryListResponse,
              Spotted::Internal::AnyHash
            )
          end

        sig do
          returns(Spotted::Models::Browse::CategoryListResponse::Categories)
        end
        attr_reader :categories

        sig do
          params(
            categories:
              Spotted::Models::Browse::CategoryListResponse::Categories::OrHash
          ).void
        end
        attr_writer :categories

        sig do
          params(
            categories:
              Spotted::Models::Browse::CategoryListResponse::Categories::OrHash
          ).returns(T.attached_class)
        end
        def self.new(categories:)
        end

        sig do
          override.returns(
            {
              categories:
                Spotted::Models::Browse::CategoryListResponse::Categories
            }
          )
        end
        def to_hash
        end

        class Categories < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Browse::CategoryListResponse::Categories,
                Spotted::Internal::AnyHash
              )
            end

          # A link to the Web API endpoint returning the full result of the request
          sig { returns(String) }
          attr_accessor :href

          # The maximum number of items in the response (as set in the query or by default).
          sig { returns(Integer) }
          attr_accessor :limit

          # URL to the next page of items. ( `null` if none)
          sig { returns(T.nilable(String)) }
          attr_accessor :next_

          # The offset of the items returned (as set in the query or by default)
          sig { returns(Integer) }
          attr_accessor :offset

          # URL to the previous page of items. ( `null` if none)
          sig { returns(T.nilable(String)) }
          attr_accessor :previous

          # The total number of items available to return.
          sig { returns(Integer) }
          attr_accessor :total

          sig do
            returns(
              T.nilable(
                T::Array[
                  Spotted::Models::Browse::CategoryListResponse::Categories::Item
                ]
              )
            )
          end
          attr_reader :items

          sig do
            params(
              items:
                T::Array[
                  Spotted::Models::Browse::CategoryListResponse::Categories::Item::OrHash
                ]
            ).void
          end
          attr_writer :items

          sig do
            params(
              href: String,
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              previous: T.nilable(String),
              total: Integer,
              items:
                T::Array[
                  Spotted::Models::Browse::CategoryListResponse::Categories::Item::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # A link to the Web API endpoint returning the full result of the request
            href:,
            # The maximum number of items in the response (as set in the query or by default).
            limit:,
            # URL to the next page of items. ( `null` if none)
            next_:,
            # The offset of the items returned (as set in the query or by default)
            offset:,
            # URL to the previous page of items. ( `null` if none)
            previous:,
            # The total number of items available to return.
            total:,
            items: nil
          )
          end

          sig do
            override.returns(
              {
                href: String,
                limit: Integer,
                next_: T.nilable(String),
                offset: Integer,
                previous: T.nilable(String),
                total: Integer,
                items:
                  T::Array[
                    Spotted::Models::Browse::CategoryListResponse::Categories::Item
                  ]
              }
            )
          end
          def to_hash
          end

          class Item < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Browse::CategoryListResponse::Categories::Item,
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
  end
end
