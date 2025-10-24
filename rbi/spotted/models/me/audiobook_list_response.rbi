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

        # The date and time the audiobook was saved Timestamps are returned in ISO 8601
        # format as Coordinated Universal Time (UTC) with a zero offset:
        # YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example, the date/time of an
        # album release), an additional field indicates the precision; see for example,
        # release_date in an album object.
        sig { returns(T.nilable(Time)) }
        attr_reader :added_at

        sig { params(added_at: Time).void }
        attr_writer :added_at

        # Information about the audiobook.
        sig do
          returns(
            T.nilable(Spotted::Models::Me::AudiobookListResponse::Audiobook)
          )
        end
        attr_reader :audiobook

        sig do
          params(
            audiobook:
              Spotted::Models::Me::AudiobookListResponse::Audiobook::OrHash
          ).void
        end
        attr_writer :audiobook

        sig do
          params(
            added_at: Time,
            audiobook:
              Spotted::Models::Me::AudiobookListResponse::Audiobook::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time the audiobook was saved Timestamps are returned in ISO 8601
          # format as Coordinated Universal Time (UTC) with a zero offset:
          # YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example, the date/time of an
          # album release), an additional field indicates the precision; see for example,
          # release_date in an album object.
          added_at: nil,
          # Information about the audiobook.
          audiobook: nil
        )
        end

        sig do
          override.returns(
            {
              added_at: Time,
              audiobook: Spotted::Models::Me::AudiobookListResponse::Audiobook
            }
          )
        end
        def to_hash
        end

        class Audiobook < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Me::AudiobookListResponse::Audiobook,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # audiobook.
          sig { returns(String) }
          attr_accessor :id

          # The author(s) for the audiobook.
          sig { returns(T::Array[Spotted::AuthorObject]) }
          attr_accessor :authors

          # A list of the countries in which the audiobook can be played, identified by
          # their [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
          # code.
          sig { returns(T::Array[String]) }
          attr_accessor :available_markets

          # The chapters of the audiobook.
          sig do
            returns(
              Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters
            )
          end
          attr_reader :chapters

          sig do
            params(
              chapters:
                Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters::OrHash
            ).void
          end
          attr_writer :chapters

          # The copyright statements of the audiobook.
          sig { returns(T::Array[Spotted::CopyrightObject]) }
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
          sig { returns(Spotted::ExternalURLObject) }
          attr_reader :external_urls

          sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
          attr_writer :external_urls

          # A link to the Web API endpoint providing full details of the audiobook.
          sig { returns(String) }
          attr_accessor :href

          # A description of the audiobook. This field may contain HTML tags.
          sig { returns(String) }
          attr_accessor :html_description

          # The cover art for the audiobook in various sizes, widest first.
          sig { returns(T::Array[Spotted::ImageObject]) }
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
          sig { returns(T::Array[Spotted::NarratorObject]) }
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
              Spotted::Models::Me::AudiobookListResponse::Audiobook::Type::TaggedSymbol
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

          # Information about the audiobook.
          sig do
            params(
              id: String,
              authors: T::Array[Spotted::AuthorObject::OrHash],
              available_markets: T::Array[String],
              chapters:
                Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters::OrHash,
              copyrights: T::Array[Spotted::CopyrightObject::OrHash],
              description: String,
              explicit: T::Boolean,
              external_urls: Spotted::ExternalURLObject::OrHash,
              href: String,
              html_description: String,
              images: T::Array[Spotted::ImageObject::OrHash],
              languages: T::Array[String],
              media_type: String,
              name: String,
              narrators: T::Array[Spotted::NarratorObject::OrHash],
              publisher: String,
              total_chapters: Integer,
              type:
                Spotted::Models::Me::AudiobookListResponse::Audiobook::Type::OrSymbol,
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
                authors: T::Array[Spotted::AuthorObject],
                available_markets: T::Array[String],
                chapters:
                  Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters,
                copyrights: T::Array[Spotted::CopyrightObject],
                description: String,
                explicit: T::Boolean,
                external_urls: Spotted::ExternalURLObject,
                href: String,
                html_description: String,
                images: T::Array[Spotted::ImageObject],
                languages: T::Array[String],
                media_type: String,
                name: String,
                narrators: T::Array[Spotted::NarratorObject],
                publisher: String,
                total_chapters: Integer,
                type:
                  Spotted::Models::Me::AudiobookListResponse::Audiobook::Type::TaggedSymbol,
                uri: String,
                edition: String
              }
            )
          end
          def to_hash
          end

          class Chapters < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters,
                  Spotted::Internal::AnyHash
                )
              end

            # A link to the Web API endpoint returning the full result of the request
            sig { returns(String) }
            attr_accessor :href

            sig { returns(T::Array[Spotted::SimplifiedChapterObject]) }
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
                items: T::Array[Spotted::SimplifiedChapterObject::OrHash],
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
                  items: T::Array[Spotted::SimplifiedChapterObject],
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
          end

          # The object type.
          module Type
            extend Spotted::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Spotted::Models::Me::AudiobookListResponse::Audiobook::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUDIOBOOK =
              T.let(
                :audiobook,
                Spotted::Models::Me::AudiobookListResponse::Audiobook::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::Me::AudiobookListResponse::Audiobook::Type::TaggedSymbol
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
