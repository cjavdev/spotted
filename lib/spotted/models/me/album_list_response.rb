# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Albums#list
      class AlbumListResponse < Spotted::Internal::Type::BaseModel
        # @!attribute href
        #   A link to the Web API endpoint returning the full result of the request
        #
        #   @return [String]
        required :href, String

        # @!attribute items
        #
        #   @return [Array<Spotted::Models::Me::AlbumListResponse::Item>]
        required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::AlbumListResponse::Item] }

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
        #   {Spotted::Models::Me::AlbumListResponse} for more details.
        #
        #   @param href [String] A link to the Web API endpoint returning the full result of the request
        #
        #   @param items [Array<Spotted::Models::Me::AlbumListResponse::Item>]
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
          # @!attribute added_at
          #   The date and time the album was saved Timestamps are returned in ISO 8601 format
          #   as Coordinated Universal Time (UTC) with a zero offset: YYYY-MM-DDTHH:MM:SSZ. If
          #   the time is imprecise (for example, the date/time of an album release), an
          #   additional field indicates the precision; see for example, release_date in an
          #   album object.
          #
          #   @return [Time, nil]
          optional :added_at, Time

          # @!attribute album
          #   Information about the album.
          #
          #   @return [Spotted::Models::Me::AlbumListResponse::Item::Album, nil]
          optional :album, -> { Spotted::Models::Me::AlbumListResponse::Item::Album }

          # @!method initialize(added_at: nil, album: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Me::AlbumListResponse::Item} for more details.
          #
          #   @param added_at [Time] The date and time the album was saved
          #
          #   @param album [Spotted::Models::Me::AlbumListResponse::Item::Album] Information about the album.

          # @see Spotted::Models::Me::AlbumListResponse::Item#album
          class Album < Spotted::Internal::Type::BaseModel
            # @!attribute id
            #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   album.
            #
            #   @return [String]
            required :id, String

            # @!attribute album_type
            #   The type of the album.
            #
            #   @return [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::AlbumType]
            required :album_type, enum: -> { Spotted::Models::Me::AlbumListResponse::Item::Album::AlbumType }

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
            #   @return [Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalURLs]
            required :external_urls, -> { Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalURLs }

            # @!attribute href
            #   A link to the Web API endpoint providing full details of the album.
            #
            #   @return [String]
            required :href, String

            # @!attribute images
            #   The cover art for the album in various sizes, widest first.
            #
            #   @return [Array<Spotted::Models::Me::AlbumListResponse::Item::Album::Image>]
            required :images,
                     -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::AlbumListResponse::Item::Album::Image] }

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
            #   @return [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::ReleaseDatePrecision]
            required :release_date_precision,
                     enum: -> { Spotted::Models::Me::AlbumListResponse::Item::Album::ReleaseDatePrecision }

            # @!attribute total_tracks
            #   The number of tracks in the album.
            #
            #   @return [Integer]
            required :total_tracks, Integer

            # @!attribute type
            #   The object type.
            #
            #   @return [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::Type]
            required :type, enum: -> { Spotted::Models::Me::AlbumListResponse::Item::Album::Type }

            # @!attribute uri
            #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   album.
            #
            #   @return [String]
            required :uri, String

            # @!attribute artists
            #   The artists of the album. Each artist object includes a link in `href` to more
            #   detailed information about the artist.
            #
            #   @return [Array<Spotted::Models::Me::AlbumListResponse::Item::Album::Artist>, nil]
            optional :artists,
                     -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::AlbumListResponse::Item::Album::Artist] }

            # @!attribute copyrights
            #   The copyright statements of the album.
            #
            #   @return [Array<Spotted::Models::Me::AlbumListResponse::Item::Album::Copyright>, nil]
            optional :copyrights,
                     -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::AlbumListResponse::Item::Album::Copyright] }

            # @!attribute external_ids
            #   Known external IDs for the album.
            #
            #   @return [Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalIDs, nil]
            optional :external_ids, -> { Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalIDs }

            # @!attribute genres
            #   @deprecated
            #
            #   **Deprecated** The array is always empty.
            #
            #   @return [Array<String>, nil]
            optional :genres, Spotted::Internal::Type::ArrayOf[String]

            # @!attribute label
            #   The label associated with the album.
            #
            #   @return [String, nil]
            optional :label, String

            # @!attribute popularity
            #   The popularity of the album. The value will be between 0 and 100, with 100 being
            #   the most popular.
            #
            #   @return [Integer, nil]
            optional :popularity, Integer

            # @!attribute restrictions
            #   Included in the response when a content restriction is applied.
            #
            #   @return [Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions, nil]
            optional :restrictions, -> { Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions }

            # @!attribute tracks
            #   The tracks of the album.
            #
            #   @return [Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks, nil]
            optional :tracks, -> { Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks }

            # @!method initialize(id:, album_type:, available_markets:, external_urls:, href:, images:, name:, release_date:, release_date_precision:, total_tracks:, type:, uri:, artists: nil, copyrights: nil, external_ids: nil, genres: nil, label: nil, popularity: nil, restrictions: nil, tracks: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::Me::AlbumListResponse::Item::Album} for more details.
            #
            #   Information about the album.
            #
            #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the album
            #
            #   @param album_type [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::AlbumType] The type of the album.
            #
            #   @param available_markets [Array<String>] The markets in which the album is available: [ISO 3166-1 alpha-2 country codes](
            #
            #   @param external_urls [Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalURLs] Known external URLs for this album.
            #
            #   @param href [String] A link to the Web API endpoint providing full details of the album.
            #
            #   @param images [Array<Spotted::Models::Me::AlbumListResponse::Item::Album::Image>] The cover art for the album in various sizes, widest first.
            #
            #   @param name [String] The name of the album. In case of an album takedown, the value may be an empty s
            #
            #   @param release_date [String] The date the album was first released.
            #
            #   @param release_date_precision [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::ReleaseDatePrecision] The precision with which `release_date` value is known.
            #
            #   @param total_tracks [Integer] The number of tracks in the album.
            #
            #   @param type [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::Type] The object type.
            #
            #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the albu
            #
            #   @param artists [Array<Spotted::Models::Me::AlbumListResponse::Item::Album::Artist>] The artists of the album. Each artist object includes a link in `href` to more d
            #
            #   @param copyrights [Array<Spotted::Models::Me::AlbumListResponse::Item::Album::Copyright>] The copyright statements of the album.
            #
            #   @param external_ids [Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalIDs] Known external IDs for the album.
            #
            #   @param genres [Array<String>] **Deprecated** The array is always empty.
            #
            #   @param label [String] The label associated with the album.
            #
            #   @param popularity [Integer] The popularity of the album. The value will be between 0 and 100, with 100 being
            #
            #   @param restrictions [Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions] Included in the response when a content restriction is applied.
            #
            #   @param tracks [Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks] The tracks of the album.

            # The type of the album.
            #
            # @see Spotted::Models::Me::AlbumListResponse::Item::Album#album_type
            module AlbumType
              extend Spotted::Internal::Type::Enum

              ALBUM = :album
              SINGLE = :single
              COMPILATION = :compilation

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Spotted::Models::Me::AlbumListResponse::Item::Album#external_urls
            class ExternalURLs < Spotted::Internal::Type::BaseModel
              # @!attribute spotify
              #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   object.
              #
              #   @return [String, nil]
              optional :spotify, String

              # @!method initialize(spotify: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalURLs} for more
              #   details.
              #
              #   Known external URLs for this album.
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
              #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Image} for more details.
              #
              #   @param height [Integer, nil] The image height in pixels.
              #
              #   @param url [String] The source URL of the image.
              #
              #   @param width [Integer, nil] The image width in pixels.
            end

            # The precision with which `release_date` value is known.
            #
            # @see Spotted::Models::Me::AlbumListResponse::Item::Album#release_date_precision
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
            # @see Spotted::Models::Me::AlbumListResponse::Item::Album#type
            module Type
              extend Spotted::Internal::Type::Enum

              ALBUM = :album

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class Artist < Spotted::Internal::Type::BaseModel
              # @!attribute id
              #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   artist.
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute external_urls
              #   Known external URLs for this artist.
              #
              #   @return [Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::ExternalURLs, nil]
              optional :external_urls, -> { Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::ExternalURLs }

              # @!attribute href
              #   A link to the Web API endpoint providing full details of the artist.
              #
              #   @return [String, nil]
              optional :href, String

              # @!attribute name
              #   The name of the artist.
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute type
              #   The object type.
              #
              #   @return [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::Type, nil]
              optional :type, enum: -> { Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::Type }

              # @!attribute uri
              #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   artist.
              #
              #   @return [String, nil]
              optional :uri, String

              # @!method initialize(id: nil, external_urls: nil, href: nil, name: nil, type: nil, uri: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Artist} for more details.
              #
              #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
              #
              #   @param external_urls [Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::ExternalURLs] Known external URLs for this artist.
              #
              #   @param href [String] A link to the Web API endpoint providing full details of the artist.
              #
              #   @param name [String] The name of the artist.
              #
              #   @param type [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::Type] The object type.
              #
              #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

              # @see Spotted::Models::Me::AlbumListResponse::Item::Album::Artist#external_urls
              class ExternalURLs < Spotted::Internal::Type::BaseModel
                # @!attribute spotify
                #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   object.
                #
                #   @return [String, nil]
                optional :spotify, String

                # @!method initialize(spotify: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::ExternalURLs} for
                #   more details.
                #
                #   Known external URLs for this artist.
                #
                #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
              end

              # The object type.
              #
              # @see Spotted::Models::Me::AlbumListResponse::Item::Album::Artist#type
              module Type
                extend Spotted::Internal::Type::Enum

                ARTIST = :artist

                # @!method self.values
                #   @return [Array<Symbol>]
              end
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
              #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Copyright} for more
              #   details.
              #
              #   @param text [String] The copyright text for this content.
              #
              #   @param type [String] The type of copyright: `C` = the copyright, `P` = the sound recording (performan
            end

            # @see Spotted::Models::Me::AlbumListResponse::Item::Album#external_ids
            class ExternalIDs < Spotted::Internal::Type::BaseModel
              # @!attribute ean
              #   [International Article Number](http://en.wikipedia.org/wiki/International_Article_Number_%28EAN%29)
              #
              #   @return [String, nil]
              optional :ean, String

              # @!attribute isrc
              #   [International Standard Recording Code](http://en.wikipedia.org/wiki/International_Standard_Recording_Code)
              #
              #   @return [String, nil]
              optional :isrc, String

              # @!attribute upc
              #   [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
              #
              #   @return [String, nil]
              optional :upc, String

              # @!method initialize(ean: nil, isrc: nil, upc: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalIDs} for more
              #   details.
              #
              #   Known external IDs for the album.
              #
              #   @param ean [String] [International Article Number](http://en.wikipedia.org/wiki/International_Articl
              #
              #   @param isrc [String] [International Standard Recording Code](http://en.wikipedia.org/wiki/Internation
              #
              #   @param upc [String] [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
            end

            # @see Spotted::Models::Me::AlbumListResponse::Item::Album#restrictions
            class Restrictions < Spotted::Internal::Type::BaseModel
              # @!attribute reason
              #   The reason for the restriction. Albums may be restricted if the content is not
              #   available in a given market, to the user's subscription type, or when the user's
              #   account is set to not play explicit content. Additional reasons may be added in
              #   the future.
              #
              #   @return [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::Reason, nil]
              optional :reason, enum: -> { Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::Reason }

              # @!method initialize(reason: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions} for more
              #   details.
              #
              #   Included in the response when a content restriction is applied.
              #
              #   @param reason [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::Reason] The reason for the restriction. Albums may be restricted if the content is not a

              # The reason for the restriction. Albums may be restricted if the content is not
              # available in a given market, to the user's subscription type, or when the user's
              # account is set to not play explicit content. Additional reasons may be added in
              # the future.
              #
              # @see Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions#reason
              module Reason
                extend Spotted::Internal::Type::Enum

                MARKET = :market
                PRODUCT = :product
                EXPLICIT = :explicit

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Spotted::Models::Me::AlbumListResponse::Item::Album#tracks
            class Tracks < Spotted::Internal::Type::BaseModel
              # @!attribute href
              #   A link to the Web API endpoint returning the full result of the request
              #
              #   @return [String]
              required :href, String

              # @!attribute items
              #
              #   @return [Array<Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item>]
              required :items,
                       -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item] }

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
              #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks} for more details.
              #
              #   The tracks of the album.
              #
              #   @param href [String] A link to the Web API endpoint returning the full result of the request
              #
              #   @param items [Array<Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item>]
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
                #   track.
                #
                #   @return [String, nil]
                optional :id, String

                # @!attribute artists
                #   The artists who performed the track. Each artist object includes a link in
                #   `href` to more detailed information about the artist.
                #
                #   @return [Array<Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist>, nil]
                optional :artists,
                         -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist] }

                # @!attribute available_markets
                #   A list of the countries in which the track can be played, identified by their
                #   [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
                #
                #   @return [Array<String>, nil]
                optional :available_markets, Spotted::Internal::Type::ArrayOf[String]

                # @!attribute disc_number
                #   The disc number (usually `1` unless the album consists of more than one disc).
                #
                #   @return [Integer, nil]
                optional :disc_number, Integer

                # @!attribute duration_ms
                #   The track length in milliseconds.
                #
                #   @return [Integer, nil]
                optional :duration_ms, Integer

                # @!attribute explicit
                #   Whether or not the track has explicit lyrics ( `true` = yes it does; `false` =
                #   no it does not OR unknown).
                #
                #   @return [Boolean, nil]
                optional :explicit, Spotted::Internal::Type::Boolean

                # @!attribute external_urls
                #   External URLs for this track.
                #
                #   @return [Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::ExternalURLs, nil]
                optional :external_urls,
                         -> { Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::ExternalURLs }

                # @!attribute href
                #   A link to the Web API endpoint providing full details of the track.
                #
                #   @return [String, nil]
                optional :href, String

                # @!attribute is_local
                #   Whether or not the track is from a local file.
                #
                #   @return [Boolean, nil]
                optional :is_local, Spotted::Internal::Type::Boolean

                # @!attribute is_playable
                #   Part of the response when
                #   [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied.
                #   If `true`, the track is playable in the given market. Otherwise `false`.
                #
                #   @return [Boolean, nil]
                optional :is_playable, Spotted::Internal::Type::Boolean

                # @!attribute linked_from
                #   Part of the response when
                #   [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied
                #   and is only part of the response if the track linking, in fact, exists. The
                #   requested track has been replaced with a different track. The track in the
                #   `linked_from` object contains information about the originally requested track.
                #
                #   @return [Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom, nil]
                optional :linked_from,
                         -> { Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom }

                # @!attribute name
                #   The name of the track.
                #
                #   @return [String, nil]
                optional :name, String

                # @!attribute preview_url
                #   @deprecated
                #
                #   A URL to a 30 second preview (MP3 format) of the track.
                #
                #   @return [String, nil]
                optional :preview_url, String, nil?: true

                # @!attribute restrictions
                #   Included in the response when a content restriction is applied.
                #
                #   @return [Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Restrictions, nil]
                optional :restrictions,
                         -> { Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Restrictions }

                # @!attribute track_number
                #   The number of the track. If an album has several discs, the track number is the
                #   number on the specified disc.
                #
                #   @return [Integer, nil]
                optional :track_number, Integer

                # @!attribute type
                #   The object type: "track".
                #
                #   @return [String, nil]
                optional :type, String

                # @!attribute uri
                #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   track.
                #
                #   @return [String, nil]
                optional :uri, String

                # @!method initialize(id: nil, artists: nil, available_markets: nil, disc_number: nil, duration_ms: nil, explicit: nil, external_urls: nil, href: nil, is_local: nil, is_playable: nil, linked_from: nil, name: nil, preview_url: nil, restrictions: nil, track_number: nil, type: nil, uri: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item} for more
                #   details.
                #
                #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track
                #
                #   @param artists [Array<Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist>] The artists who performed the track. Each artist object includes a link in `href
                #
                #   @param available_markets [Array<String>] A list of the countries in which the track can be played, identified by their [I
                #
                #   @param disc_number [Integer] The disc number (usually `1` unless the album consists of more than one disc).
                #
                #   @param duration_ms [Integer] The track length in milliseconds.
                #
                #   @param explicit [Boolean] Whether or not the track has explicit lyrics ( `true` = yes it does; `false` = n
                #
                #   @param external_urls [Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::ExternalURLs] External URLs for this track.
                #
                #   @param href [String] A link to the Web API endpoint providing full details of the track.
                #
                #   @param is_local [Boolean] Whether or not the track is from a local file.
                #
                #   @param is_playable [Boolean] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
                #
                #   @param linked_from [Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
                #
                #   @param name [String] The name of the track.
                #
                #   @param preview_url [String, nil] A URL to a 30 second preview (MP3 format) of the track.
                #
                #   @param restrictions [Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Restrictions] Included in the response when a content restriction is applied.
                #
                #   @param track_number [Integer] The number of the track. If an album has several discs, the track number is the
                #
                #   @param type [String] The object type: "track".
                #
                #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the trac

                class Artist < Spotted::Internal::Type::BaseModel
                  # @!attribute id
                  #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   artist.
                  #
                  #   @return [String, nil]
                  optional :id, String

                  # @!attribute external_urls
                  #   Known external URLs for this artist.
                  #
                  #   @return [Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::ExternalURLs, nil]
                  optional :external_urls,
                           -> { Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::ExternalURLs }

                  # @!attribute href
                  #   A link to the Web API endpoint providing full details of the artist.
                  #
                  #   @return [String, nil]
                  optional :href, String

                  # @!attribute name
                  #   The name of the artist.
                  #
                  #   @return [String, nil]
                  optional :name, String

                  # @!attribute type
                  #   The object type.
                  #
                  #   @return [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::Type, nil]
                  optional :type,
                           enum: -> { Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::Type }

                  # @!attribute uri
                  #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   artist.
                  #
                  #   @return [String, nil]
                  optional :uri, String

                  # @!method initialize(id: nil, external_urls: nil, href: nil, name: nil, type: nil, uri: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist} for
                  #   more details.
                  #
                  #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
                  #
                  #   @param external_urls [Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::ExternalURLs] Known external URLs for this artist.
                  #
                  #   @param href [String] A link to the Web API endpoint providing full details of the artist.
                  #
                  #   @param name [String] The name of the artist.
                  #
                  #   @param type [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::Type] The object type.
                  #
                  #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

                  # @see Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist#external_urls
                  class ExternalURLs < Spotted::Internal::Type::BaseModel
                    # @!attribute spotify
                    #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                    #   object.
                    #
                    #   @return [String, nil]
                    optional :spotify, String

                    # @!method initialize(spotify: nil)
                    #   Some parameter documentations has been truncated, see
                    #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::ExternalURLs}
                    #   for more details.
                    #
                    #   Known external URLs for this artist.
                    #
                    #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
                  end

                  # The object type.
                  #
                  # @see Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist#type
                  module Type
                    extend Spotted::Internal::Type::Enum

                    ARTIST = :artist

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @see Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item#external_urls
                class ExternalURLs < Spotted::Internal::Type::BaseModel
                  # @!attribute spotify
                  #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   object.
                  #
                  #   @return [String, nil]
                  optional :spotify, String

                  # @!method initialize(spotify: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::ExternalURLs}
                  #   for more details.
                  #
                  #   External URLs for this track.
                  #
                  #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
                end

                # @see Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item#linked_from
                class LinkedFrom < Spotted::Internal::Type::BaseModel
                  # @!attribute id
                  #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   track.
                  #
                  #   @return [String, nil]
                  optional :id, String

                  # @!attribute external_urls
                  #   Known external URLs for this track.
                  #
                  #   @return [Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom::ExternalURLs, nil]
                  optional :external_urls,
                           -> { Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom::ExternalURLs }

                  # @!attribute href
                  #   A link to the Web API endpoint providing full details of the track.
                  #
                  #   @return [String, nil]
                  optional :href, String

                  # @!attribute type
                  #   The object type: "track".
                  #
                  #   @return [String, nil]
                  optional :type, String

                  # @!attribute uri
                  #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   track.
                  #
                  #   @return [String, nil]
                  optional :uri, String

                  # @!method initialize(id: nil, external_urls: nil, href: nil, type: nil, uri: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom}
                  #   for more details.
                  #
                  #   Part of the response when
                  #   [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied
                  #   and is only part of the response if the track linking, in fact, exists. The
                  #   requested track has been replaced with a different track. The track in the
                  #   `linked_from` object contains information about the originally requested track.
                  #
                  #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track
                  #
                  #   @param external_urls [Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom::ExternalURLs] Known external URLs for this track.
                  #
                  #   @param href [String] A link to the Web API endpoint providing full details of the track.
                  #
                  #   @param type [String] The object type: "track".
                  #
                  #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the trac

                  # @see Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom#external_urls
                  class ExternalURLs < Spotted::Internal::Type::BaseModel
                    # @!attribute spotify
                    #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                    #   object.
                    #
                    #   @return [String, nil]
                    optional :spotify, String

                    # @!method initialize(spotify: nil)
                    #   Some parameter documentations has been truncated, see
                    #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom::ExternalURLs}
                    #   for more details.
                    #
                    #   Known external URLs for this track.
                    #
                    #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
                  end
                end

                # @see Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item#restrictions
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
                  #   {Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Restrictions}
                  #   for more details.
                  #
                  #   Included in the response when a content restriction is applied.
                  #
                  #   @param reason [String] The reason for the restriction. Supported values:
                end
              end
            end
          end
        end
      end
    end
  end
end
