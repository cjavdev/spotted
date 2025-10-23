# typed: strong

module Spotted
  module Models
    module Me
      class FollowingListResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::FollowingListResponse,
              Spotted::Internal::AnyHash
            )
          end

        sig { returns(Spotted::Models::Me::FollowingListResponse::Artists) }
        attr_reader :artists

        sig do
          params(
            artists: Spotted::Models::Me::FollowingListResponse::Artists::OrHash
          ).void
        end
        attr_writer :artists

        sig do
          params(
            artists: Spotted::Models::Me::FollowingListResponse::Artists::OrHash
          ).returns(T.attached_class)
        end
        def self.new(artists:)
        end

        sig do
          override.returns(
            { artists: Spotted::Models::Me::FollowingListResponse::Artists }
          )
        end
        def to_hash
        end

        class Artists < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Me::FollowingListResponse::Artists,
                Spotted::Internal::AnyHash
              )
            end

          # The cursors used to find the next set of items.
          sig do
            returns(
              T.nilable(
                Spotted::Models::Me::FollowingListResponse::Artists::Cursors
              )
            )
          end
          attr_reader :cursors

          sig do
            params(
              cursors:
                Spotted::Models::Me::FollowingListResponse::Artists::Cursors::OrHash
            ).void
          end
          attr_writer :cursors

          # A link to the Web API endpoint returning the full result of the request.
          sig { returns(T.nilable(String)) }
          attr_reader :href

          sig { params(href: String).void }
          attr_writer :href

          sig do
            returns(
              T.nilable(
                T::Array[
                  Spotted::Models::Me::FollowingListResponse::Artists::Item
                ]
              )
            )
          end
          attr_reader :items

          sig do
            params(
              items:
                T::Array[
                  Spotted::Models::Me::FollowingListResponse::Artists::Item::OrHash
                ]
            ).void
          end
          attr_writer :items

          # The maximum number of items in the response (as set in the query or by default).
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # URL to the next page of items. ( `null` if none)
          sig { returns(T.nilable(String)) }
          attr_reader :next_

          sig { params(next_: String).void }
          attr_writer :next_

          # The total number of items available to return.
          sig { returns(T.nilable(Integer)) }
          attr_reader :total

          sig { params(total: Integer).void }
          attr_writer :total

          sig do
            params(
              cursors:
                Spotted::Models::Me::FollowingListResponse::Artists::Cursors::OrHash,
              href: String,
              items:
                T::Array[
                  Spotted::Models::Me::FollowingListResponse::Artists::Item::OrHash
                ],
              limit: Integer,
              next_: String,
              total: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The cursors used to find the next set of items.
            cursors: nil,
            # A link to the Web API endpoint returning the full result of the request.
            href: nil,
            items: nil,
            # The maximum number of items in the response (as set in the query or by default).
            limit: nil,
            # URL to the next page of items. ( `null` if none)
            next_: nil,
            # The total number of items available to return.
            total: nil
          )
          end

          sig do
            override.returns(
              {
                cursors:
                  Spotted::Models::Me::FollowingListResponse::Artists::Cursors,
                href: String,
                items:
                  T::Array[
                    Spotted::Models::Me::FollowingListResponse::Artists::Item
                  ],
                limit: Integer,
                next_: String,
                total: Integer
              }
            )
          end
          def to_hash
          end

          class Cursors < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::FollowingListResponse::Artists::Cursors,
                  Spotted::Internal::AnyHash
                )
              end

            # The cursor to use as key to find the next page of items.
            sig { returns(T.nilable(String)) }
            attr_reader :after

            sig { params(after: String).void }
            attr_writer :after

            # The cursor to use as key to find the previous page of items.
            sig { returns(T.nilable(String)) }
            attr_reader :before

            sig { params(before: String).void }
            attr_writer :before

            # The cursors used to find the next set of items.
            sig do
              params(after: String, before: String).returns(T.attached_class)
            end
            def self.new(
              # The cursor to use as key to find the next page of items.
              after: nil,
              # The cursor to use as key to find the previous page of items.
              before: nil
            )
            end

            sig { override.returns({ after: String, before: String }) }
            def to_hash
            end
          end

          class Item < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::FollowingListResponse::Artists::Item,
                  Spotted::Internal::AnyHash
                )
              end

            # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            # artist.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # Known external URLs for this artist.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::FollowingListResponse::Artists::Item::ExternalURLs
                )
              )
            end
            attr_reader :external_urls

            sig do
              params(
                external_urls:
                  Spotted::Models::Me::FollowingListResponse::Artists::Item::ExternalURLs::OrHash
              ).void
            end
            attr_writer :external_urls

            # Information about the followers of the artist.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::FollowingListResponse::Artists::Item::Followers
                )
              )
            end
            attr_reader :followers

            sig do
              params(
                followers:
                  Spotted::Models::Me::FollowingListResponse::Artists::Item::Followers::OrHash
              ).void
            end
            attr_writer :followers

            # A list of the genres the artist is associated with. If not yet classified, the
            # array is empty.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :genres

            sig { params(genres: T::Array[String]).void }
            attr_writer :genres

            # A link to the Web API endpoint providing full details of the artist.
            sig { returns(T.nilable(String)) }
            attr_reader :href

            sig { params(href: String).void }
            attr_writer :href

            # Images of the artist in various sizes, widest first.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Spotted::Models::Me::FollowingListResponse::Artists::Item::Image
                  ]
                )
              )
            end
            attr_reader :images

            sig do
              params(
                images:
                  T::Array[
                    Spotted::Models::Me::FollowingListResponse::Artists::Item::Image::OrHash
                  ]
              ).void
            end
            attr_writer :images

            # The name of the artist.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # The popularity of the artist. The value will be between 0 and 100, with 100
            # being the most popular. The artist's popularity is calculated from the
            # popularity of all the artist's tracks.
            sig { returns(T.nilable(Integer)) }
            attr_reader :popularity

            sig { params(popularity: Integer).void }
            attr_writer :popularity

            # The object type.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::FollowingListResponse::Artists::Item::Type::TaggedSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Spotted::Models::Me::FollowingListResponse::Artists::Item::Type::OrSymbol
              ).void
            end
            attr_writer :type

            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # artist.
            sig { returns(T.nilable(String)) }
            attr_reader :uri

            sig { params(uri: String).void }
            attr_writer :uri

            sig do
              params(
                id: String,
                external_urls:
                  Spotted::Models::Me::FollowingListResponse::Artists::Item::ExternalURLs::OrHash,
                followers:
                  Spotted::Models::Me::FollowingListResponse::Artists::Item::Followers::OrHash,
                genres: T::Array[String],
                href: String,
                images:
                  T::Array[
                    Spotted::Models::Me::FollowingListResponse::Artists::Item::Image::OrHash
                  ],
                name: String,
                popularity: Integer,
                type:
                  Spotted::Models::Me::FollowingListResponse::Artists::Item::Type::OrSymbol,
                uri: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
              # artist.
              id: nil,
              # Known external URLs for this artist.
              external_urls: nil,
              # Information about the followers of the artist.
              followers: nil,
              # A list of the genres the artist is associated with. If not yet classified, the
              # array is empty.
              genres: nil,
              # A link to the Web API endpoint providing full details of the artist.
              href: nil,
              # Images of the artist in various sizes, widest first.
              images: nil,
              # The name of the artist.
              name: nil,
              # The popularity of the artist. The value will be between 0 and 100, with 100
              # being the most popular. The artist's popularity is calculated from the
              # popularity of all the artist's tracks.
              popularity: nil,
              # The object type.
              type: nil,
              # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              # artist.
              uri: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  external_urls:
                    Spotted::Models::Me::FollowingListResponse::Artists::Item::ExternalURLs,
                  followers:
                    Spotted::Models::Me::FollowingListResponse::Artists::Item::Followers,
                  genres: T::Array[String],
                  href: String,
                  images:
                    T::Array[
                      Spotted::Models::Me::FollowingListResponse::Artists::Item::Image
                    ],
                  name: String,
                  popularity: Integer,
                  type:
                    Spotted::Models::Me::FollowingListResponse::Artists::Item::Type::TaggedSymbol,
                  uri: String
                }
              )
            end
            def to_hash
            end

            class ExternalURLs < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::FollowingListResponse::Artists::Item::ExternalURLs,
                    Spotted::Internal::AnyHash
                  )
                end

              # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              # object.
              sig { returns(T.nilable(String)) }
              attr_reader :spotify

              sig { params(spotify: String).void }
              attr_writer :spotify

              # Known external URLs for this artist.
              sig { params(spotify: String).returns(T.attached_class) }
              def self.new(
                # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                # object.
                spotify: nil
              )
              end

              sig { override.returns({ spotify: String }) }
              def to_hash
              end
            end

            class Followers < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::FollowingListResponse::Artists::Item::Followers,
                    Spotted::Internal::AnyHash
                  )
                end

              # This will always be set to null, as the Web API does not support it at the
              # moment.
              sig { returns(T.nilable(String)) }
              attr_accessor :href

              # The total number of followers.
              sig { returns(T.nilable(Integer)) }
              attr_reader :total

              sig { params(total: Integer).void }
              attr_writer :total

              # Information about the followers of the artist.
              sig do
                params(href: T.nilable(String), total: Integer).returns(
                  T.attached_class
                )
              end
              def self.new(
                # This will always be set to null, as the Web API does not support it at the
                # moment.
                href: nil,
                # The total number of followers.
                total: nil
              )
              end

              sig do
                override.returns({ href: T.nilable(String), total: Integer })
              end
              def to_hash
              end
            end

            class Image < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::FollowingListResponse::Artists::Item::Image,
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

            # The object type.
            module Type
              extend Spotted::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Spotted::Models::Me::FollowingListResponse::Artists::Item::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ARTIST =
                T.let(
                  :artist,
                  Spotted::Models::Me::FollowingListResponse::Artists::Item::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Spotted::Models::Me::FollowingListResponse::Artists::Item::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
