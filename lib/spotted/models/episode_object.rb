# frozen_string_literal: true

module Spotted
  module Models
    class EpisodeObject < Spotted::Internal::Type::BaseModel
      # @!attribute id
      #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   episode.
      #
      #   @return [String]
      required :id, String

      # @!attribute audio_preview_url
      #   @deprecated
      #
      #   A URL to a 30 second preview (MP3 format) of the episode. `null` if not
      #   available.
      #
      #   @return [String, nil]
      required :audio_preview_url, String, nil?: true

      # @!attribute description
      #   A description of the episode. HTML tags are stripped away from this field, use
      #   `html_description` field in case HTML tags are needed.
      #
      #   @return [String]
      required :description, String

      # @!attribute duration_ms
      #   The episode length in milliseconds.
      #
      #   @return [Integer]
      required :duration_ms, Integer

      # @!attribute explicit
      #   Whether or not the episode has explicit content (true = yes it does; false = no
      #   it does not OR unknown).
      #
      #   @return [Boolean]
      required :explicit, Spotted::Internal::Type::Boolean

      # @!attribute external_urls
      #   External URLs for this episode.
      #
      #   @return [Spotted::Models::ExternalURLObject]
      required :external_urls, -> { Spotted::ExternalURLObject }

      # @!attribute href
      #   A link to the Web API endpoint providing full details of the episode.
      #
      #   @return [String]
      required :href, String

      # @!attribute html_description
      #   A description of the episode. This field may contain HTML tags.
      #
      #   @return [String]
      required :html_description, String

      # @!attribute images
      #   The cover art for the episode in various sizes, widest first.
      #
      #   @return [Array<Spotted::Models::ImageObject>]
      required :images, -> { Spotted::Internal::Type::ArrayOf[Spotted::ImageObject] }

      # @!attribute is_externally_hosted
      #   True if the episode is hosted outside of Spotify's CDN.
      #
      #   @return [Boolean]
      required :is_externally_hosted, Spotted::Internal::Type::Boolean

      # @!attribute is_playable
      #   True if the episode is playable in the given market. Otherwise false.
      #
      #   @return [Boolean]
      required :is_playable, Spotted::Internal::Type::Boolean

      # @!attribute languages
      #   A list of the languages used in the episode, identified by their
      #   [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
      #
      #   @return [Array<String>]
      required :languages, Spotted::Internal::Type::ArrayOf[String]

      # @!attribute name
      #   The name of the episode.
      #
      #   @return [String]
      required :name, String

      # @!attribute release_date
      #   The date the episode was first released, for example `"1981-12-15"`. Depending
      #   on the precision, it might be shown as `"1981"` or `"1981-12"`.
      #
      #   @return [String]
      required :release_date, String

      # @!attribute release_date_precision
      #   The precision with which `release_date` value is known.
      #
      #   @return [Symbol, Spotted::Models::EpisodeObject::ReleaseDatePrecision]
      required :release_date_precision, enum: -> { Spotted::EpisodeObject::ReleaseDatePrecision }

      # @!attribute show
      #   The show on which the episode belongs.
      #
      #   @return [Spotted::Models::ShowBase]
      required :show, -> { Spotted::ShowBase }

      # @!attribute type
      #   The object type.
      #
      #   @return [Symbol, :episode]
      required :type, const: :episode

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   episode.
      #
      #   @return [String]
      required :uri, String

      # @!attribute language
      #   @deprecated
      #
      #   The language used in the episode, identified by a
      #   [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
      #   and might be removed in the future. Please use the `languages` field instead.
      #
      #   @return [String, nil]
      optional :language, String

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
      #   @return [Spotted::Models::EpisodeRestrictionObject, nil]
      optional :restrictions, -> { Spotted::EpisodeRestrictionObject }

      # @!attribute resume_point
      #   The user's most recent position in the episode. Set if the supplied access token
      #   is a user token and has the scope 'user-read-playback-position'.
      #
      #   @return [Spotted::Models::ResumePointObject, nil]
      optional :resume_point, -> { Spotted::ResumePointObject }

      # @!method initialize(id:, audio_preview_url:, description:, duration_ms:, explicit:, external_urls:, href:, html_description:, images:, is_externally_hosted:, is_playable:, languages:, name:, release_date:, release_date_precision:, show:, uri:, language: nil, published: nil, restrictions: nil, resume_point: nil, type: :episode)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::EpisodeObject} for more details.
      #
      #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the episo
      #
      #   @param audio_preview_url [String, nil] A URL to a 30 second preview (MP3 format) of the episode. `null` if not availabl
      #
      #   @param description [String] A description of the episode. HTML tags are stripped away from this field, use `
      #
      #   @param duration_ms [Integer] The episode length in milliseconds.
      #
      #   @param explicit [Boolean] Whether or not the episode has explicit content (true = yes it does; false = no
      #
      #   @param external_urls [Spotted::Models::ExternalURLObject] External URLs for this episode.
      #
      #   @param href [String] A link to the Web API endpoint providing full details of the episode.
      #
      #   @param html_description [String] A description of the episode. This field may contain HTML tags.
      #
      #   @param images [Array<Spotted::Models::ImageObject>] The cover art for the episode in various sizes, widest first.
      #
      #   @param is_externally_hosted [Boolean] True if the episode is hosted outside of Spotify's CDN.
      #
      #   @param is_playable [Boolean] True if the episode is playable in the given market. Otherwise false.
      #
      #   @param languages [Array<String>] A list of the languages used in the episode, identified by their [ISO 639-1](htt
      #
      #   @param name [String] The name of the episode.
      #
      #   @param release_date [String] The date the episode was first released, for example `"1981-12-15"`. Depending o
      #
      #   @param release_date_precision [Symbol, Spotted::Models::EpisodeObject::ReleaseDatePrecision] The precision with which `release_date` value is known.
      #
      #   @param show [Spotted::Models::ShowBase] The show on which the episode belongs.
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the epis
      #
      #   @param language [String] The language used in the episode, identified by a [ISO 639](https://en.wikipedia
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param restrictions [Spotted::Models::EpisodeRestrictionObject] Included in the response when a content restriction is applied.
      #
      #   @param resume_point [Spotted::Models::ResumePointObject] The user's most recent position in the episode. Set if the supplied access token
      #
      #   @param type [Symbol, :episode] The object type.

      # The precision with which `release_date` value is known.
      #
      # @see Spotted::Models::EpisodeObject#release_date_precision
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
