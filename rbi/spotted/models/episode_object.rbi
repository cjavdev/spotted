# typed: strong

module Spotted
  module Models
    class EpisodeObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::EpisodeObject, Spotted::Internal::AnyHash)
        end

      # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      # episode.
      sig { returns(String) }
      attr_accessor :id

      # A URL to a 30 second preview (MP3 format) of the episode. `null` if not
      # available.
      sig { returns(T.nilable(String)) }
      attr_accessor :audio_preview_url

      # A description of the episode. HTML tags are stripped away from this field, use
      # `html_description` field in case HTML tags are needed.
      sig { returns(String) }
      attr_accessor :description

      # The episode length in milliseconds.
      sig { returns(Integer) }
      attr_accessor :duration_ms

      # Whether or not the episode has explicit content (true = yes it does; false = no
      # it does not OR unknown).
      sig { returns(T::Boolean) }
      attr_accessor :explicit

      # External URLs for this episode.
      sig { returns(Spotted::ExternalURLObject) }
      attr_reader :external_urls

      sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
      attr_writer :external_urls

      # A link to the Web API endpoint providing full details of the episode.
      sig { returns(String) }
      attr_accessor :href

      # A description of the episode. This field may contain HTML tags.
      sig { returns(String) }
      attr_accessor :html_description

      # The cover art for the episode in various sizes, widest first.
      sig { returns(T::Array[Spotted::ImageObject]) }
      attr_accessor :images

      # True if the episode is hosted outside of Spotify's CDN.
      sig { returns(T::Boolean) }
      attr_accessor :is_externally_hosted

      # True if the episode is playable in the given market. Otherwise false.
      sig { returns(T::Boolean) }
      attr_accessor :is_playable

      # A list of the languages used in the episode, identified by their
      # [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
      sig { returns(T::Array[String]) }
      attr_accessor :languages

      # The name of the episode.
      sig { returns(String) }
      attr_accessor :name

      # The date the episode was first released, for example `"1981-12-15"`. Depending
      # on the precision, it might be shown as `"1981"` or `"1981-12"`.
      sig { returns(String) }
      attr_accessor :release_date

      # The precision with which `release_date` value is known.
      sig do
        returns(Spotted::EpisodeObject::ReleaseDatePrecision::TaggedSymbol)
      end
      attr_accessor :release_date_precision

      # The show on which the episode belongs.
      sig { returns(Spotted::ShowBase) }
      attr_reader :show

      sig { params(show: Spotted::ShowBase::OrHash).void }
      attr_writer :show

      # The object type.
      sig { returns(Spotted::EpisodeObject::Type::TaggedSymbol) }
      attr_accessor :type

      # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      # episode.
      sig { returns(String) }
      attr_accessor :uri

      # The language used in the episode, identified by a
      # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
      # and might be removed in the future. Please use the `languages` field instead.
      sig { returns(T.nilable(String)) }
      attr_reader :language

      sig { params(language: String).void }
      attr_writer :language

      # Included in the response when a content restriction is applied.
      sig { returns(T.nilable(Spotted::EpisodeRestrictionObject)) }
      attr_reader :restrictions

      sig do
        params(restrictions: Spotted::EpisodeRestrictionObject::OrHash).void
      end
      attr_writer :restrictions

      # The user's most recent position in the episode. Set if the supplied access token
      # is a user token and has the scope 'user-read-playback-position'.
      sig { returns(T.nilable(Spotted::ResumePointObject)) }
      attr_reader :resume_point

      sig { params(resume_point: Spotted::ResumePointObject::OrHash).void }
      attr_writer :resume_point

      sig do
        params(
          id: String,
          audio_preview_url: T.nilable(String),
          description: String,
          duration_ms: Integer,
          explicit: T::Boolean,
          external_urls: Spotted::ExternalURLObject::OrHash,
          href: String,
          html_description: String,
          images: T::Array[Spotted::ImageObject::OrHash],
          is_externally_hosted: T::Boolean,
          is_playable: T::Boolean,
          languages: T::Array[String],
          name: String,
          release_date: String,
          release_date_precision:
            Spotted::EpisodeObject::ReleaseDatePrecision::OrSymbol,
          show: Spotted::ShowBase::OrHash,
          type: Spotted::EpisodeObject::Type::OrSymbol,
          uri: String,
          language: String,
          restrictions: Spotted::EpisodeRestrictionObject::OrHash,
          resume_point: Spotted::ResumePointObject::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # episode.
        id:,
        # A URL to a 30 second preview (MP3 format) of the episode. `null` if not
        # available.
        audio_preview_url:,
        # A description of the episode. HTML tags are stripped away from this field, use
        # `html_description` field in case HTML tags are needed.
        description:,
        # The episode length in milliseconds.
        duration_ms:,
        # Whether or not the episode has explicit content (true = yes it does; false = no
        # it does not OR unknown).
        explicit:,
        # External URLs for this episode.
        external_urls:,
        # A link to the Web API endpoint providing full details of the episode.
        href:,
        # A description of the episode. This field may contain HTML tags.
        html_description:,
        # The cover art for the episode in various sizes, widest first.
        images:,
        # True if the episode is hosted outside of Spotify's CDN.
        is_externally_hosted:,
        # True if the episode is playable in the given market. Otherwise false.
        is_playable:,
        # A list of the languages used in the episode, identified by their
        # [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
        languages:,
        # The name of the episode.
        name:,
        # The date the episode was first released, for example `"1981-12-15"`. Depending
        # on the precision, it might be shown as `"1981"` or `"1981-12"`.
        release_date:,
        # The precision with which `release_date` value is known.
        release_date_precision:,
        # The show on which the episode belongs.
        show:,
        # The object type.
        type:,
        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        # episode.
        uri:,
        # The language used in the episode, identified by a
        # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
        # and might be removed in the future. Please use the `languages` field instead.
        language: nil,
        # Included in the response when a content restriction is applied.
        restrictions: nil,
        # The user's most recent position in the episode. Set if the supplied access token
        # is a user token and has the scope 'user-read-playback-position'.
        resume_point: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            audio_preview_url: T.nilable(String),
            description: String,
            duration_ms: Integer,
            explicit: T::Boolean,
            external_urls: Spotted::ExternalURLObject,
            href: String,
            html_description: String,
            images: T::Array[Spotted::ImageObject],
            is_externally_hosted: T::Boolean,
            is_playable: T::Boolean,
            languages: T::Array[String],
            name: String,
            release_date: String,
            release_date_precision:
              Spotted::EpisodeObject::ReleaseDatePrecision::TaggedSymbol,
            show: Spotted::ShowBase,
            type: Spotted::EpisodeObject::Type::TaggedSymbol,
            uri: String,
            language: String,
            restrictions: Spotted::EpisodeRestrictionObject,
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
            T.all(Symbol, Spotted::EpisodeObject::ReleaseDatePrecision)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        YEAR =
          T.let(
            :year,
            Spotted::EpisodeObject::ReleaseDatePrecision::TaggedSymbol
          )
        MONTH =
          T.let(
            :month,
            Spotted::EpisodeObject::ReleaseDatePrecision::TaggedSymbol
          )
        DAY =
          T.let(
            :day,
            Spotted::EpisodeObject::ReleaseDatePrecision::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Spotted::EpisodeObject::ReleaseDatePrecision::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The object type.
      module Type
        extend Spotted::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Spotted::EpisodeObject::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EPISODE = T.let(:episode, Spotted::EpisodeObject::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Spotted::EpisodeObject::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
