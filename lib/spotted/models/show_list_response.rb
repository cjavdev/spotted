# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Shows#list
    class ShowListResponse < Spotted::Internal::Type::BaseModel
      # @!attribute shows
      #
      #   @return [Array<Spotted::Models::ShowListResponse::Show>]
      required :shows, -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ShowListResponse::Show] }

      # @!method initialize(shows:)
      #   @param shows [Array<Spotted::Models::ShowListResponse::Show>]

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
        #   @return [Array<Spotted::Models::ShowListResponse::Show::Copyright>]
        required :copyrights,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ShowListResponse::Show::Copyright] }

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
        #   @return [Spotted::Models::ShowListResponse::Show::ExternalURLs]
        required :external_urls, -> { Spotted::Models::ShowListResponse::Show::ExternalURLs }

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
        #   @return [Array<Spotted::Models::ShowListResponse::Show::Image>]
        required :images, -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ShowListResponse::Show::Image] }

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
        #   @return [Symbol, Spotted::Models::ShowListResponse::Show::Type]
        required :type, enum: -> { Spotted::Models::ShowListResponse::Show::Type }

        # @!attribute uri
        #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        #   show.
        #
        #   @return [String]
        required :uri, String

        # @!method initialize(id:, available_markets:, copyrights:, description:, explicit:, external_urls:, href:, html_description:, images:, is_externally_hosted:, languages:, media_type:, name:, publisher:, total_episodes:, type:, uri:)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::ShowListResponse::Show} for more details.
        #
        #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
        #
        #   @param available_markets [Array<String>] A list of the countries in which the show can be played, identified by their [IS
        #
        #   @param copyrights [Array<Spotted::Models::ShowListResponse::Show::Copyright>] The copyright statements of the show.
        #
        #   @param description [String] A description of the show. HTML tags are stripped away from this field, use `htm
        #
        #   @param explicit [Boolean] Whether or not the show has explicit content (true = yes it does; false = no it
        #
        #   @param external_urls [Spotted::Models::ShowListResponse::Show::ExternalURLs] External URLs for this show.
        #
        #   @param href [String] A link to the Web API endpoint providing full details of the show.
        #
        #   @param html_description [String] A description of the show. This field may contain HTML tags.
        #
        #   @param images [Array<Spotted::Models::ShowListResponse::Show::Image>] The cover art for the show in various sizes, widest first.
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
        #   @param type [Symbol, Spotted::Models::ShowListResponse::Show::Type] The object type.
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
          #   {Spotted::Models::ShowListResponse::Show::Copyright} for more details.
          #
          #   @param text [String] The copyright text for this content.
          #
          #   @param type [String] The type of copyright: `C` = the copyright, `P` = the sound recording (performan
        end

        # @see Spotted::Models::ShowListResponse::Show#external_urls
        class ExternalURLs < Spotted::Internal::Type::BaseModel
          # @!attribute spotify
          #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   object.
          #
          #   @return [String, nil]
          optional :spotify, String

          # @!method initialize(spotify: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::ShowListResponse::Show::ExternalURLs} for more details.
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
          #   {Spotted::Models::ShowListResponse::Show::Image} for more details.
          #
          #   @param height [Integer, nil] The image height in pixels.
          #
          #   @param url [String] The source URL of the image.
          #
          #   @param width [Integer, nil] The image width in pixels.
        end

        # The object type.
        #
        # @see Spotted::Models::ShowListResponse::Show#type
        module Type
          extend Spotted::Internal::Type::Enum

          SHOW = :show

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
