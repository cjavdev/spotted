# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Search#retrieve
    class SearchRetrieveResponse < Spotted::Internal::Type::BaseModel
      # @!attribute albums
      #
      #   @return [Spotted::Models::SearchRetrieveResponse::Albums, nil]
      optional :albums, -> { Spotted::Models::SearchRetrieveResponse::Albums }

      # @!attribute artists
      #
      #   @return [Spotted::Models::SearchRetrieveResponse::Artists, nil]
      optional :artists, -> { Spotted::Models::SearchRetrieveResponse::Artists }

      # @!attribute audiobooks
      #
      #   @return [Spotted::Models::SearchRetrieveResponse::Audiobooks, nil]
      optional :audiobooks, -> { Spotted::Models::SearchRetrieveResponse::Audiobooks }

      # @!attribute episodes
      #
      #   @return [Spotted::Models::SearchRetrieveResponse::Episodes, nil]
      optional :episodes, -> { Spotted::Models::SearchRetrieveResponse::Episodes }

      # @!attribute playlists
      #
      #   @return [Spotted::Models::PagingPlaylistObject, nil]
      optional :playlists, -> { Spotted::PagingPlaylistObject }

      # @!attribute shows
      #
      #   @return [Spotted::Models::SearchRetrieveResponse::Shows, nil]
      optional :shows, -> { Spotted::Models::SearchRetrieveResponse::Shows }

      # @!attribute tracks
      #
      #   @return [Spotted::Models::SearchRetrieveResponse::Tracks, nil]
      optional :tracks, -> { Spotted::Models::SearchRetrieveResponse::Tracks }

      # @!method initialize(albums: nil, artists: nil, audiobooks: nil, episodes: nil, playlists: nil, shows: nil, tracks: nil)
      #   @param albums [Spotted::Models::SearchRetrieveResponse::Albums]
      #   @param artists [Spotted::Models::SearchRetrieveResponse::Artists]
      #   @param audiobooks [Spotted::Models::SearchRetrieveResponse::Audiobooks]
      #   @param episodes [Spotted::Models::SearchRetrieveResponse::Episodes]
      #   @param playlists [Spotted::Models::PagingPlaylistObject]
      #   @param shows [Spotted::Models::SearchRetrieveResponse::Shows]
      #   @param tracks [Spotted::Models::SearchRetrieveResponse::Tracks]

      # @see Spotted::Models::SearchRetrieveResponse#albums
      class Albums < Spotted::Internal::Type::BaseModel
        # @!attribute href
        #   A link to the Web API endpoint returning the full result of the request
        #
        #   @return [String]
        required :href, String

        # @!attribute items
        #
        #   @return [Array<Spotted::Models::SearchRetrieveResponse::Albums::Item>]
        required :items,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Albums::Item] }

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
        #   {Spotted::Models::SearchRetrieveResponse::Albums} for more details.
        #
        #   @param href [String] A link to the Web API endpoint returning the full result of the request
        #
        #   @param items [Array<Spotted::Models::SearchRetrieveResponse::Albums::Item>]
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
          #   album.
          #
          #   @return [String]
          required :id, String

          # @!attribute album_type
          #   The type of the album.
          #
          #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Albums::Item::AlbumType]
          required :album_type, enum: -> { Spotted::Models::SearchRetrieveResponse::Albums::Item::AlbumType }

          # @!attribute artists
          #   The artists of the album. Each artist object includes a link in `href` to more
          #   detailed information about the artist.
          #
          #   @return [Array<Spotted::Models::SimplifiedArtistObject>]
          required :artists, -> { Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedArtistObject] }

          # @!attribute available_markets
          #   The markets in which the album is available:
          #   [ISO 3166-1 alpha-2 country codes](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
          #   _**NOTE**: an album is considered available in a market when at least 1 of its
          #   tracks is available in that market._
          #
          #   @return [Array<String>]
          required :available_markets, Spotted::Internal::Type::ArrayOf[String]

          # @!attribute external_urls
          #   Known external URLs for this album.
          #
          #   @return [Spotted::Models::ExternalURLObject]
          required :external_urls, -> { Spotted::ExternalURLObject }

          # @!attribute href
          #   A link to the Web API endpoint providing full details of the album.
          #
          #   @return [String]
          required :href, String

          # @!attribute images
          #   The cover art for the album in various sizes, widest first.
          #
          #   @return [Array<Spotted::Models::ImageObject>]
          required :images, -> { Spotted::Internal::Type::ArrayOf[Spotted::ImageObject] }

          # @!attribute name
          #   The name of the album. In case of an album takedown, the value may be an empty
          #   string.
          #
          #   @return [String]
          required :name, String

          # @!attribute release_date
          #   The date the album was first released.
          #
          #   @return [String]
          required :release_date, String

          # @!attribute release_date_precision
          #   The precision with which `release_date` value is known.
          #
          #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Albums::Item::ReleaseDatePrecision]
          required :release_date_precision,
                   enum: -> { Spotted::Models::SearchRetrieveResponse::Albums::Item::ReleaseDatePrecision }

          # @!attribute total_tracks
          #   The number of tracks in the album.
          #
          #   @return [Integer]
          required :total_tracks, Integer

          # @!attribute type
          #   The object type.
          #
          #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Albums::Item::Type]
          required :type, enum: -> { Spotted::Models::SearchRetrieveResponse::Albums::Item::Type }

          # @!attribute uri
          #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   album.
          #
          #   @return [String]
          required :uri, String

          # @!attribute restrictions
          #   Included in the response when a content restriction is applied.
          #
          #   @return [Spotted::Models::AlbumRestrictionObject, nil]
          optional :restrictions, -> { Spotted::AlbumRestrictionObject }

          # @!method initialize(id:, album_type:, artists:, available_markets:, external_urls:, href:, images:, name:, release_date:, release_date_precision:, total_tracks:, type:, uri:, restrictions: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::SearchRetrieveResponse::Albums::Item} for more details.
          #
          #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the album
          #
          #   @param album_type [Symbol, Spotted::Models::SearchRetrieveResponse::Albums::Item::AlbumType] The type of the album.
          #
          #   @param artists [Array<Spotted::Models::SimplifiedArtistObject>] The artists of the album. Each artist object includes a link in `href` to more d
          #
          #   @param available_markets [Array<String>] The markets in which the album is available: [ISO 3166-1 alpha-2 country codes](
          #
          #   @param external_urls [Spotted::Models::ExternalURLObject] Known external URLs for this album.
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the album.
          #
          #   @param images [Array<Spotted::Models::ImageObject>] The cover art for the album in various sizes, widest first.
          #
          #   @param name [String] The name of the album. In case of an album takedown, the value may be an empty s
          #
          #   @param release_date [String] The date the album was first released.
          #
          #   @param release_date_precision [Symbol, Spotted::Models::SearchRetrieveResponse::Albums::Item::ReleaseDatePrecision] The precision with which `release_date` value is known.
          #
          #   @param total_tracks [Integer] The number of tracks in the album.
          #
          #   @param type [Symbol, Spotted::Models::SearchRetrieveResponse::Albums::Item::Type] The object type.
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the albu
          #
          #   @param restrictions [Spotted::Models::AlbumRestrictionObject] Included in the response when a content restriction is applied.

          # The type of the album.
          #
          # @see Spotted::Models::SearchRetrieveResponse::Albums::Item#album_type
          module AlbumType
            extend Spotted::Internal::Type::Enum

            ALBUM = :album
            SINGLE = :single
            COMPILATION = :compilation

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The precision with which `release_date` value is known.
          #
          # @see Spotted::Models::SearchRetrieveResponse::Albums::Item#release_date_precision
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
          # @see Spotted::Models::SearchRetrieveResponse::Albums::Item#type
          module Type
            extend Spotted::Internal::Type::Enum

            ALBUM = :album

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @see Spotted::Models::SearchRetrieveResponse#artists
      class Artists < Spotted::Internal::Type::BaseModel
        # @!attribute href
        #   A link to the Web API endpoint returning the full result of the request
        #
        #   @return [String]
        required :href, String

        # @!attribute items
        #
        #   @return [Array<Spotted::Models::ArtistObject>]
        required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::ArtistObject] }

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
        #   {Spotted::Models::SearchRetrieveResponse::Artists} for more details.
        #
        #   @param href [String] A link to the Web API endpoint returning the full result of the request
        #
        #   @param items [Array<Spotted::Models::ArtistObject>]
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

      # @see Spotted::Models::SearchRetrieveResponse#audiobooks
      class Audiobooks < Spotted::Internal::Type::BaseModel
        # @!attribute href
        #   A link to the Web API endpoint returning the full result of the request
        #
        #   @return [String]
        required :href, String

        # @!attribute items
        #
        #   @return [Array<Spotted::Models::SearchRetrieveResponse::Audiobooks::Item>]
        required :items,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Audiobooks::Item] }

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
        #   {Spotted::Models::SearchRetrieveResponse::Audiobooks} for more details.
        #
        #   @param href [String] A link to the Web API endpoint returning the full result of the request
        #
        #   @param items [Array<Spotted::Models::SearchRetrieveResponse::Audiobooks::Item>]
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
          #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Type]
          required :type, enum: -> { Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Type }

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
          #   {Spotted::Models::SearchRetrieveResponse::Audiobooks::Item} for more details.
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
          #   @param type [Symbol, Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Type] The object type.
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the audi
          #
          #   @param edition [String] The edition of the audiobook.

          # The object type.
          #
          # @see Spotted::Models::SearchRetrieveResponse::Audiobooks::Item#type
          module Type
            extend Spotted::Internal::Type::Enum

            AUDIOBOOK = :audiobook

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @see Spotted::Models::SearchRetrieveResponse#episodes
      class Episodes < Spotted::Internal::Type::BaseModel
        # @!attribute href
        #   A link to the Web API endpoint returning the full result of the request
        #
        #   @return [String]
        required :href, String

        # @!attribute items
        #
        #   @return [Array<Spotted::Models::SimplifiedEpisodeObject>]
        required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedEpisodeObject] }

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
        #   {Spotted::Models::SearchRetrieveResponse::Episodes} for more details.
        #
        #   @param href [String] A link to the Web API endpoint returning the full result of the request
        #
        #   @param items [Array<Spotted::Models::SimplifiedEpisodeObject>]
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

      # @see Spotted::Models::SearchRetrieveResponse#shows
      class Shows < Spotted::Internal::Type::BaseModel
        # @!attribute href
        #   A link to the Web API endpoint returning the full result of the request
        #
        #   @return [String]
        required :href, String

        # @!attribute items
        #
        #   @return [Array<Spotted::Models::SearchRetrieveResponse::Shows::Item>]
        required :items,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Shows::Item] }

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
        #   {Spotted::Models::SearchRetrieveResponse::Shows} for more details.
        #
        #   @param href [String] A link to the Web API endpoint returning the full result of the request
        #
        #   @param items [Array<Spotted::Models::SearchRetrieveResponse::Shows::Item>]
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
          #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Shows::Item::Type]
          required :type, enum: -> { Spotted::Models::SearchRetrieveResponse::Shows::Item::Type }

          # @!attribute uri
          #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   show.
          #
          #   @return [String]
          required :uri, String

          # @!method initialize(id:, available_markets:, copyrights:, description:, explicit:, external_urls:, href:, html_description:, images:, is_externally_hosted:, languages:, media_type:, name:, publisher:, total_episodes:, type:, uri:)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::SearchRetrieveResponse::Shows::Item} for more details.
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
          #   @param type [Symbol, Spotted::Models::SearchRetrieveResponse::Shows::Item::Type] The object type.
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the show

          # The object type.
          #
          # @see Spotted::Models::SearchRetrieveResponse::Shows::Item#type
          module Type
            extend Spotted::Internal::Type::Enum

            SHOW = :show

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @see Spotted::Models::SearchRetrieveResponse#tracks
      class Tracks < Spotted::Internal::Type::BaseModel
        # @!attribute href
        #   A link to the Web API endpoint returning the full result of the request
        #
        #   @return [String]
        required :href, String

        # @!attribute items
        #
        #   @return [Array<Spotted::Models::TrackObject>]
        required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::TrackObject] }

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
        #   {Spotted::Models::SearchRetrieveResponse::Tracks} for more details.
        #
        #   @param href [String] A link to the Web API endpoint returning the full result of the request
        #
        #   @param items [Array<Spotted::Models::TrackObject>]
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
    end
  end
end
