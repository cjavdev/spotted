# typed: strong

module Spotted
  module Models
    module Me
      class AudiobookListResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::AudiobookListResponse,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig do
          returns(T::Array[Spotted::Models::Me::AudiobookListResponse::Item])
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
                Spotted::Models::Me::AudiobookListResponse::Item::OrHash
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
              items: T::Array[Spotted::Models::Me::AudiobookListResponse::Item],
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
                Spotted::Models::Me::AudiobookListResponse::Item,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # audiobook.
          sig { returns(String) }
          attr_accessor :id

          # The author(s) for the audiobook.
          sig do
            returns(
              T::Array[Spotted::Models::Me::AudiobookListResponse::Item::Author]
            )
          end
          attr_accessor :authors

          # A list of the countries in which the audiobook can be played, identified by
          # their [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
          # code.
          sig { returns(T::Array[String]) }
          attr_accessor :available_markets

          # The copyright statements of the audiobook.
          sig do
            returns(
              T::Array[
                Spotted::Models::Me::AudiobookListResponse::Item::Copyright
              ]
            )
          end
          attr_accessor :copyrights

          # A description of the audiobook. HTML tags are stripped away from this field, use
          # `html_description` field in case HTML tags are needed.
          sig { returns(String) }
          attr_accessor :description

          # Whether or not the audiobook has explicit content (true = yes it does; false =
          # no it does not OR unknown).
          sig { returns(T::Boolean) }
          attr_accessor :explicit

          # External URLs for this audiobook.
          sig do
            returns(
              Spotted::Models::Me::AudiobookListResponse::Item::ExternalURLs
            )
          end
          attr_reader :external_urls

          sig do
            params(
              external_urls:
                Spotted::Models::Me::AudiobookListResponse::Item::ExternalURLs::OrHash
            ).void
          end
          attr_writer :external_urls

          # A link to the Web API endpoint providing full details of the audiobook.
          sig { returns(String) }
          attr_accessor :href

          # A description of the audiobook. This field may contain HTML tags.
          sig { returns(String) }
          attr_accessor :html_description

          # The cover art for the audiobook in various sizes, widest first.
          sig do
            returns(
              T::Array[Spotted::Models::Me::AudiobookListResponse::Item::Image]
            )
          end
          attr_accessor :images

          # A list of the languages used in the audiobook, identified by their
          # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
          sig { returns(T::Array[String]) }
          attr_accessor :languages

          # The media type of the audiobook.
          sig { returns(String) }
          attr_accessor :media_type

          # The name of the audiobook.
          sig { returns(String) }
          attr_accessor :name

          # The narrator(s) for the audiobook.
          sig do
            returns(
              T::Array[
                Spotted::Models::Me::AudiobookListResponse::Item::Narrator
              ]
            )
          end
          attr_accessor :narrators

          # The publisher of the audiobook.
          sig { returns(String) }
          attr_accessor :publisher

          # The number of chapters in this audiobook.
          sig { returns(Integer) }
          attr_accessor :total_chapters

          # The object type.
          sig do
            returns(
              Spotted::Models::Me::AudiobookListResponse::Item::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # audiobook.
          sig { returns(String) }
          attr_accessor :uri

          # The edition of the audiobook.
          sig { returns(T.nilable(String)) }
          attr_reader :edition

          sig { params(edition: String).void }
          attr_writer :edition

          sig do
            params(
              id: String,
              authors:
                T::Array[
                  Spotted::Models::Me::AudiobookListResponse::Item::Author::OrHash
                ],
              available_markets: T::Array[String],
              copyrights:
                T::Array[
                  Spotted::Models::Me::AudiobookListResponse::Item::Copyright::OrHash
                ],
              description: String,
              explicit: T::Boolean,
              external_urls:
                Spotted::Models::Me::AudiobookListResponse::Item::ExternalURLs::OrHash,
              href: String,
              html_description: String,
              images:
                T::Array[
                  Spotted::Models::Me::AudiobookListResponse::Item::Image::OrHash
                ],
              languages: T::Array[String],
              media_type: String,
              name: String,
              narrators:
                T::Array[
                  Spotted::Models::Me::AudiobookListResponse::Item::Narrator::OrHash
                ],
              publisher: String,
              total_chapters: Integer,
              type:
                Spotted::Models::Me::AudiobookListResponse::Item::Type::OrSymbol,
              uri: String,
              edition: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            # audiobook.
            id:,
            # The author(s) for the audiobook.
            authors:,
            # A list of the countries in which the audiobook can be played, identified by
            # their [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
            # code.
            available_markets:,
            # The copyright statements of the audiobook.
            copyrights:,
            # A description of the audiobook. HTML tags are stripped away from this field, use
            # `html_description` field in case HTML tags are needed.
            description:,
            # Whether or not the audiobook has explicit content (true = yes it does; false =
            # no it does not OR unknown).
            explicit:,
            # External URLs for this audiobook.
            external_urls:,
            # A link to the Web API endpoint providing full details of the audiobook.
            href:,
            # A description of the audiobook. This field may contain HTML tags.
            html_description:,
            # The cover art for the audiobook in various sizes, widest first.
            images:,
            # A list of the languages used in the audiobook, identified by their
            # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
            languages:,
            # The media type of the audiobook.
            media_type:,
            # The name of the audiobook.
            name:,
            # The narrator(s) for the audiobook.
            narrators:,
            # The publisher of the audiobook.
            publisher:,
            # The number of chapters in this audiobook.
            total_chapters:,
            # The object type.
            type:,
            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # audiobook.
            uri:,
            # The edition of the audiobook.
            edition: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                authors:
                  T::Array[
                    Spotted::Models::Me::AudiobookListResponse::Item::Author
                  ],
                available_markets: T::Array[String],
                copyrights:
                  T::Array[
                    Spotted::Models::Me::AudiobookListResponse::Item::Copyright
                  ],
                description: String,
                explicit: T::Boolean,
                external_urls:
                  Spotted::Models::Me::AudiobookListResponse::Item::ExternalURLs,
                href: String,
                html_description: String,
                images:
                  T::Array[
                    Spotted::Models::Me::AudiobookListResponse::Item::Image
                  ],
                languages: T::Array[String],
                media_type: String,
                name: String,
                narrators:
                  T::Array[
                    Spotted::Models::Me::AudiobookListResponse::Item::Narrator
                  ],
                publisher: String,
                total_chapters: Integer,
                type:
                  Spotted::Models::Me::AudiobookListResponse::Item::Type::TaggedSymbol,
                uri: String,
                edition: String
              }
            )
          end
          def to_hash
          end

          class Author < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::AudiobookListResponse::Item::Author,
                  Spotted::Internal::AnyHash
                )
              end

            # The name of the author.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { params(name: String).returns(T.attached_class) }
            def self.new(
              # The name of the author.
              name: nil
            )
            end

            sig { override.returns({ name: String }) }
            def to_hash
            end
          end

          class Copyright < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::AudiobookListResponse::Item::Copyright,
                  Spotted::Internal::AnyHash
                )
              end

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

            sig { params(text: String, type: String).returns(T.attached_class) }
            def self.new(
              # The copyright text for this content.
              text: nil,
              # The type of copyright: `C` = the copyright, `P` = the sound recording
              # (performance) copyright.
              type: nil
            )
            end

            sig { override.returns({ text: String, type: String }) }
            def to_hash
            end
          end

          class ExternalURLs < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::AudiobookListResponse::Item::ExternalURLs,
                  Spotted::Internal::AnyHash
                )
              end

            # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            # object.
            sig { returns(T.nilable(String)) }
            attr_reader :spotify

            sig { params(spotify: String).void }
            attr_writer :spotify

            # External URLs for this audiobook.
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

          class Image < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::AudiobookListResponse::Item::Image,
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

          class Narrator < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::AudiobookListResponse::Item::Narrator,
                  Spotted::Internal::AnyHash
                )
              end

            # The name of the Narrator.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { params(name: String).returns(T.attached_class) }
            def self.new(
              # The name of the Narrator.
              name: nil
            )
            end

            sig { override.returns({ name: String }) }
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
                  Spotted::Models::Me::AudiobookListResponse::Item::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUDIOBOOK =
              T.let(
                :audiobook,
                Spotted::Models::Me::AudiobookListResponse::Item::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::Me::AudiobookListResponse::Item::Type::TaggedSymbol
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
