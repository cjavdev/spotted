# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Audiobooks#list
      class AudiobookListResponse < Spotted::Internal::Type::BaseModel
        # @!attribute added_at
        #   The date and time the audiobook was saved Timestamps are returned in ISO 8601
        #   format as Coordinated Universal Time (UTC) with a zero offset:
        #   YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example, the date/time of an
        #   album release), an additional field indicates the precision; see for example,
        #   release_date in an album object.
        #
        #   @return [Time, nil]
        optional :added_at, Time

        # @!attribute audiobook
        #   Information about the audiobook.
        #
        #   @return [Spotted::Models::Me::AudiobookListResponse::Audiobook, nil]
        optional :audiobook, -> { Spotted::Models::Me::AudiobookListResponse::Audiobook }

        # @!method initialize(added_at: nil, audiobook: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::AudiobookListResponse} for more details.
        #
        #   @param added_at [Time] The date and time the audiobook was saved
        #
        #   @param audiobook [Spotted::Models::Me::AudiobookListResponse::Audiobook] Information about the audiobook.

        # @see Spotted::Models::Me::AudiobookListResponse#audiobook
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
          #   @return [Array<Spotted::Models::AuthorObject>]
          required :authors, -> { Spotted::Internal::Type::ArrayOf[Spotted::AuthorObject] }

          # @!attribute available_markets
          #   A list of the countries in which the audiobook can be played, identified by
          #   their [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
          #   code.
          #
          #   @return [Array<String>]
          required :available_markets, Spotted::Internal::Type::ArrayOf[String]

          # @!attribute chapters
          #   The chapters of the audiobook.
          #
          #   @return [Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters]
          required :chapters, -> { Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters }

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
          #   @return [Symbol, Spotted::Models::Me::AudiobookListResponse::Audiobook::Type]
          required :type, enum: -> { Spotted::Models::Me::AudiobookListResponse::Audiobook::Type }

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

          # @!method initialize(id:, authors:, available_markets:, chapters:, copyrights:, description:, explicit:, external_urls:, href:, html_description:, images:, languages:, media_type:, name:, narrators:, publisher:, total_chapters:, type:, uri:, edition: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Me::AudiobookListResponse::Audiobook} for more details.
          #
          #   Information about the audiobook.
          #
          #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the audio
          #
          #   @param authors [Array<Spotted::Models::AuthorObject>] The author(s) for the audiobook.
          #
          #   @param available_markets [Array<String>] A list of the countries in which the audiobook can be played, identified by thei
          #
          #   @param chapters [Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters] The chapters of the audiobook.
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
          #   @param type [Symbol, Spotted::Models::Me::AudiobookListResponse::Audiobook::Type] The object type.
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the audi
          #
          #   @param edition [String] The edition of the audiobook.

          # @see Spotted::Models::Me::AudiobookListResponse::Audiobook#chapters
          class Chapters < Spotted::Internal::Type::BaseModel
            # @!attribute href
            #   A link to the Web API endpoint returning the full result of the request
            #
            #   @return [String]
            required :href, String

            # @!attribute items
            #
            #   @return [Array<Spotted::Models::SimplifiedChapterObject>]
            required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedChapterObject] }

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
            #   {Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters} for more
            #   details.
            #
            #   The chapters of the audiobook.
            #
            #   @param href [String] A link to the Web API endpoint returning the full result of the request
            #
            #   @param items [Array<Spotted::Models::SimplifiedChapterObject>]
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
          end

          # The object type.
          #
          # @see Spotted::Models::Me::AudiobookListResponse::Audiobook#type
          module Type
            extend Spotted::Internal::Type::Enum

            AUDIOBOOK = :audiobook

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
