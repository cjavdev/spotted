# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Chapters#list
    class ChapterListResponse < Spotted::Internal::Type::BaseModel
      # @!attribute chapters
      #
      #   @return [Array<Spotted::Models::ChapterListResponse::Chapter>]
      required :chapters, -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ChapterListResponse::Chapter] }

      # @!method initialize(chapters:)
      #   @param chapters [Array<Spotted::Models::ChapterListResponse::Chapter>]

      class Chapter < Spotted::Internal::Type::BaseModel
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

        # @!attribute audiobook
        #   The audiobook for which the chapter belongs.
        #
        #   @return [Spotted::Models::ChapterListResponse::Chapter::Audiobook]
        required :audiobook, -> { Spotted::Models::ChapterListResponse::Chapter::Audiobook }

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
        #   @return [Spotted::Models::ChapterListResponse::Chapter::ExternalURLs]
        required :external_urls, -> { Spotted::Models::ChapterListResponse::Chapter::ExternalURLs }

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
        #   @return [Array<Spotted::Models::ChapterListResponse::Chapter::Image>]
        required :images,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ChapterListResponse::Chapter::Image] }

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
        #   @return [Symbol, Spotted::Models::ChapterListResponse::Chapter::ReleaseDatePrecision]
        required :release_date_precision,
                 enum: -> { Spotted::Models::ChapterListResponse::Chapter::ReleaseDatePrecision }

        # @!attribute type
        #   The object type.
        #
        #   @return [Symbol, Spotted::Models::ChapterListResponse::Chapter::Type]
        required :type, enum: -> { Spotted::Models::ChapterListResponse::Chapter::Type }

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

        # @!attribute restrictions
        #   Included in the response when a content restriction is applied.
        #
        #   @return [Spotted::Models::ChapterListResponse::Chapter::Restrictions, nil]
        optional :restrictions, -> { Spotted::Models::ChapterListResponse::Chapter::Restrictions }

        # @!attribute resume_point
        #   The user's most recent position in the chapter. Set if the supplied access token
        #   is a user token and has the scope 'user-read-playback-position'.
        #
        #   @return [Spotted::Models::ChapterListResponse::Chapter::ResumePoint, nil]
        optional :resume_point, -> { Spotted::Models::ChapterListResponse::Chapter::ResumePoint }

        # @!method initialize(id:, audio_preview_url:, audiobook:, chapter_number:, description:, duration_ms:, explicit:, external_urls:, href:, html_description:, images:, is_playable:, languages:, name:, release_date:, release_date_precision:, type:, uri:, available_markets: nil, restrictions: nil, resume_point: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::ChapterListResponse::Chapter} for more details.
        #
        #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the chapt
        #
        #   @param audio_preview_url [String, nil] A URL to a 30 second preview (MP3 format) of the chapter. `null` if not availabl
        #
        #   @param audiobook [Spotted::Models::ChapterListResponse::Chapter::Audiobook] The audiobook for which the chapter belongs.
        #
        #   @param chapter_number [Integer] The number of the chapter
        #
        #   @param description [String] A description of the chapter. HTML tags are stripped away from this field, use `
        #
        #   @param duration_ms [Integer] The chapter length in milliseconds.
        #
        #   @param explicit [Boolean] Whether or not the chapter has explicit content (true = yes it does; false = no
        #
        #   @param external_urls [Spotted::Models::ChapterListResponse::Chapter::ExternalURLs] External URLs for this chapter.
        #
        #   @param href [String] A link to the Web API endpoint providing full details of the chapter.
        #
        #   @param html_description [String] A description of the chapter. This field may contain HTML tags.
        #
        #   @param images [Array<Spotted::Models::ChapterListResponse::Chapter::Image>] The cover art for the chapter in various sizes, widest first.
        #
        #   @param is_playable [Boolean] True if the chapter is playable in the given market. Otherwise false.
        #
        #   @param languages [Array<String>] A list of the languages used in the chapter, identified by their [ISO 639-1](htt
        #
        #   @param name [String] The name of the chapter.
        #
        #   @param release_date [String] The date the chapter was first released, for example `"1981-12-15"`. Depending o
        #
        #   @param release_date_precision [Symbol, Spotted::Models::ChapterListResponse::Chapter::ReleaseDatePrecision] The precision with which `release_date` value is known.
        #
        #   @param type [Symbol, Spotted::Models::ChapterListResponse::Chapter::Type] The object type.
        #
        #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the chap
        #
        #   @param available_markets [Array<String>] A list of the countries in which the chapter can be played, identified by their
        #
        #   @param restrictions [Spotted::Models::ChapterListResponse::Chapter::Restrictions] Included in the response when a content restriction is applied.
        #
        #   @param resume_point [Spotted::Models::ChapterListResponse::Chapter::ResumePoint] The user's most recent position in the chapter. Set if the supplied access token

        # @see Spotted::Models::ChapterListResponse::Chapter#audiobook
        class Audiobook < Spotted::Internal::Type::BaseModel
          # @!attribute id
          #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   audiobook.
          #
          #   @return [String]
          required :id, String

          # @!attribute authors
          #   The author(s) for the audiobook.
          #
          #   @return [Array<Spotted::Models::ChapterListResponse::Chapter::Audiobook::Author>]
          required :authors,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ChapterListResponse::Chapter::Audiobook::Author] }

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
          #   @return [Array<Spotted::Models::ChapterListResponse::Chapter::Audiobook::Copyright>]
          required :copyrights,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ChapterListResponse::Chapter::Audiobook::Copyright] }

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
          #   @return [Spotted::Models::ChapterListResponse::Chapter::Audiobook::ExternalURLs]
          required :external_urls, -> { Spotted::Models::ChapterListResponse::Chapter::Audiobook::ExternalURLs }

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
          #   @return [Array<Spotted::Models::ChapterListResponse::Chapter::Audiobook::Image>]
          required :images,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ChapterListResponse::Chapter::Audiobook::Image] }

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
          #   @return [Array<Spotted::Models::ChapterListResponse::Chapter::Audiobook::Narrator>]
          required :narrators,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ChapterListResponse::Chapter::Audiobook::Narrator] }

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
          #   @return [Symbol, Spotted::Models::ChapterListResponse::Chapter::Audiobook::Type]
          required :type, enum: -> { Spotted::Models::ChapterListResponse::Chapter::Audiobook::Type }

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

          # @!method initialize(id:, authors:, available_markets:, copyrights:, description:, explicit:, external_urls:, href:, html_description:, images:, languages:, media_type:, name:, narrators:, publisher:, total_chapters:, type:, uri:, edition: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::ChapterListResponse::Chapter::Audiobook} for more details.
          #
          #   The audiobook for which the chapter belongs.
          #
          #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the audio
          #
          #   @param authors [Array<Spotted::Models::ChapterListResponse::Chapter::Audiobook::Author>] The author(s) for the audiobook.
          #
          #   @param available_markets [Array<String>] A list of the countries in which the audiobook can be played, identified by thei
          #
          #   @param copyrights [Array<Spotted::Models::ChapterListResponse::Chapter::Audiobook::Copyright>] The copyright statements of the audiobook.
          #
          #   @param description [String] A description of the audiobook. HTML tags are stripped away from this field, use
          #
          #   @param explicit [Boolean] Whether or not the audiobook has explicit content (true = yes it does; false = n
          #
          #   @param external_urls [Spotted::Models::ChapterListResponse::Chapter::Audiobook::ExternalURLs] External URLs for this audiobook.
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the audiobook.
          #
          #   @param html_description [String] A description of the audiobook. This field may contain HTML tags.
          #
          #   @param images [Array<Spotted::Models::ChapterListResponse::Chapter::Audiobook::Image>] The cover art for the audiobook in various sizes, widest first.
          #
          #   @param languages [Array<String>] A list of the languages used in the audiobook, identified by their [ISO 639](htt
          #
          #   @param media_type [String] The media type of the audiobook.
          #
          #   @param name [String] The name of the audiobook.
          #
          #   @param narrators [Array<Spotted::Models::ChapterListResponse::Chapter::Audiobook::Narrator>] The narrator(s) for the audiobook.
          #
          #   @param publisher [String] The publisher of the audiobook.
          #
          #   @param total_chapters [Integer] The number of chapters in this audiobook.
          #
          #   @param type [Symbol, Spotted::Models::ChapterListResponse::Chapter::Audiobook::Type] The object type.
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the audi
          #
          #   @param edition [String] The edition of the audiobook.

          class Author < Spotted::Internal::Type::BaseModel
            # @!attribute name
            #   The name of the author.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::ChapterListResponse::Chapter::Audiobook::Author} for more
            #   details.
            #
            #   @param name [String] The name of the author.
          end

          class Copyright < Spotted::Internal::Type::BaseModel
            # @!attribute text
            #   The copyright text for this content.
            #
            #   @return [String, nil]
            optional :text, String

            # @!attribute type
            #   The type of copyright: `C` = the copyright, `P` = the sound recording
            #   (performance) copyright.
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(text: nil, type: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::ChapterListResponse::Chapter::Audiobook::Copyright} for more
            #   details.
            #
            #   @param text [String] The copyright text for this content.
            #
            #   @param type [String] The type of copyright: `C` = the copyright, `P` = the sound recording (performan
          end

          # @see Spotted::Models::ChapterListResponse::Chapter::Audiobook#external_urls
          class ExternalURLs < Spotted::Internal::Type::BaseModel
            # @!attribute spotify
            #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   object.
            #
            #   @return [String, nil]
            optional :spotify, String

            # @!method initialize(spotify: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::ChapterListResponse::Chapter::Audiobook::ExternalURLs} for
            #   more details.
            #
            #   External URLs for this audiobook.
            #
            #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
          end

          class Image < Spotted::Internal::Type::BaseModel
            # @!attribute height
            #   The image height in pixels.
            #
            #   @return [Integer, nil]
            required :height, Integer, nil?: true

            # @!attribute url
            #   The source URL of the image.
            #
            #   @return [String]
            required :url, String

            # @!attribute width
            #   The image width in pixels.
            #
            #   @return [Integer, nil]
            required :width, Integer, nil?: true

            # @!method initialize(height:, url:, width:)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::ChapterListResponse::Chapter::Audiobook::Image} for more
            #   details.
            #
            #   @param height [Integer, nil] The image height in pixels.
            #
            #   @param url [String] The source URL of the image.
            #
            #   @param width [Integer, nil] The image width in pixels.
          end

          class Narrator < Spotted::Internal::Type::BaseModel
            # @!attribute name
            #   The name of the Narrator.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::ChapterListResponse::Chapter::Audiobook::Narrator} for more
            #   details.
            #
            #   @param name [String] The name of the Narrator.
          end

          # The object type.
          #
          # @see Spotted::Models::ChapterListResponse::Chapter::Audiobook#type
          module Type
            extend Spotted::Internal::Type::Enum

            AUDIOBOOK = :audiobook

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Spotted::Models::ChapterListResponse::Chapter#external_urls
        class ExternalURLs < Spotted::Internal::Type::BaseModel
          # @!attribute spotify
          #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   object.
          #
          #   @return [String, nil]
          optional :spotify, String

          # @!method initialize(spotify: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::ChapterListResponse::Chapter::ExternalURLs} for more details.
          #
          #   External URLs for this chapter.
          #
          #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
        end

        class Image < Spotted::Internal::Type::BaseModel
          # @!attribute height
          #   The image height in pixels.
          #
          #   @return [Integer, nil]
          required :height, Integer, nil?: true

          # @!attribute url
          #   The source URL of the image.
          #
          #   @return [String]
          required :url, String

          # @!attribute width
          #   The image width in pixels.
          #
          #   @return [Integer, nil]
          required :width, Integer, nil?: true

          # @!method initialize(height:, url:, width:)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::ChapterListResponse::Chapter::Image} for more details.
          #
          #   @param height [Integer, nil] The image height in pixels.
          #
          #   @param url [String] The source URL of the image.
          #
          #   @param width [Integer, nil] The image width in pixels.
        end

        # The precision with which `release_date` value is known.
        #
        # @see Spotted::Models::ChapterListResponse::Chapter#release_date_precision
        module ReleaseDatePrecision
          extend Spotted::Internal::Type::Enum

          YEAR = :year
          MONTH = :month
          DAY = :day

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The object type.
        #
        # @see Spotted::Models::ChapterListResponse::Chapter#type
        module Type
          extend Spotted::Internal::Type::Enum

          EPISODE = :episode

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Spotted::Models::ChapterListResponse::Chapter#restrictions
        class Restrictions < Spotted::Internal::Type::BaseModel
          # @!attribute reason
          #   The reason for the restriction. Supported values:
          #
          #   - `market` - The content item is not available in the given market.
          #   - `product` - The content item is not available for the user's subscription
          #     type.
          #   - `explicit` - The content item is explicit and the user's account is set to not
          #     play explicit content.
          #   - `payment_required` - Payment is required to play the content item.
          #
          #   Additional reasons may be added in the future. **Note**: If you use this field,
          #   make sure that your application safely handles unknown values.
          #
          #   @return [String, nil]
          optional :reason, String

          # @!method initialize(reason: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::ChapterListResponse::Chapter::Restrictions} for more details.
          #
          #   Included in the response when a content restriction is applied.
          #
          #   @param reason [String] The reason for the restriction. Supported values:
        end

        # @see Spotted::Models::ChapterListResponse::Chapter#resume_point
        class ResumePoint < Spotted::Internal::Type::BaseModel
          # @!attribute fully_played
          #   Whether or not the episode has been fully played by the user.
          #
          #   @return [Boolean, nil]
          optional :fully_played, Spotted::Internal::Type::Boolean

          # @!attribute resume_position_ms
          #   The user's most recent position in the episode in milliseconds.
          #
          #   @return [Integer, nil]
          optional :resume_position_ms, Integer

          # @!method initialize(fully_played: nil, resume_position_ms: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::ChapterListResponse::Chapter::ResumePoint} for more details.
          #
          #   The user's most recent position in the chapter. Set if the supplied access token
          #   is a user token and has the scope 'user-read-playback-position'.
          #
          #   @param fully_played [Boolean] Whether or not the episode has been fully played by the user.
          #
          #   @param resume_position_ms [Integer] The user's most recent position in the episode in milliseconds.
        end
      end
    end
  end
end
