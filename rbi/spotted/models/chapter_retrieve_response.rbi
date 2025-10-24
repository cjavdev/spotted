# typed: strong

module Spotted
  module Models
    class ChapterRetrieveResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::ChapterRetrieveResponse,
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

      # The audiobook for which the chapter belongs.
      sig { returns(Spotted::Models::ChapterRetrieveResponse::Audiobook) }
      attr_reader :audiobook

      sig do
        params(
          audiobook: Spotted::Models::ChapterRetrieveResponse::Audiobook::OrHash
        ).void
      end
      attr_writer :audiobook

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
      sig { returns(Spotted::ExternalURLObject) }
      attr_reader :external_urls

      sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
      attr_writer :external_urls

      # A link to the Web API endpoint providing full details of the chapter.
      sig { returns(String) }
      attr_accessor :href

      # A description of the chapter. This field may contain HTML tags.
      sig { returns(String) }
      attr_accessor :html_description

      # The cover art for the chapter in various sizes, widest first.
      sig { returns(T::Array[Spotted::ImageObject]) }
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
          Spotted::Models::ChapterRetrieveResponse::ReleaseDatePrecision::TaggedSymbol
        )
      end
      attr_accessor :release_date_precision

      # The object type.
      sig do
        returns(Spotted::Models::ChapterRetrieveResponse::Type::TaggedSymbol)
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
      sig { returns(T.nilable(Spotted::ChapterRestrictionObject)) }
      attr_reader :restrictions

      sig do
        params(restrictions: Spotted::ChapterRestrictionObject::OrHash).void
      end
      attr_writer :restrictions

      # The user's most recent position in the chapter. Set if the supplied access token
      # is a user token and has the scope 'user-read-playback-position'.
      sig { returns(T.nilable(Spotted::ResumePointObject)) }
      attr_reader :resume_point

      sig { params(resume_point: Spotted::ResumePointObject::OrHash).void }
      attr_writer :resume_point

      sig do
        params(
          id: String,
          audio_preview_url: T.nilable(String),
          audiobook:
            Spotted::Models::ChapterRetrieveResponse::Audiobook::OrHash,
          chapter_number: Integer,
          description: String,
          duration_ms: Integer,
          explicit: T::Boolean,
          external_urls: Spotted::ExternalURLObject::OrHash,
          href: String,
          html_description: String,
          images: T::Array[Spotted::ImageObject::OrHash],
          is_playable: T::Boolean,
          languages: T::Array[String],
          name: String,
          release_date: String,
          release_date_precision:
            Spotted::Models::ChapterRetrieveResponse::ReleaseDatePrecision::OrSymbol,
          type: Spotted::Models::ChapterRetrieveResponse::Type::OrSymbol,
          uri: String,
          available_markets: T::Array[String],
          restrictions: Spotted::ChapterRestrictionObject::OrHash,
          resume_point: Spotted::ResumePointObject::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # chapter.
        id:,
        # A URL to a 30 second preview (MP3 format) of the chapter. `null` if not
        # available.
        audio_preview_url:,
        # The audiobook for which the chapter belongs.
        audiobook:,
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
            audiobook: Spotted::Models::ChapterRetrieveResponse::Audiobook,
            chapter_number: Integer,
            description: String,
            duration_ms: Integer,
            explicit: T::Boolean,
            external_urls: Spotted::ExternalURLObject,
            href: String,
            html_description: String,
            images: T::Array[Spotted::ImageObject],
            is_playable: T::Boolean,
            languages: T::Array[String],
            name: String,
            release_date: String,
            release_date_precision:
              Spotted::Models::ChapterRetrieveResponse::ReleaseDatePrecision::TaggedSymbol,
            type: Spotted::Models::ChapterRetrieveResponse::Type::TaggedSymbol,
            uri: String,
            available_markets: T::Array[String],
            restrictions: Spotted::ChapterRestrictionObject,
            resume_point: Spotted::ResumePointObject
          }
        )
      end
      def to_hash
      end

      class Audiobook < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::ChapterRetrieveResponse::Audiobook,
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
            Spotted::Models::ChapterRetrieveResponse::Audiobook::Type::TaggedSymbol
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

        # The audiobook for which the chapter belongs.
        sig do
          params(
            id: String,
            authors: T::Array[Spotted::AuthorObject::OrHash],
            available_markets: T::Array[String],
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
              Spotted::Models::ChapterRetrieveResponse::Audiobook::Type::OrSymbol,
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
              authors: T::Array[Spotted::AuthorObject],
              available_markets: T::Array[String],
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
                Spotted::Models::ChapterRetrieveResponse::Audiobook::Type::TaggedSymbol,
              uri: String,
              edition: String
            }
          )
        end
        def to_hash
        end

        # The object type.
        module Type
          extend Spotted::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Spotted::Models::ChapterRetrieveResponse::Audiobook::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIOBOOK =
            T.let(
              :audiobook,
              Spotted::Models::ChapterRetrieveResponse::Audiobook::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Spotted::Models::ChapterRetrieveResponse::Audiobook::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The precision with which `release_date` value is known.
      module ReleaseDatePrecision
        extend Spotted::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Spotted::Models::ChapterRetrieveResponse::ReleaseDatePrecision
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        YEAR =
          T.let(
            :year,
            Spotted::Models::ChapterRetrieveResponse::ReleaseDatePrecision::TaggedSymbol
          )
        MONTH =
          T.let(
            :month,
            Spotted::Models::ChapterRetrieveResponse::ReleaseDatePrecision::TaggedSymbol
          )
        DAY =
          T.let(
            :day,
            Spotted::Models::ChapterRetrieveResponse::ReleaseDatePrecision::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Spotted::Models::ChapterRetrieveResponse::ReleaseDatePrecision::TaggedSymbol
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
            T.all(Symbol, Spotted::Models::ChapterRetrieveResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EPISODE =
          T.let(
            :episode,
            Spotted::Models::ChapterRetrieveResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Spotted::Models::ChapterRetrieveResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
