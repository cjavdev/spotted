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

          sig do
            returns(
              T::Array[
                Spotted::Models::Browse::CategoryListResponse::Categories::Item
              ]
            )
          end
          attr_accessor :items

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
            params(
              href: String,
              items:
                T::Array[
                  Spotted::Models::Browse::CategoryListResponse::Categories::Item::OrHash
                ],
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              previous: T.nilable(String),
              total: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # A link to the Web API endpoint returning the full result of the request
            href:,
            items:,
            # The maximum number of items in the response (as set in the query or by default).
            limit:,
            # URL to the next page of items. ( `null` if none)
            next_:,
            # The offset of the items returned (as set in the query or by default)
            offset:,
            # URL to the previous page of items. ( `null` if none)
            previous:,
            # The total number of items available to return.
            total:
          )
          end

          sig do
            override.returns(
              {
                href: String,
                items:
                  T::Array[
                    Spotted::Models::Browse::CategoryListResponse::Categories::Item
                  ],
                limit: Integer,
                next_: T.nilable(String),
                offset: Integer,
                previous: T.nilable(String),
                total: Integer
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
            sig do
              returns(
                T::Array[
                  Spotted::Models::Browse::CategoryListResponse::Categories::Item::Icon
                ]
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
                    Spotted::Models::Browse::CategoryListResponse::Categories::Item::Icon::OrHash
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
                      Spotted::Models::Browse::CategoryListResponse::Categories::Item::Icon
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
                    Spotted::Models::Browse::CategoryListResponse::Categories::Item::Icon,
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
  end
end
