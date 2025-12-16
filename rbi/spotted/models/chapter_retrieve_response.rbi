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
      sig { returns(Spotted::AudiobookBase) }
      attr_reader :audiobook

      sig { params(audiobook: Spotted::AudiobookBase::OrHash).void }
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
      sig { returns(Symbol) }
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

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

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
          audiobook: Spotted::AudiobookBase::OrHash,
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
          uri: String,
          available_markets: T::Array[String],
          published: T::Boolean,
          restrictions: Spotted::ChapterRestrictionObject::OrHash,
          resume_point: Spotted::ResumePointObject::OrHash,
          type: Symbol
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
        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        # chapter.
        uri:,
        # A list of the countries in which the chapter can be played, identified by their
        # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
        available_markets: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # Included in the response when a content restriction is applied.
        restrictions: nil,
        # The user's most recent position in the chapter. Set if the supplied access token
        # is a user token and has the scope 'user-read-playback-position'.
        resume_point: nil,
        # The object type.
        type: :episode
      )
      end

      sig do
        override.returns(
          {
            id: String,
            audio_preview_url: T.nilable(String),
            audiobook: Spotted::AudiobookBase,
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
            type: Symbol,
            uri: String,
            available_markets: T::Array[String],
            published: T::Boolean,
            restrictions: Spotted::ChapterRestrictionObject,
            resume_point: Spotted::ResumePointObject
          }
        )
      end
      def to_hash
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
    end
  end
end
