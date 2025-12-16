# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Audiobooks#list_chapters
    class SimplifiedChapterObject < Spotted::Internal::Type::BaseModel
      # @!attribute id
      #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   chapter.
      #
      #   @return [String]
      required :id, String

      # @!attribute audio_preview_url
      #   @deprecated
      #
      #   A URL to a 30 second preview (MP3 format) of the chapter. `null` if not
      #   available.
      #
      #   @return [String, nil]
      required :audio_preview_url, String, nil?: true

      # @!attribute chapter_number
      #   The number of the chapter
      #
      #   @return [Integer]
      required :chapter_number, Integer

      # @!attribute description
      #   A description of the chapter. HTML tags are stripped away from this field, use
      #   `html_description` field in case HTML tags are needed.
      #
      #   @return [String]
      required :description, String

      # @!attribute duration_ms
      #   The chapter length in milliseconds.
      #
      #   @return [Integer]
      required :duration_ms, Integer

      # @!attribute explicit
      #   Whether or not the chapter has explicit content (true = yes it does; false = no
      #   it does not OR unknown).
      #
      #   @return [Boolean]
      required :explicit, Spotted::Internal::Type::Boolean

      # @!attribute external_urls
      #   External URLs for this chapter.
      #
      #   @return [Spotted::Models::ExternalURLObject]
      required :external_urls, -> { Spotted::ExternalURLObject }

      # @!attribute href
      #   A link to the Web API endpoint providing full details of the chapter.
      #
      #   @return [String]
      required :href, String

      # @!attribute html_description
      #   A description of the chapter. This field may contain HTML tags.
      #
      #   @return [String]
      required :html_description, String

      # @!attribute images
      #   The cover art for the chapter in various sizes, widest first.
      #
      #   @return [Array<Spotted::Models::ImageObject>]
      required :images, -> { Spotted::Internal::Type::ArrayOf[Spotted::ImageObject] }

      # @!attribute is_playable
      #   True if the chapter is playable in the given market. Otherwise false.
      #
      #   @return [Boolean]
      required :is_playable, Spotted::Internal::Type::Boolean

      # @!attribute languages
      #   A list of the languages used in the chapter, identified by their
      #   [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
      #
      #   @return [Array<String>]
      required :languages, Spotted::Internal::Type::ArrayOf[String]

      # @!attribute name
      #   The name of the chapter.
      #
      #   @return [String]
      required :name, String

      # @!attribute release_date
      #   The date the chapter was first released, for example `"1981-12-15"`. Depending
      #   on the precision, it might be shown as `"1981"` or `"1981-12"`.
      #
      #   @return [String]
      required :release_date, String

      # @!attribute release_date_precision
      #   The precision with which `release_date` value is known.
      #
      #   @return [Symbol, Spotted::Models::SimplifiedChapterObject::ReleaseDatePrecision]
      required :release_date_precision, enum: -> { Spotted::SimplifiedChapterObject::ReleaseDatePrecision }

      # @!attribute type
      #   The object type.
      #
      #   @return [Symbol, :episode]
      required :type, const: :episode

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   chapter.
      #
      #   @return [String]
      required :uri, String

      # @!attribute available_markets
      #   A list of the countries in which the chapter can be played, identified by their
      #   [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
      #
      #   @return [Array<String>, nil]
      optional :available_markets, Spotted::Internal::Type::ArrayOf[String]

      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!attribute restrictions
      #   Included in the response when a content restriction is applied.
      #
      #   @return [Spotted::Models::ChapterRestrictionObject, nil]
      optional :restrictions, -> { Spotted::ChapterRestrictionObject }

      # @!attribute resume_point
      #   The user's most recent position in the chapter. Set if the supplied access token
      #   is a user token and has the scope 'user-read-playback-position'.
      #
      #   @return [Spotted::Models::ResumePointObject, nil]
      optional :resume_point, -> { Spotted::ResumePointObject }

      # @!method initialize(id:, audio_preview_url:, chapter_number:, description:, duration_ms:, explicit:, external_urls:, href:, html_description:, images:, is_playable:, languages:, name:, release_date:, release_date_precision:, uri:, available_markets: nil, published: nil, restrictions: nil, resume_point: nil, type: :episode)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::SimplifiedChapterObject} for more details.
      #
      #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the chapt
      #
      #   @param audio_preview_url [String, nil] A URL to a 30 second preview (MP3 format) of the chapter. `null` if not availabl
      #
      #   @param chapter_number [Integer] The number of the chapter
      #
      #   @param description [String] A description of the chapter. HTML tags are stripped away from this field, use `
      #
      #   @param duration_ms [Integer] The chapter length in milliseconds.
      #
      #   @param explicit [Boolean] Whether or not the chapter has explicit content (true = yes it does; false = no
      #
      #   @param external_urls [Spotted::Models::ExternalURLObject] External URLs for this chapter.
      #
      #   @param href [String] A link to the Web API endpoint providing full details of the chapter.
      #
      #   @param html_description [String] A description of the chapter. This field may contain HTML tags.
      #
      #   @param images [Array<Spotted::Models::ImageObject>] The cover art for the chapter in various sizes, widest first.
      #
      #   @param is_playable [Boolean] True if the chapter is playable in the given market. Otherwise false.
      #
      #   @param languages [Array<String>] A list of the languages used in the chapter, identified by their [ISO 639-1](htt
      #
      #   @param name [String] The name of the chapter.
      #
      #   @param release_date [String] The date the chapter was first released, for example `"1981-12-15"`. Depending o
      #
      #   @param release_date_precision [Symbol, Spotted::Models::SimplifiedChapterObject::ReleaseDatePrecision] The precision with which `release_date` value is known.
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the chap
      #
      #   @param available_markets [Array<String>] A list of the countries in which the chapter can be played, identified by their
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param restrictions [Spotted::Models::ChapterRestrictionObject] Included in the response when a content restriction is applied.
      #
      #   @param resume_point [Spotted::Models::ResumePointObject] The user's most recent position in the chapter. Set if the supplied access token
      #
      #   @param type [Symbol, :episode] The object type.

      # The precision with which `release_date` value is known.
      #
      # @see Spotted::Models::SimplifiedChapterObject#release_date_precision
      module ReleaseDatePrecision
        extend Spotted::Internal::Type::Enum

        YEAR = :year
        MONTH = :month
        DAY = :day

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
