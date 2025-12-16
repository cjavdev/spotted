# frozen_string_literal: true

module Spotted
  module Models
    class AudiobookBase < Spotted::Internal::Type::BaseModel
      # @!attribute id
      #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   audiobook.
      #
      #   @return [String]
      required :id, String

      # @!attribute authors
      #   The author(s) for the audiobook.
      #
      #   @return [Array<Spotted::Models::AuthorObject>]
      required :authors, -> { Spotted::Internal::Type::ArrayOf[Spotted::AuthorObject] }

      # @!attribute available_markets
      #   A list of the countries in which the audiobook can be played, identified by
      #   their [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
      #   code.
      #
      #   @return [Array<String>]
      required :available_markets, Spotted::Internal::Type::ArrayOf[String]

      # @!attribute copyrights
      #   The copyright statements of the audiobook.
      #
      #   @return [Array<Spotted::Models::CopyrightObject>]
      required :copyrights, -> { Spotted::Internal::Type::ArrayOf[Spotted::CopyrightObject] }

      # @!attribute description
      #   A description of the audiobook. HTML tags are stripped away from this field, use
      #   `html_description` field in case HTML tags are needed.
      #
      #   @return [String]
      required :description, String

      # @!attribute explicit
      #   Whether or not the audiobook has explicit content (true = yes it does; false =
      #   no it does not OR unknown).
      #
      #   @return [Boolean]
      required :explicit, Spotted::Internal::Type::Boolean

      # @!attribute external_urls
      #   External URLs for this audiobook.
      #
      #   @return [Spotted::Models::ExternalURLObject]
      required :external_urls, -> { Spotted::ExternalURLObject }

      # @!attribute href
      #   A link to the Web API endpoint providing full details of the audiobook.
      #
      #   @return [String]
      required :href, String

      # @!attribute html_description
      #   A description of the audiobook. This field may contain HTML tags.
      #
      #   @return [String]
      required :html_description, String

      # @!attribute images
      #   The cover art for the audiobook in various sizes, widest first.
      #
      #   @return [Array<Spotted::Models::ImageObject>]
      required :images, -> { Spotted::Internal::Type::ArrayOf[Spotted::ImageObject] }

      # @!attribute languages
      #   A list of the languages used in the audiobook, identified by their
      #   [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
      #
      #   @return [Array<String>]
      required :languages, Spotted::Internal::Type::ArrayOf[String]

      # @!attribute media_type
      #   The media type of the audiobook.
      #
      #   @return [String]
      required :media_type, String

      # @!attribute name
      #   The name of the audiobook.
      #
      #   @return [String]
      required :name, String

      # @!attribute narrators
      #   The narrator(s) for the audiobook.
      #
      #   @return [Array<Spotted::Models::NarratorObject>]
      required :narrators, -> { Spotted::Internal::Type::ArrayOf[Spotted::NarratorObject] }

      # @!attribute publisher
      #   The publisher of the audiobook.
      #
      #   @return [String]
      required :publisher, String

      # @!attribute total_chapters
      #   The number of chapters in this audiobook.
      #
      #   @return [Integer]
      required :total_chapters, Integer

      # @!attribute type
      #   The object type.
      #
      #   @return [Symbol, :audiobook]
      required :type, const: :audiobook

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   audiobook.
      #
      #   @return [String]
      required :uri, String

      # @!attribute edition
      #   The edition of the audiobook.
      #
      #   @return [String, nil]
      optional :edition, String

      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!method initialize(id:, authors:, available_markets:, copyrights:, description:, explicit:, external_urls:, href:, html_description:, images:, languages:, media_type:, name:, narrators:, publisher:, total_chapters:, uri:, edition: nil, published: nil, type: :audiobook)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::AudiobookBase} for more details.
      #
      #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the audio
      #
      #   @param authors [Array<Spotted::Models::AuthorObject>] The author(s) for the audiobook.
      #
      #   @param available_markets [Array<String>] A list of the countries in which the audiobook can be played, identified by thei
      #
      #   @param copyrights [Array<Spotted::Models::CopyrightObject>] The copyright statements of the audiobook.
      #
      #   @param description [String] A description of the audiobook. HTML tags are stripped away from this field, use
      #
      #   @param explicit [Boolean] Whether or not the audiobook has explicit content (true = yes it does; false = n
      #
      #   @param external_urls [Spotted::Models::ExternalURLObject] External URLs for this audiobook.
      #
      #   @param href [String] A link to the Web API endpoint providing full details of the audiobook.
      #
      #   @param html_description [String] A description of the audiobook. This field may contain HTML tags.
      #
      #   @param images [Array<Spotted::Models::ImageObject>] The cover art for the audiobook in various sizes, widest first.
      #
      #   @param languages [Array<String>] A list of the languages used in the audiobook, identified by their [ISO 639](htt
      #
      #   @param media_type [String] The media type of the audiobook.
      #
      #   @param name [String] The name of the audiobook.
      #
      #   @param narrators [Array<Spotted::Models::NarratorObject>] The narrator(s) for the audiobook.
      #
      #   @param publisher [String] The publisher of the audiobook.
      #
      #   @param total_chapters [Integer] The number of chapters in this audiobook.
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the audi
      #
      #   @param edition [String] The edition of the audiobook.
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param type [Symbol, :audiobook] The object type.
    end
  end
end
