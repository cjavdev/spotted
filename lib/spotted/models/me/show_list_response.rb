# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Shows#list
      class ShowListResponse < Spotted::Internal::Type::BaseModel
        # @!attribute added_at
        #   The date and time the show was saved. Timestamps are returned in ISO 8601 format
        #   as Coordinated Universal Time (UTC) with a zero offset: YYYY-MM-DDTHH:MM:SSZ. If
        #   the time is imprecise (for example, the date/time of an album release), an
        #   additional field indicates the precision; see for example, release_date in an
        #   album object.
        #
        #   @return [Time, nil]
        optional :added_at, Time

        # @!attribute show
        #   Information about the show.
        #
        #   @return [Spotted::Models::Me::ShowListResponse::Show, nil]
        optional :show, -> { Spotted::Models::Me::ShowListResponse::Show }

        # @!method initialize(added_at: nil, show: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::ShowListResponse} for more details.
        #
        #   @param added_at [Time] The date and time the show was saved.
        #
        #   @param show [Spotted::Models::Me::ShowListResponse::Show] Information about the show.

        # @see Spotted::Models::Me::ShowListResponse#show
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
          #   @return [Array<Spotted::Models::CopyrightObject>]
          required :copyrights, -> { Spotted::Internal::Type::ArrayOf[Spotted::CopyrightObject] }

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
          #   @return [Spotted::Models::ExternalURLObject]
          required :external_urls, -> { Spotted::ExternalURLObject }

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
          #   @return [Array<Spotted::Models::ImageObject>]
          required :images, -> { Spotted::Internal::Type::ArrayOf[Spotted::ImageObject] }

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
          #   @return [Symbol, Spotted::Models::Me::ShowListResponse::Show::Type]
          required :type, enum: -> { Spotted::Models::Me::ShowListResponse::Show::Type }

          # @!attribute uri
          #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   show.
          #
          #   @return [String]
          required :uri, String

          # @!method initialize(id:, available_markets:, copyrights:, description:, explicit:, external_urls:, href:, html_description:, images:, is_externally_hosted:, languages:, media_type:, name:, publisher:, total_episodes:, type:, uri:)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Me::ShowListResponse::Show} for more details.
          #
          #   Information about the show.
          #
          #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
          #
          #   @param available_markets [Array<String>] A list of the countries in which the show can be played, identified by their [IS
          #
          #   @param copyrights [Array<Spotted::Models::CopyrightObject>] The copyright statements of the show.
          #
          #   @param description [String] A description of the show. HTML tags are stripped away from this field, use `htm
          #
          #   @param explicit [Boolean] Whether or not the show has explicit content (true = yes it does; false = no it
          #
          #   @param external_urls [Spotted::Models::ExternalURLObject] External URLs for this show.
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the show.
          #
          #   @param html_description [String] A description of the show. This field may contain HTML tags.
          #
          #   @param images [Array<Spotted::Models::ImageObject>] The cover art for the show in various sizes, widest first.
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
          #   @param type [Symbol, Spotted::Models::Me::ShowListResponse::Show::Type] The object type.
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the show

          # The object type.
          #
          # @see Spotted::Models::Me::ShowListResponse::Show#type
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
end
