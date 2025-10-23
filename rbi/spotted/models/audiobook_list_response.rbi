# typed: strong

module Spotted
  module Models
    class AudiobookListResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::AudiobookListResponse,
            Spotted::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[Spotted::Models::AudiobookListResponse::Audiobook])
      end
      attr_accessor :audiobooks

      sig do
        params(
          audiobooks:
            T::Array[Spotted::Models::AudiobookListResponse::Audiobook::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(audiobooks:)
      end

      sig do
        override.returns(
          {
            audiobooks:
              T::Array[Spotted::Models::AudiobookListResponse::Audiobook]
          }
        )
      end
      def to_hash
      end

      class Audiobook < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::AudiobookListResponse::Audiobook,
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
            T::Array[Spotted::Models::AudiobookListResponse::Audiobook::Author]
          )
        end
        attr_accessor :authors

        # A list of the countries in which the audiobook can be played, identified by
        # their [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
        # code.
        sig { returns(T::Array[String]) }
        attr_accessor :available_markets

        # The chapters of the audiobook.
        sig do
          returns(Spotted::Models::AudiobookListResponse::Audiobook::Chapters)
        end
        attr_reader :chapters

        sig do
          params(
            chapters:
              Spotted::Models::AudiobookListResponse::Audiobook::Chapters::OrHash
          ).void
        end
        attr_writer :chapters

        # The copyright statements of the audiobook.
        sig do
          returns(
            T::Array[
              Spotted::Models::AudiobookListResponse::Audiobook::Copyright
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
            Spotted::Models::AudiobookListResponse::Audiobook::ExternalURLs
          )
        end
        attr_reader :external_urls

        sig do
          params(
            external_urls:
              Spotted::Models::AudiobookListResponse::Audiobook::ExternalURLs::OrHash
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
            T::Array[Spotted::Models::AudiobookListResponse::Audiobook::Image]
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
              Spotted::Models::AudiobookListResponse::Audiobook::Narrator
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
            Spotted::Models::AudiobookListResponse::Audiobook::Type::TaggedSymbol
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
                Spotted::Models::AudiobookListResponse::Audiobook::Author::OrHash
              ],
            available_markets: T::Array[String],
            chapters:
              Spotted::Models::AudiobookListResponse::Audiobook::Chapters::OrHash,
            copyrights:
              T::Array[
                Spotted::Models::AudiobookListResponse::Audiobook::Copyright::OrHash
              ],
            description: String,
            explicit: T::Boolean,
            external_urls:
              Spotted::Models::AudiobookListResponse::Audiobook::ExternalURLs::OrHash,
            href: String,
            html_description: String,
            images:
              T::Array[
                Spotted::Models::AudiobookListResponse::Audiobook::Image::OrHash
              ],
            languages: T::Array[String],
            media_type: String,
            name: String,
            narrators:
              T::Array[
                Spotted::Models::AudiobookListResponse::Audiobook::Narrator::OrHash
              ],
            publisher: String,
            total_chapters: Integer,
            type:
              Spotted::Models::AudiobookListResponse::Audiobook::Type::OrSymbol,
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
          # The chapters of the audiobook.
          chapters:,
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
                  Spotted::Models::AudiobookListResponse::Audiobook::Author
                ],
              available_markets: T::Array[String],
              chapters:
                Spotted::Models::AudiobookListResponse::Audiobook::Chapters,
              copyrights:
                T::Array[
                  Spotted::Models::AudiobookListResponse::Audiobook::Copyright
                ],
              description: String,
              explicit: T::Boolean,
              external_urls:
                Spotted::Models::AudiobookListResponse::Audiobook::ExternalURLs,
              href: String,
              html_description: String,
              images:
                T::Array[
                  Spotted::Models::AudiobookListResponse::Audiobook::Image
                ],
              languages: T::Array[String],
              media_type: String,
              name: String,
              narrators:
                T::Array[
                  Spotted::Models::AudiobookListResponse::Audiobook::Narrator
                ],
              publisher: String,
              total_chapters: Integer,
              type:
                Spotted::Models::AudiobookListResponse::Audiobook::Type::TaggedSymbol,
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
                Spotted::Models::AudiobookListResponse::Audiobook::Author,
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

        class Chapters < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::AudiobookListResponse::Audiobook::Chapters,
                Spotted::Internal::AnyHash
              )
            end

          # A link to the Web API endpoint returning the full result of the request
          sig { returns(String) }
          attr_accessor :href

          sig do
            returns(
              T::Array[
                Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item
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

          # The chapters of the audiobook.
          sig do
            params(
              href: String,
              items:
                T::Array[
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::OrHash
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
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item
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
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item,
                  Spotted::Internal::AnyHash
                )
              end

            # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            # chapter.
            sig { returns(String) }
            attr_accessor :id

            # A URL to a 30 second preview (MP3 format) of the chapter. `null` if not
            # available.
            sig { returns(T.nilable(String)) }
            attr_accessor :audio_preview_url

            # The number of the chapter
            sig { returns(Integer) }
            attr_accessor :chapter_number

            # A description of the chapter. HTML tags are stripped away from this field, use
            # `html_description` field in case HTML tags are needed.
            sig { returns(String) }
            attr_accessor :description

            # The chapter length in milliseconds.
            sig { returns(Integer) }
            attr_accessor :duration_ms

            # Whether or not the chapter has explicit content (true = yes it does; false = no
            # it does not OR unknown).
            sig { returns(T::Boolean) }
            attr_accessor :explicit

            # External URLs for this chapter.
            sig do
              returns(
                Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ExternalURLs
              )
            end
            attr_reader :external_urls

            sig do
              params(
                external_urls:
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ExternalURLs::OrHash
              ).void
            end
            attr_writer :external_urls

            # A link to the Web API endpoint providing full details of the chapter.
            sig { returns(String) }
            attr_accessor :href

            # A description of the chapter. This field may contain HTML tags.
            sig { returns(String) }
            attr_accessor :html_description

            # The cover art for the chapter in various sizes, widest first.
            sig do
              returns(
                T::Array[
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Image
                ]
              )
            end
            attr_accessor :images

            # True if the chapter is playable in the given market. Otherwise false.
            sig { returns(T::Boolean) }
            attr_accessor :is_playable

            # A list of the languages used in the chapter, identified by their
            # [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
            sig { returns(T::Array[String]) }
            attr_accessor :languages

            # The name of the chapter.
            sig { returns(String) }
            attr_accessor :name

            # The date the chapter was first released, for example `"1981-12-15"`. Depending
            # on the precision, it might be shown as `"1981"` or `"1981-12"`.
            sig { returns(String) }
            attr_accessor :release_date

            # The precision with which `release_date` value is known.
            sig do
              returns(
                Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ReleaseDatePrecision::TaggedSymbol
              )
            end
            attr_accessor :release_date_precision

            # The object type.
            sig do
              returns(
                Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # chapter.
            sig { returns(String) }
            attr_accessor :uri

            # A list of the countries in which the chapter can be played, identified by their
            # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :available_markets

            sig { params(available_markets: T::Array[String]).void }
            attr_writer :available_markets

            # Included in the response when a content restriction is applied.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Restrictions
                )
              )
            end
            attr_reader :restrictions

            sig do
              params(
                restrictions:
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Restrictions::OrHash
              ).void
            end
            attr_writer :restrictions

            # The user's most recent position in the chapter. Set if the supplied access token
            # is a user token and has the scope 'user-read-playback-position'.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ResumePoint
                )
              )
            end
            attr_reader :resume_point

            sig do
              params(
                resume_point:
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ResumePoint::OrHash
              ).void
            end
            attr_writer :resume_point

            sig do
              params(
                id: String,
                audio_preview_url: T.nilable(String),
                chapter_number: Integer,
                description: String,
                duration_ms: Integer,
                explicit: T::Boolean,
                external_urls:
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ExternalURLs::OrHash,
                href: String,
                html_description: String,
                images:
                  T::Array[
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Image::OrHash
                  ],
                is_playable: T::Boolean,
                languages: T::Array[String],
                name: String,
                release_date: String,
                release_date_precision:
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ReleaseDatePrecision::OrSymbol,
                type:
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Type::OrSymbol,
                uri: String,
                available_markets: T::Array[String],
                restrictions:
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Restrictions::OrHash,
                resume_point:
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ResumePoint::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
              # chapter.
              id:,
              # A URL to a 30 second preview (MP3 format) of the chapter. `null` if not
              # available.
              audio_preview_url:,
              # The number of the chapter
              chapter_number:,
              # A description of the chapter. HTML tags are stripped away from this field, use
              # `html_description` field in case HTML tags are needed.
              description:,
              # The chapter length in milliseconds.
              duration_ms:,
              # Whether or not the chapter has explicit content (true = yes it does; false = no
              # it does not OR unknown).
              explicit:,
              # External URLs for this chapter.
              external_urls:,
              # A link to the Web API endpoint providing full details of the chapter.
              href:,
              # A description of the chapter. This field may contain HTML tags.
              html_description:,
              # The cover art for the chapter in various sizes, widest first.
              images:,
              # True if the chapter is playable in the given market. Otherwise false.
              is_playable:,
              # A list of the languages used in the chapter, identified by their
              # [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
              languages:,
              # The name of the chapter.
              name:,
              # The date the chapter was first released, for example `"1981-12-15"`. Depending
              # on the precision, it might be shown as `"1981"` or `"1981-12"`.
              release_date:,
              # The precision with which `release_date` value is known.
              release_date_precision:,
              # The object type.
              type:,
              # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              # chapter.
              uri:,
              # A list of the countries in which the chapter can be played, identified by their
              # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
              available_markets: nil,
              # Included in the response when a content restriction is applied.
              restrictions: nil,
              # The user's most recent position in the chapter. Set if the supplied access token
              # is a user token and has the scope 'user-read-playback-position'.
              resume_point: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  audio_preview_url: T.nilable(String),
                  chapter_number: Integer,
                  description: String,
                  duration_ms: Integer,
                  explicit: T::Boolean,
                  external_urls:
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ExternalURLs,
                  href: String,
                  html_description: String,
                  images:
                    T::Array[
                      Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Image
                    ],
                  is_playable: T::Boolean,
                  languages: T::Array[String],
                  name: String,
                  release_date: String,
                  release_date_precision:
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ReleaseDatePrecision::TaggedSymbol,
                  type:
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Type::TaggedSymbol,
                  uri: String,
                  available_markets: T::Array[String],
                  restrictions:
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Restrictions,
                  resume_point:
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ResumePoint
                }
              )
            end
            def to_hash
            end

            class ExternalURLs < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ExternalURLs,
                    Spotted::Internal::AnyHash
                  )
                end

              # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              # object.
              sig { returns(T.nilable(String)) }
              attr_reader :spotify

              sig { params(spotify: String).void }
              attr_writer :spotify

              # External URLs for this chapter.
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
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Image,
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

            # The precision with which `release_date` value is known.
            module ReleaseDatePrecision
              extend Spotted::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ReleaseDatePrecision
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              YEAR =
                T.let(
                  :year,
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ReleaseDatePrecision::TaggedSymbol
                )
              MONTH =
                T.let(
                  :month,
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ReleaseDatePrecision::TaggedSymbol
                )
              DAY =
                T.let(
                  :day,
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ReleaseDatePrecision::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ReleaseDatePrecision::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The object type.
            module Type
              extend Spotted::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EPISODE =
                T.let(
                  :episode,
                  Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Restrictions < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::Restrictions,
                    Spotted::Internal::AnyHash
                  )
                end

              # The reason for the restriction. Supported values:
              #
              # - `market` - The content item is not available in the given market.
              # - `product` - The content item is not available for the user's subscription
              #   type.
              # - `explicit` - The content item is explicit and the user's account is set to not
              #   play explicit content.
              # - `payment_required` - Payment is required to play the content item.
              #
              # Additional reasons may be added in the future. **Note**: If you use this field,
              # make sure that your application safely handles unknown values.
              sig { returns(T.nilable(String)) }
              attr_reader :reason

              sig { params(reason: String).void }
              attr_writer :reason

              # Included in the response when a content restriction is applied.
              sig { params(reason: String).returns(T.attached_class) }
              def self.new(
                # The reason for the restriction. Supported values:
                #
                # - `market` - The content item is not available in the given market.
                # - `product` - The content item is not available for the user's subscription
                #   type.
                # - `explicit` - The content item is explicit and the user's account is set to not
                #   play explicit content.
                # - `payment_required` - Payment is required to play the content item.
                #
                # Additional reasons may be added in the future. **Note**: If you use this field,
                # make sure that your application safely handles unknown values.
                reason: nil
              )
              end

              sig { override.returns({ reason: String }) }
              def to_hash
              end
            end

            class ResumePoint < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::AudiobookListResponse::Audiobook::Chapters::Item::ResumePoint,
                    Spotted::Internal::AnyHash
                  )
                end

              # Whether or not the episode has been fully played by the user.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :fully_played

              sig { params(fully_played: T::Boolean).void }
              attr_writer :fully_played

              # The user's most recent position in the episode in milliseconds.
              sig { returns(T.nilable(Integer)) }
              attr_reader :resume_position_ms

              sig { params(resume_position_ms: Integer).void }
              attr_writer :resume_position_ms

              # The user's most recent position in the chapter. Set if the supplied access token
              # is a user token and has the scope 'user-read-playback-position'.
              sig do
                params(
                  fully_played: T::Boolean,
                  resume_position_ms: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # Whether or not the episode has been fully played by the user.
                fully_played: nil,
                # The user's most recent position in the episode in milliseconds.
                resume_position_ms: nil
              )
              end

              sig do
                override.returns(
                  { fully_played: T::Boolean, resume_position_ms: Integer }
                )
              end
              def to_hash
              end
            end
          end
        end

        class Copyright < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::AudiobookListResponse::Audiobook::Copyright,
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
                Spotted::Models::AudiobookListResponse::Audiobook::ExternalURLs,
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
                Spotted::Models::AudiobookListResponse::Audiobook::Image,
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
                Spotted::Models::AudiobookListResponse::Audiobook::Narrator,
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
                Spotted::Models::AudiobookListResponse::Audiobook::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIOBOOK =
            T.let(
              :audiobook,
              Spotted::Models::AudiobookListResponse::Audiobook::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Spotted::Models::AudiobookListResponse::Audiobook::Type::TaggedSymbol
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
