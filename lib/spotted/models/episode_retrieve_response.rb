# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Episodes#retrieve
    class EpisodeRetrieveResponse < Spotted::Internal::Type::BaseModel
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
      #   @return [Spotted::Models::EpisodeRetrieveResponse::ExternalURLs]
      required :external_urls, -> { Spotted::Models::EpisodeRetrieveResponse::ExternalURLs }

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
      #   @return [Array<Spotted::Models::EpisodeRetrieveResponse::Image>]
      required :images, -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::EpisodeRetrieveResponse::Image] }

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
      #   @return [Symbol, Spotted::Models::EpisodeRetrieveResponse::ReleaseDatePrecision]
      required :release_date_precision,
               enum: -> { Spotted::Models::EpisodeRetrieveResponse::ReleaseDatePrecision }

      # @!attribute show
      #   The show on which the episode belongs.
      #
      #   @return [Spotted::Models::EpisodeRetrieveResponse::Show]
      required :show, -> { Spotted::Models::EpisodeRetrieveResponse::Show }

      # @!attribute type
      #   The object type.
      #
      #   @return [Symbol, Spotted::Models::EpisodeRetrieveResponse::Type]
      required :type, enum: -> { Spotted::Models::EpisodeRetrieveResponse::Type }

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
      #   @return [Spotted::Models::EpisodeRetrieveResponse::Restrictions, nil]
      optional :restrictions, -> { Spotted::Models::EpisodeRetrieveResponse::Restrictions }

      # @!attribute resume_point
      #   The user's most recent position in the episode. Set if the supplied access token
      #   is a user token and has the scope 'user-read-playback-position'.
      #
      #   @return [Spotted::Models::EpisodeRetrieveResponse::ResumePoint, nil]
      optional :resume_point, -> { Spotted::Models::EpisodeRetrieveResponse::ResumePoint }

      # @!method initialize(id:, audio_preview_url:, description:, duration_ms:, explicit:, external_urls:, href:, html_description:, images:, is_externally_hosted:, is_playable:, languages:, name:, release_date:, release_date_precision:, show:, type:, uri:, language: nil, restrictions: nil, resume_point: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::EpisodeRetrieveResponse} for more details.
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
      #   @param external_urls [Spotted::Models::EpisodeRetrieveResponse::ExternalURLs] External URLs for this episode.
      #
      #   @param href [String] A link to the Web API endpoint providing full details of the episode.
      #
      #   @param html_description [String] A description of the episode. This field may contain HTML tags.
      #
      #   @param images [Array<Spotted::Models::EpisodeRetrieveResponse::Image>] The cover art for the episode in various sizes, widest first.
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
      #   @param release_date_precision [Symbol, Spotted::Models::EpisodeRetrieveResponse::ReleaseDatePrecision] The precision with which `release_date` value is known.
      #
      #   @param show [Spotted::Models::EpisodeRetrieveResponse::Show] The show on which the episode belongs.
      #
      #   @param type [Symbol, Spotted::Models::EpisodeRetrieveResponse::Type] The object type.
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the epis
      #
      #   @param language [String] The language used in the episode, identified by a [ISO 639](https://en.wikipedia
      #
      #   @param restrictions [Spotted::Models::EpisodeRetrieveResponse::Restrictions] Included in the response when a content restriction is applied.
      #
      #   @param resume_point [Spotted::Models::EpisodeRetrieveResponse::ResumePoint] The user's most recent position in the episode. Set if the supplied access token

      # @see Spotted::Models::EpisodeRetrieveResponse#external_urls
      class ExternalURLs < Spotted::Internal::Type::BaseModel
        # @!attribute spotify
        #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
        #   object.
        #
        #   @return [String, nil]
        optional :spotify, String

        # @!method initialize(spotify: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::EpisodeRetrieveResponse::ExternalURLs} for more details.
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
        #   {Spotted::Models::EpisodeRetrieveResponse::Image} for more details.
        #
        #   @param height [Integer, nil] The image height in pixels.
        #
        #   @param url [String] The source URL of the image.
        #
        #   @param width [Integer, nil] The image width in pixels.
      end

      # The precision with which `release_date` value is known.
      #
      # @see Spotted::Models::EpisodeRetrieveResponse#release_date_precision
      module ReleaseDatePrecision
        extend Spotted::Internal::Type::Enum

        YEAR = :year
        MONTH = :month
        DAY = :day

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Spotted::Models::EpisodeRetrieveResponse#show
      class Show < Spotted::Internal::Type::BaseModel
        # @!attribute id
        #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
        #
        #   @return [String]
        required :id, String

        # @!attribute available_markets
        #   A list of the countries in which the show can be played, identified by their
        #   [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
        #
        #   @return [Array<String>]
        required :available_markets, Spotted::Internal::Type::ArrayOf[String]

        # @!attribute copyrights
        #   The copyright statements of the show.
        #
        #   @return [Array<Spotted::Models::EpisodeRetrieveResponse::Show::Copyright>]
        required :copyrights,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::EpisodeRetrieveResponse::Show::Copyright] }

        # @!attribute description
        #   A description of the show. HTML tags are stripped away from this field, use
        #   `html_description` field in case HTML tags are needed.
        #
        #   @return [String]
        required :description, String

        # @!attribute explicit
        #   Whether or not the show has explicit content (true = yes it does; false = no it
        #   does not OR unknown).
        #
        #   @return [Boolean]
        required :explicit, Spotted::Internal::Type::Boolean

        # @!attribute external_urls
        #   External URLs for this show.
        #
        #   @return [Spotted::Models::EpisodeRetrieveResponse::Show::ExternalURLs]
        required :external_urls, -> { Spotted::Models::EpisodeRetrieveResponse::Show::ExternalURLs }

        # @!attribute href
        #   A link to the Web API endpoint providing full details of the show.
        #
        #   @return [String]
        required :href, String

        # @!attribute html_description
        #   A description of the show. This field may contain HTML tags.
        #
        #   @return [String]
        required :html_description, String

        # @!attribute images
        #   The cover art for the show in various sizes, widest first.
        #
        #   @return [Array<Spotted::Models::EpisodeRetrieveResponse::Show::Image>]
        required :images,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::EpisodeRetrieveResponse::Show::Image] }

        # @!attribute is_externally_hosted
        #   True if all of the shows episodes are hosted outside of Spotify's CDN. This
        #   field might be `null` in some cases.
        #
        #   @return [Boolean]
        required :is_externally_hosted, Spotted::Internal::Type::Boolean

        # @!attribute languages
        #   A list of the languages used in the show, identified by their
        #   [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
        #
        #   @return [Array<String>]
        required :languages, Spotted::Internal::Type::ArrayOf[String]

        # @!attribute media_type
        #   The media type of the show.
        #
        #   @return [String]
        required :media_type, String

        # @!attribute name
        #   The name of the episode.
        #
        #   @return [String]
        required :name, String

        # @!attribute publisher
        #   The publisher of the show.
        #
        #   @return [String]
        required :publisher, String

        # @!attribute total_episodes
        #   The total number of episodes in the show.
        #
        #   @return [Integer]
        required :total_episodes, Integer

        # @!attribute type
        #   The object type.
        #
        #   @return [Symbol, Spotted::Models::EpisodeRetrieveResponse::Show::Type]
        required :type, enum: -> { Spotted::Models::EpisodeRetrieveResponse::Show::Type }

        # @!attribute uri
        #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        #   show.
        #
        #   @return [String]
        required :uri, String

        # @!method initialize(id:, available_markets:, copyrights:, description:, explicit:, external_urls:, href:, html_description:, images:, is_externally_hosted:, languages:, media_type:, name:, publisher:, total_episodes:, type:, uri:)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::EpisodeRetrieveResponse::Show} for more details.
        #
        #   The show on which the episode belongs.
        #
        #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
        #
        #   @param available_markets [Array<String>] A list of the countries in which the show can be played, identified by their [IS
        #
        #   @param copyrights [Array<Spotted::Models::EpisodeRetrieveResponse::Show::Copyright>] The copyright statements of the show.
        #
        #   @param description [String] A description of the show. HTML tags are stripped away from this field, use `htm
        #
        #   @param explicit [Boolean] Whether or not the show has explicit content (true = yes it does; false = no it
        #
        #   @param external_urls [Spotted::Models::EpisodeRetrieveResponse::Show::ExternalURLs] External URLs for this show.
        #
        #   @param href [String] A link to the Web API endpoint providing full details of the show.
        #
        #   @param html_description [String] A description of the show. This field may contain HTML tags.
        #
        #   @param images [Array<Spotted::Models::EpisodeRetrieveResponse::Show::Image>] The cover art for the show in various sizes, widest first.
        #
        #   @param is_externally_hosted [Boolean] True if all of the shows episodes are hosted outside of Spotify's CDN. This fiel
        #
        #   @param languages [Array<String>] A list of the languages used in the show, identified by their [ISO 639](https://
        #
        #   @param media_type [String] The media type of the show.
        #
        #   @param name [String] The name of the episode.
        #
        #   @param publisher [String] The publisher of the show.
        #
        #   @param total_episodes [Integer] The total number of episodes in the show.
        #
        #   @param type [Symbol, Spotted::Models::EpisodeRetrieveResponse::Show::Type] The object type.
        #
        #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the show

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
          #   {Spotted::Models::EpisodeRetrieveResponse::Show::Copyright} for more details.
          #
          #   @param text [String] The copyright text for this content.
          #
          #   @param type [String] The type of copyright: `C` = the copyright, `P` = the sound recording (performan
        end

        # @see Spotted::Models::EpisodeRetrieveResponse::Show#external_urls
        class ExternalURLs < Spotted::Internal::Type::BaseModel
          # @!attribute spotify
          #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   object.
          #
          #   @return [String, nil]
          optional :spotify, String

          # @!method initialize(spotify: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::EpisodeRetrieveResponse::Show::ExternalURLs} for more details.
          #
          #   External URLs for this show.
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
          #   {Spotted::Models::EpisodeRetrieveResponse::Show::Image} for more details.
          #
          #   @param height [Integer, nil] The image height in pixels.
          #
          #   @param url [String] The source URL of the image.
          #
          #   @param width [Integer, nil] The image width in pixels.
        end

        # The object type.
        #
        # @see Spotted::Models::EpisodeRetrieveResponse::Show#type
        module Type
          extend Spotted::Internal::Type::Enum

          SHOW = :show

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The object type.
      #
      # @see Spotted::Models::EpisodeRetrieveResponse#type
      module Type
        extend Spotted::Internal::Type::Enum

        EPISODE = :episode

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Spotted::Models::EpisodeRetrieveResponse#restrictions
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
        #   {Spotted::Models::EpisodeRetrieveResponse::Restrictions} for more details.
        #
        #   Included in the response when a content restriction is applied.
        #
        #   @param reason [String] The reason for the restriction. Supported values:
      end

      # @see Spotted::Models::EpisodeRetrieveResponse#resume_point
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
        #   {Spotted::Models::EpisodeRetrieveResponse::ResumePoint} for more details.
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
