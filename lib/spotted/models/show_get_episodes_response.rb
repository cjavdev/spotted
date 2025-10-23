# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Shows#get_episodes
    class ShowGetEpisodesResponse < Spotted::Internal::Type::BaseModel
      # @!attribute href
      #   A link to the Web API endpoint returning the full result of the request
      #
      #   @return [String]
      required :href, String

      # @!attribute items
      #
      #   @return [Array<Spotted::Models::ShowGetEpisodesResponse::Item>]
      required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ShowGetEpisodesResponse::Item] }

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
      #   {Spotted::Models::ShowGetEpisodesResponse} for more details.
      #
      #   @param href [String] A link to the Web API endpoint returning the full result of the request
      #
      #   @param items [Array<Spotted::Models::ShowGetEpisodesResponse::Item>]
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
        #   @return [Spotted::Models::ShowGetEpisodesResponse::Item::ExternalURLs]
        required :external_urls, -> { Spotted::Models::ShowGetEpisodesResponse::Item::ExternalURLs }

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
        #   @return [Array<Spotted::Models::ShowGetEpisodesResponse::Item::Image>]
        required :images,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ShowGetEpisodesResponse::Item::Image] }

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
        #   @return [Symbol, Spotted::Models::ShowGetEpisodesResponse::Item::ReleaseDatePrecision]
        required :release_date_precision,
                 enum: -> { Spotted::Models::ShowGetEpisodesResponse::Item::ReleaseDatePrecision }

        # @!attribute type
        #   The object type.
        #
        #   @return [Symbol, Spotted::Models::ShowGetEpisodesResponse::Item::Type]
        required :type, enum: -> { Spotted::Models::ShowGetEpisodesResponse::Item::Type }

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

        # @!attribute restrictions
        #   Included in the response when a content restriction is applied.
        #
        #   @return [Spotted::Models::ShowGetEpisodesResponse::Item::Restrictions, nil]
        optional :restrictions, -> { Spotted::Models::ShowGetEpisodesResponse::Item::Restrictions }

        # @!attribute resume_point
        #   The user's most recent position in the episode. Set if the supplied access token
        #   is a user token and has the scope 'user-read-playback-position'.
        #
        #   @return [Spotted::Models::ShowGetEpisodesResponse::Item::ResumePoint, nil]
        optional :resume_point, -> { Spotted::Models::ShowGetEpisodesResponse::Item::ResumePoint }

        # @!method initialize(id:, audio_preview_url:, description:, duration_ms:, explicit:, external_urls:, href:, html_description:, images:, is_externally_hosted:, is_playable:, languages:, name:, release_date:, release_date_precision:, type:, uri:, language: nil, restrictions: nil, resume_point: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::ShowGetEpisodesResponse::Item} for more details.
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
        #   @param external_urls [Spotted::Models::ShowGetEpisodesResponse::Item::ExternalURLs] External URLs for this episode.
        #
        #   @param href [String] A link to the Web API endpoint providing full details of the episode.
        #
        #   @param html_description [String] A description of the episode. This field may contain HTML tags.
        #
        #   @param images [Array<Spotted::Models::ShowGetEpisodesResponse::Item::Image>] The cover art for the episode in various sizes, widest first.
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
        #   @param release_date_precision [Symbol, Spotted::Models::ShowGetEpisodesResponse::Item::ReleaseDatePrecision] The precision with which `release_date` value is known.
        #
        #   @param type [Symbol, Spotted::Models::ShowGetEpisodesResponse::Item::Type] The object type.
        #
        #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the epis
        #
        #   @param language [String] The language used in the episode, identified by a [ISO 639](https://en.wikipedia
        #
        #   @param restrictions [Spotted::Models::ShowGetEpisodesResponse::Item::Restrictions] Included in the response when a content restriction is applied.
        #
        #   @param resume_point [Spotted::Models::ShowGetEpisodesResponse::Item::ResumePoint] The user's most recent position in the episode. Set if the supplied access token

        # @see Spotted::Models::ShowGetEpisodesResponse::Item#external_urls
        class ExternalURLs < Spotted::Internal::Type::BaseModel
          # @!attribute spotify
          #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   object.
          #
          #   @return [String, nil]
          optional :spotify, String

          # @!method initialize(spotify: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::ShowGetEpisodesResponse::Item::ExternalURLs} for more details.
          #
          #   External URLs for this episode.
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
          #   {Spotted::Models::ShowGetEpisodesResponse::Item::Image} for more details.
          #
          #   @param height [Integer, nil] The image height in pixels.
          #
          #   @param url [String] The source URL of the image.
          #
          #   @param width [Integer, nil] The image width in pixels.
        end

        # The precision with which `release_date` value is known.
        #
        # @see Spotted::Models::ShowGetEpisodesResponse::Item#release_date_precision
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
        # @see Spotted::Models::ShowGetEpisodesResponse::Item#type
        module Type
          extend Spotted::Internal::Type::Enum

          EPISODE = :episode

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Spotted::Models::ShowGetEpisodesResponse::Item#restrictions
        class Restrictions < Spotted::Internal::Type::BaseModel
          # @!attribute reason
          #   The reason for the restriction. Supported values:
          #
          #   - `market` - The content item is not available in the given market.
          #   - `product` - The content item is not available for the user's subscription
          #     type.
          #   - `explicit` - The content item is explicit and the user's account is set to not
          #     play explicit content.
          #
          #   Additional reasons may be added in the future. **Note**: If you use this field,
          #   make sure that your application safely handles unknown values.
          #
          #   @return [String, nil]
          optional :reason, String

          # @!method initialize(reason: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::ShowGetEpisodesResponse::Item::Restrictions} for more details.
          #
          #   Included in the response when a content restriction is applied.
          #
          #   @param reason [String] The reason for the restriction. Supported values:
        end

        # @see Spotted::Models::ShowGetEpisodesResponse::Item#resume_point
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
          #   {Spotted::Models::ShowGetEpisodesResponse::Item::ResumePoint} for more details.
          #
          #   The user's most recent position in the episode. Set if the supplied access token
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
