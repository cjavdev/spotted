# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Audiobooks#retrieve_chapters
    class AudiobookRetrieveChaptersResponse < Spotted::Internal::Type::BaseModel
      # @!attribute href
      #   A link to the Web API endpoint returning the full result of the request
      #
      #   @return [String]
      required :href, String

      # @!attribute items
      #
      #   @return [Array<Spotted::Models::AudiobookRetrieveChaptersResponse::Item>]
      required :items,
               -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::AudiobookRetrieveChaptersResponse::Item] }

      # @!attribute limit
      #   The maximum number of items in the response (as set in the query or by default).
      #
      #   @return [Integer]
      required :limit, Integer

      # @!attribute next_
      #   URL to the next page of items. ( `null` if none)
      #
      #   @return [String, nil]
      required :next_, String, api_name: :next, nil?: true

      # @!attribute offset
      #   The offset of the items returned (as set in the query or by default)
      #
      #   @return [Integer]
      required :offset, Integer

      # @!attribute previous
      #   URL to the previous page of items. ( `null` if none)
      #
      #   @return [String, nil]
      required :previous, String, nil?: true

      # @!attribute total
      #   The total number of items available to return.
      #
      #   @return [Integer]
      required :total, Integer

      # @!method initialize(href:, items:, limit:, next_:, offset:, previous:, total:)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::AudiobookRetrieveChaptersResponse} for more details.
      #
      #   @param href [String] A link to the Web API endpoint returning the full result of the request
      #
      #   @param items [Array<Spotted::Models::AudiobookRetrieveChaptersResponse::Item>]
      #
      #   @param limit [Integer] The maximum number of items in the response (as set in the query or by default).
      #
      #   @param next_ [String, nil] URL to the next page of items. ( `null` if none)
      #
      #   @param offset [Integer] The offset of the items returned (as set in the query or by default)
      #
      #   @param previous [String, nil] URL to the previous page of items. ( `null` if none)
      #
      #   @param total [Integer] The total number of items available to return.

      class Item < Spotted::Internal::Type::BaseModel
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
        #   @return [Spotted::Models::AudiobookRetrieveChaptersResponse::Item::ExternalURLs]
        required :external_urls, -> { Spotted::Models::AudiobookRetrieveChaptersResponse::Item::ExternalURLs }

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
        #   @return [Array<Spotted::Models::AudiobookRetrieveChaptersResponse::Item::Image>]
        required :images,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::AudiobookRetrieveChaptersResponse::Item::Image] }

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
        #   @return [Symbol, Spotted::Models::AudiobookRetrieveChaptersResponse::Item::ReleaseDatePrecision]
        required :release_date_precision,
                 enum: -> { Spotted::Models::AudiobookRetrieveChaptersResponse::Item::ReleaseDatePrecision }

        # @!attribute type
        #   The object type.
        #
        #   @return [Symbol, Spotted::Models::AudiobookRetrieveChaptersResponse::Item::Type]
        required :type, enum: -> { Spotted::Models::AudiobookRetrieveChaptersResponse::Item::Type }

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
        #   @return [Spotted::Models::AudiobookRetrieveChaptersResponse::Item::Restrictions, nil]
        optional :restrictions, -> { Spotted::Models::AudiobookRetrieveChaptersResponse::Item::Restrictions }

        # @!attribute resume_point
        #   The user's most recent position in the chapter. Set if the supplied access token
        #   is a user token and has the scope 'user-read-playback-position'.
        #
        #   @return [Spotted::Models::AudiobookRetrieveChaptersResponse::Item::ResumePoint, nil]
        optional :resume_point, -> { Spotted::Models::AudiobookRetrieveChaptersResponse::Item::ResumePoint }

        # @!method initialize(id:, audio_preview_url:, chapter_number:, description:, duration_ms:, explicit:, external_urls:, href:, html_description:, images:, is_playable:, languages:, name:, release_date:, release_date_precision:, type:, uri:, available_markets: nil, restrictions: nil, resume_point: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::AudiobookRetrieveChaptersResponse::Item} for more details.
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
        #   @param external_urls [Spotted::Models::AudiobookRetrieveChaptersResponse::Item::ExternalURLs] External URLs for this chapter.
        #
        #   @param href [String] A link to the Web API endpoint providing full details of the chapter.
        #
        #   @param html_description [String] A description of the chapter. This field may contain HTML tags.
        #
        #   @param images [Array<Spotted::Models::AudiobookRetrieveChaptersResponse::Item::Image>] The cover art for the chapter in various sizes, widest first.
        #
        #   @param is_playable [Boolean] True if the chapter is playable in the given market. Otherwise false.
        #
        #   @param languages [Array<String>] A list of the languages used in the chapter, identified by their [ISO 639-1](htt
        #
        #   @param name [String] The name of the chapter.
        #
        #   @param release_date [String] The date the chapter was first released, for example `"1981-12-15"`. Depending o
        #
        #   @param release_date_precision [Symbol, Spotted::Models::AudiobookRetrieveChaptersResponse::Item::ReleaseDatePrecision] The precision with which `release_date` value is known.
        #
        #   @param type [Symbol, Spotted::Models::AudiobookRetrieveChaptersResponse::Item::Type] The object type.
        #
        #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the chap
        #
        #   @param available_markets [Array<String>] A list of the countries in which the chapter can be played, identified by their
        #
        #   @param restrictions [Spotted::Models::AudiobookRetrieveChaptersResponse::Item::Restrictions] Included in the response when a content restriction is applied.
        #
        #   @param resume_point [Spotted::Models::AudiobookRetrieveChaptersResponse::Item::ResumePoint] The user's most recent position in the chapter. Set if the supplied access token

        # @see Spotted::Models::AudiobookRetrieveChaptersResponse::Item#external_urls
        class ExternalURLs < Spotted::Internal::Type::BaseModel
          # @!attribute spotify
          #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   object.
          #
          #   @return [String, nil]
          optional :spotify, String

          # @!method initialize(spotify: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::AudiobookRetrieveChaptersResponse::Item::ExternalURLs} for
          #   more details.
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
          #   {Spotted::Models::AudiobookRetrieveChaptersResponse::Item::Image} for more
          #   details.
          #
          #   @param height [Integer, nil] The image height in pixels.
          #
          #   @param url [String] The source URL of the image.
          #
          #   @param width [Integer, nil] The image width in pixels.
        end

        # The precision with which `release_date` value is known.
        #
        # @see Spotted::Models::AudiobookRetrieveChaptersResponse::Item#release_date_precision
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
        # @see Spotted::Models::AudiobookRetrieveChaptersResponse::Item#type
        module Type
          extend Spotted::Internal::Type::Enum

          EPISODE = :episode

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Spotted::Models::AudiobookRetrieveChaptersResponse::Item#restrictions
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
          #   {Spotted::Models::AudiobookRetrieveChaptersResponse::Item::Restrictions} for
          #   more details.
          #
          #   Included in the response when a content restriction is applied.
          #
          #   @param reason [String] The reason for the restriction. Supported values:
        end

        # @see Spotted::Models::AudiobookRetrieveChaptersResponse::Item#resume_point
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
          #   {Spotted::Models::AudiobookRetrieveChaptersResponse::Item::ResumePoint} for more
          #   details.
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
