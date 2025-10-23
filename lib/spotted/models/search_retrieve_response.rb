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
      #   @return [Spotted::Models::SearchRetrieveResponse::Playlists, nil]
      optional :playlists, -> { Spotted::Models::SearchRetrieveResponse::Playlists }

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
      #   @param playlists [Spotted::Models::SearchRetrieveResponse::Playlists]
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
          #   @return [Array<Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist>]
          required :artists,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist] }

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
          #   @return [Spotted::Models::SearchRetrieveResponse::Albums::Item::ExternalURLs]
          required :external_urls, -> { Spotted::Models::SearchRetrieveResponse::Albums::Item::ExternalURLs }

          # @!attribute href
          #   A link to the Web API endpoint providing full details of the album.
          #
          #   @return [String]
          required :href, String

          # @!attribute images
          #   The cover art for the album in various sizes, widest first.
          #
          #   @return [Array<Spotted::Models::SearchRetrieveResponse::Albums::Item::Image>]
          required :images,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Albums::Item::Image] }

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
          #   @return [Spotted::Models::SearchRetrieveResponse::Albums::Item::Restrictions, nil]
          optional :restrictions, -> { Spotted::Models::SearchRetrieveResponse::Albums::Item::Restrictions }

          # @!method initialize(id:, album_type:, artists:, available_markets:, external_urls:, href:, images:, name:, release_date:, release_date_precision:, total_tracks:, type:, uri:, restrictions: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::SearchRetrieveResponse::Albums::Item} for more details.
          #
          #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the album
          #
          #   @param album_type [Symbol, Spotted::Models::SearchRetrieveResponse::Albums::Item::AlbumType] The type of the album.
          #
          #   @param artists [Array<Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist>] The artists of the album. Each artist object includes a link in `href` to more d
          #
          #   @param available_markets [Array<String>] The markets in which the album is available: [ISO 3166-1 alpha-2 country codes](
          #
          #   @param external_urls [Spotted::Models::SearchRetrieveResponse::Albums::Item::ExternalURLs] Known external URLs for this album.
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the album.
          #
          #   @param images [Array<Spotted::Models::SearchRetrieveResponse::Albums::Item::Image>] The cover art for the album in various sizes, widest first.
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
          #   @param restrictions [Spotted::Models::SearchRetrieveResponse::Albums::Item::Restrictions] Included in the response when a content restriction is applied.

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
            #   @return [Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist::ExternalURLs, nil]
            optional :external_urls,
                     -> { Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist::ExternalURLs }

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
            #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist::Type, nil]
            optional :type, enum: -> { Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist::Type }

            # @!attribute uri
            #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   artist.
            #
            #   @return [String, nil]
            optional :uri, String

            # @!method initialize(id: nil, external_urls: nil, href: nil, name: nil, type: nil, uri: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist} for more
            #   details.
            #
            #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
            #
            #   @param external_urls [Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist::ExternalURLs] Known external URLs for this artist.
            #
            #   @param href [String] A link to the Web API endpoint providing full details of the artist.
            #
            #   @param name [String] The name of the artist.
            #
            #   @param type [Symbol, Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist::Type] The object type.
            #
            #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

            # @see Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist#external_urls
            class ExternalURLs < Spotted::Internal::Type::BaseModel
              # @!attribute spotify
              #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   object.
              #
              #   @return [String, nil]
              optional :spotify, String

              # @!method initialize(spotify: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist::ExternalURLs}
              #   for more details.
              #
              #   Known external URLs for this artist.
              #
              #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
            end

            # The object type.
            #
            # @see Spotted::Models::SearchRetrieveResponse::Albums::Item::Artist#type
            module Type
              extend Spotted::Internal::Type::Enum

              ARTIST = :artist

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Spotted::Models::SearchRetrieveResponse::Albums::Item#external_urls
          class ExternalURLs < Spotted::Internal::Type::BaseModel
            # @!attribute spotify
            #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   object.
            #
            #   @return [String, nil]
            optional :spotify, String

            # @!method initialize(spotify: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Albums::Item::ExternalURLs} for more
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
            #   {Spotted::Models::SearchRetrieveResponse::Albums::Item::Image} for more details.
            #
            #   @param height [Integer, nil] The image height in pixels.
            #
            #   @param url [String] The source URL of the image.
            #
            #   @param width [Integer, nil] The image width in pixels.
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

          # @see Spotted::Models::SearchRetrieveResponse::Albums::Item#restrictions
          class Restrictions < Spotted::Internal::Type::BaseModel
            # @!attribute reason
            #   The reason for the restriction. Albums may be restricted if the content is not
            #   available in a given market, to the user's subscription type, or when the user's
            #   account is set to not play explicit content. Additional reasons may be added in
            #   the future.
            #
            #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Albums::Item::Restrictions::Reason, nil]
            optional :reason, enum: -> { Spotted::Models::SearchRetrieveResponse::Albums::Item::Restrictions::Reason }

            # @!method initialize(reason: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Albums::Item::Restrictions} for more
            #   details.
            #
            #   Included in the response when a content restriction is applied.
            #
            #   @param reason [Symbol, Spotted::Models::SearchRetrieveResponse::Albums::Item::Restrictions::Reason] The reason for the restriction. Albums may be restricted if the content is not a

            # The reason for the restriction. Albums may be restricted if the content is not
            # available in a given market, to the user's subscription type, or when the user's
            # account is set to not play explicit content. Additional reasons may be added in
            # the future.
            #
            # @see Spotted::Models::SearchRetrieveResponse::Albums::Item::Restrictions#reason
            module Reason
              extend Spotted::Internal::Type::Enum

              MARKET = :market
              PRODUCT = :product
              EXPLICIT = :explicit

              # @!method self.values
              #   @return [Array<Symbol>]
            end
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
        #   @return [Array<Spotted::Models::SearchRetrieveResponse::Artists::Item>]
        required :items,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Artists::Item] }

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
        #   @param items [Array<Spotted::Models::SearchRetrieveResponse::Artists::Item>]
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
          #   artist.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute external_urls
          #   Known external URLs for this artist.
          #
          #   @return [Spotted::Models::SearchRetrieveResponse::Artists::Item::ExternalURLs, nil]
          optional :external_urls, -> { Spotted::Models::SearchRetrieveResponse::Artists::Item::ExternalURLs }

          # @!attribute followers
          #   Information about the followers of the artist.
          #
          #   @return [Spotted::Models::SearchRetrieveResponse::Artists::Item::Followers, nil]
          optional :followers, -> { Spotted::Models::SearchRetrieveResponse::Artists::Item::Followers }

          # @!attribute genres
          #   A list of the genres the artist is associated with. If not yet classified, the
          #   array is empty.
          #
          #   @return [Array<String>, nil]
          optional :genres, Spotted::Internal::Type::ArrayOf[String]

          # @!attribute href
          #   A link to the Web API endpoint providing full details of the artist.
          #
          #   @return [String, nil]
          optional :href, String

          # @!attribute images
          #   Images of the artist in various sizes, widest first.
          #
          #   @return [Array<Spotted::Models::SearchRetrieveResponse::Artists::Item::Image>, nil]
          optional :images,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Artists::Item::Image] }

          # @!attribute name
          #   The name of the artist.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute popularity
          #   The popularity of the artist. The value will be between 0 and 100, with 100
          #   being the most popular. The artist's popularity is calculated from the
          #   popularity of all the artist's tracks.
          #
          #   @return [Integer, nil]
          optional :popularity, Integer

          # @!attribute type
          #   The object type.
          #
          #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Artists::Item::Type, nil]
          optional :type, enum: -> { Spotted::Models::SearchRetrieveResponse::Artists::Item::Type }

          # @!attribute uri
          #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   artist.
          #
          #   @return [String, nil]
          optional :uri, String

          # @!method initialize(id: nil, external_urls: nil, followers: nil, genres: nil, href: nil, images: nil, name: nil, popularity: nil, type: nil, uri: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::SearchRetrieveResponse::Artists::Item} for more details.
          #
          #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
          #
          #   @param external_urls [Spotted::Models::SearchRetrieveResponse::Artists::Item::ExternalURLs] Known external URLs for this artist.
          #
          #   @param followers [Spotted::Models::SearchRetrieveResponse::Artists::Item::Followers] Information about the followers of the artist.
          #
          #   @param genres [Array<String>] A list of the genres the artist is associated with. If not yet classified, the a
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the artist.
          #
          #   @param images [Array<Spotted::Models::SearchRetrieveResponse::Artists::Item::Image>] Images of the artist in various sizes, widest first.
          #
          #   @param name [String] The name of the artist.
          #
          #   @param popularity [Integer] The popularity of the artist. The value will be between 0 and 100, with 100 bein
          #
          #   @param type [Symbol, Spotted::Models::SearchRetrieveResponse::Artists::Item::Type] The object type.
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

          # @see Spotted::Models::SearchRetrieveResponse::Artists::Item#external_urls
          class ExternalURLs < Spotted::Internal::Type::BaseModel
            # @!attribute spotify
            #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   object.
            #
            #   @return [String, nil]
            optional :spotify, String

            # @!method initialize(spotify: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Artists::Item::ExternalURLs} for more
            #   details.
            #
            #   Known external URLs for this artist.
            #
            #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
          end

          # @see Spotted::Models::SearchRetrieveResponse::Artists::Item#followers
          class Followers < Spotted::Internal::Type::BaseModel
            # @!attribute href
            #   This will always be set to null, as the Web API does not support it at the
            #   moment.
            #
            #   @return [String, nil]
            optional :href, String, nil?: true

            # @!attribute total
            #   The total number of followers.
            #
            #   @return [Integer, nil]
            optional :total, Integer

            # @!method initialize(href: nil, total: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Artists::Item::Followers} for more
            #   details.
            #
            #   Information about the followers of the artist.
            #
            #   @param href [String, nil] This will always be set to null, as the Web API does not support it at the momen
            #
            #   @param total [Integer] The total number of followers.
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
            #   {Spotted::Models::SearchRetrieveResponse::Artists::Item::Image} for more
            #   details.
            #
            #   @param height [Integer, nil] The image height in pixels.
            #
            #   @param url [String] The source URL of the image.
            #
            #   @param width [Integer, nil] The image width in pixels.
          end

          # The object type.
          #
          # @see Spotted::Models::SearchRetrieveResponse::Artists::Item#type
          module Type
            extend Spotted::Internal::Type::Enum

            ARTIST = :artist

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
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
          #   @return [Array<Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Author>]
          required :authors,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Author] }

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
          #   @return [Array<Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Copyright>]
          required :copyrights,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Copyright] }

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
          #   @return [Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::ExternalURLs]
          required :external_urls, -> { Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::ExternalURLs }

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
          #   @return [Array<Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Image>]
          required :images,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Image] }

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
          #   @return [Array<Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Narrator>]
          required :narrators,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Narrator] }

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
          #   @param authors [Array<Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Author>] The author(s) for the audiobook.
          #
          #   @param available_markets [Array<String>] A list of the countries in which the audiobook can be played, identified by thei
          #
          #   @param copyrights [Array<Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Copyright>] The copyright statements of the audiobook.
          #
          #   @param description [String] A description of the audiobook. HTML tags are stripped away from this field, use
          #
          #   @param explicit [Boolean] Whether or not the audiobook has explicit content (true = yes it does; false = n
          #
          #   @param external_urls [Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::ExternalURLs] External URLs for this audiobook.
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the audiobook.
          #
          #   @param html_description [String] A description of the audiobook. This field may contain HTML tags.
          #
          #   @param images [Array<Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Image>] The cover art for the audiobook in various sizes, widest first.
          #
          #   @param languages [Array<String>] A list of the languages used in the audiobook, identified by their [ISO 639](htt
          #
          #   @param media_type [String] The media type of the audiobook.
          #
          #   @param name [String] The name of the audiobook.
          #
          #   @param narrators [Array<Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Narrator>] The narrator(s) for the audiobook.
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

          class Author < Spotted::Internal::Type::BaseModel
            # @!attribute name
            #   The name of the author.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Author} for more
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
            #   {Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Copyright} for more
            #   details.
            #
            #   @param text [String] The copyright text for this content.
            #
            #   @param type [String] The type of copyright: `C` = the copyright, `P` = the sound recording (performan
          end

          # @see Spotted::Models::SearchRetrieveResponse::Audiobooks::Item#external_urls
          class ExternalURLs < Spotted::Internal::Type::BaseModel
            # @!attribute spotify
            #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   object.
            #
            #   @return [String, nil]
            optional :spotify, String

            # @!method initialize(spotify: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::ExternalURLs} for
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
            #   {Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Image} for more
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
            #   {Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Narrator} for more
            #   details.
            #
            #   @param name [String] The name of the Narrator.
          end

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
        #   @return [Array<Spotted::Models::SearchRetrieveResponse::Episodes::Item>]
        required :items,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Episodes::Item] }

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
        #   @param items [Array<Spotted::Models::SearchRetrieveResponse::Episodes::Item>]
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
          #   @return [Spotted::Models::SearchRetrieveResponse::Episodes::Item::ExternalURLs]
          required :external_urls, -> { Spotted::Models::SearchRetrieveResponse::Episodes::Item::ExternalURLs }

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
          #   @return [Array<Spotted::Models::SearchRetrieveResponse::Episodes::Item::Image>]
          required :images,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Episodes::Item::Image] }

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
          #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Episodes::Item::ReleaseDatePrecision]
          required :release_date_precision,
                   enum: -> { Spotted::Models::SearchRetrieveResponse::Episodes::Item::ReleaseDatePrecision }

          # @!attribute type
          #   The object type.
          #
          #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Episodes::Item::Type]
          required :type, enum: -> { Spotted::Models::SearchRetrieveResponse::Episodes::Item::Type }

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
          #   @return [Spotted::Models::SearchRetrieveResponse::Episodes::Item::Restrictions, nil]
          optional :restrictions, -> { Spotted::Models::SearchRetrieveResponse::Episodes::Item::Restrictions }

          # @!attribute resume_point
          #   The user's most recent position in the episode. Set if the supplied access token
          #   is a user token and has the scope 'user-read-playback-position'.
          #
          #   @return [Spotted::Models::SearchRetrieveResponse::Episodes::Item::ResumePoint, nil]
          optional :resume_point, -> { Spotted::Models::SearchRetrieveResponse::Episodes::Item::ResumePoint }

          # @!method initialize(id:, audio_preview_url:, description:, duration_ms:, explicit:, external_urls:, href:, html_description:, images:, is_externally_hosted:, is_playable:, languages:, name:, release_date:, release_date_precision:, type:, uri:, language: nil, restrictions: nil, resume_point: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::SearchRetrieveResponse::Episodes::Item} for more details.
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
          #   @param external_urls [Spotted::Models::SearchRetrieveResponse::Episodes::Item::ExternalURLs] External URLs for this episode.
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the episode.
          #
          #   @param html_description [String] A description of the episode. This field may contain HTML tags.
          #
          #   @param images [Array<Spotted::Models::SearchRetrieveResponse::Episodes::Item::Image>] The cover art for the episode in various sizes, widest first.
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
          #   @param release_date_precision [Symbol, Spotted::Models::SearchRetrieveResponse::Episodes::Item::ReleaseDatePrecision] The precision with which `release_date` value is known.
          #
          #   @param type [Symbol, Spotted::Models::SearchRetrieveResponse::Episodes::Item::Type] The object type.
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the epis
          #
          #   @param language [String] The language used in the episode, identified by a [ISO 639](https://en.wikipedia
          #
          #   @param restrictions [Spotted::Models::SearchRetrieveResponse::Episodes::Item::Restrictions] Included in the response when a content restriction is applied.
          #
          #   @param resume_point [Spotted::Models::SearchRetrieveResponse::Episodes::Item::ResumePoint] The user's most recent position in the episode. Set if the supplied access token

          # @see Spotted::Models::SearchRetrieveResponse::Episodes::Item#external_urls
          class ExternalURLs < Spotted::Internal::Type::BaseModel
            # @!attribute spotify
            #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   object.
            #
            #   @return [String, nil]
            optional :spotify, String

            # @!method initialize(spotify: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Episodes::Item::ExternalURLs} for more
            #   details.
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
            #   {Spotted::Models::SearchRetrieveResponse::Episodes::Item::Image} for more
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
          # @see Spotted::Models::SearchRetrieveResponse::Episodes::Item#release_date_precision
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
          # @see Spotted::Models::SearchRetrieveResponse::Episodes::Item#type
          module Type
            extend Spotted::Internal::Type::Enum

            EPISODE = :episode

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Spotted::Models::SearchRetrieveResponse::Episodes::Item#restrictions
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
            #   {Spotted::Models::SearchRetrieveResponse::Episodes::Item::Restrictions} for more
            #   details.
            #
            #   Included in the response when a content restriction is applied.
            #
            #   @param reason [String] The reason for the restriction. Supported values:
          end

          # @see Spotted::Models::SearchRetrieveResponse::Episodes::Item#resume_point
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
            #   {Spotted::Models::SearchRetrieveResponse::Episodes::Item::ResumePoint} for more
            #   details.
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

      # @see Spotted::Models::SearchRetrieveResponse#playlists
      class Playlists < Spotted::Internal::Type::BaseModel
        # @!attribute href
        #   A link to the Web API endpoint returning the full result of the request
        #
        #   @return [String]
        required :href, String

        # @!attribute items
        #
        #   @return [Array<Spotted::Models::SearchRetrieveResponse::Playlists::Item>]
        required :items,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Playlists::Item] }

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
        #   {Spotted::Models::SearchRetrieveResponse::Playlists} for more details.
        #
        #   @param href [String] A link to the Web API endpoint returning the full result of the request
        #
        #   @param items [Array<Spotted::Models::SearchRetrieveResponse::Playlists::Item>]
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
          #   playlist.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute collaborative
          #   `true` if the owner allows other users to modify the playlist.
          #
          #   @return [Boolean, nil]
          optional :collaborative, Spotted::Internal::Type::Boolean

          # @!attribute description
          #   The playlist description. _Only returned for modified, verified playlists,
          #   otherwise_ `null`.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute external_urls
          #   Known external URLs for this playlist.
          #
          #   @return [Spotted::Models::SearchRetrieveResponse::Playlists::Item::ExternalURLs, nil]
          optional :external_urls, -> { Spotted::Models::SearchRetrieveResponse::Playlists::Item::ExternalURLs }

          # @!attribute href
          #   A link to the Web API endpoint providing full details of the playlist.
          #
          #   @return [String, nil]
          optional :href, String

          # @!attribute images
          #   Images for the playlist. The array may be empty or contain up to three images.
          #   The images are returned by size in descending order. See
          #   [Working with Playlists](/documentation/web-api/concepts/playlists). _**Note**:
          #   If returned, the source URL for the image (`url`) is temporary and will expire
          #   in less than a day._
          #
          #   @return [Array<Spotted::Models::SearchRetrieveResponse::Playlists::Item::Image>, nil]
          optional :images,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Playlists::Item::Image] }

          # @!attribute name
          #   The name of the playlist.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute owner
          #   The user who owns the playlist
          #
          #   @return [Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner, nil]
          optional :owner, -> { Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner }

          # @!attribute public
          #   The playlist's public/private status (if it is added to the user's profile):
          #   `true` the playlist is public, `false` the playlist is private, `null` the
          #   playlist status is not relevant. For more about public/private status, see
          #   [Working with Playlists](/documentation/web-api/concepts/playlists)
          #
          #   @return [Boolean, nil]
          optional :public, Spotted::Internal::Type::Boolean

          # @!attribute snapshot_id
          #   The version identifier for the current playlist. Can be supplied in other
          #   requests to target a specific playlist version
          #
          #   @return [String, nil]
          optional :snapshot_id, String

          # @!attribute tracks
          #   A collection containing a link ( `href` ) to the Web API endpoint where full
          #   details of the playlist's tracks can be retrieved, along with the `total` number
          #   of tracks in the playlist. Note, a track object may be `null`. This can happen
          #   if a track is no longer available.
          #
          #   @return [Spotted::Models::SearchRetrieveResponse::Playlists::Item::Tracks, nil]
          optional :tracks, -> { Spotted::Models::SearchRetrieveResponse::Playlists::Item::Tracks }

          # @!attribute type
          #   The object type: "playlist"
          #
          #   @return [String, nil]
          optional :type, String

          # @!attribute uri
          #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   playlist.
          #
          #   @return [String, nil]
          optional :uri, String

          # @!method initialize(id: nil, collaborative: nil, description: nil, external_urls: nil, href: nil, images: nil, name: nil, owner: nil, public: nil, snapshot_id: nil, tracks: nil, type: nil, uri: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::SearchRetrieveResponse::Playlists::Item} for more details.
          #
          #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the playl
          #
          #   @param collaborative [Boolean] `true` if the owner allows other users to modify the playlist.
          #
          #   @param description [String] The playlist description. \_Only returned for modified, verified playlists,
          #   other
          #
          #   @param external_urls [Spotted::Models::SearchRetrieveResponse::Playlists::Item::ExternalURLs] Known external URLs for this playlist.
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the playlist.
          #
          #   @param images [Array<Spotted::Models::SearchRetrieveResponse::Playlists::Item::Image>] Images for the playlist. The array may be empty or contain up to three images. T
          #
          #   @param name [String] The name of the playlist.
          #
          #   @param owner [Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner] The user who owns the playlist
          #
          #   @param public [Boolean] The playlist's public/private status (if it is added to the user's profile): `tr
          #
          #   @param snapshot_id [String] The version identifier for the current playlist. Can be supplied in other reques
          #
          #   @param tracks [Spotted::Models::SearchRetrieveResponse::Playlists::Item::Tracks] A collection containing a link ( `href` ) to the Web API endpoint where full det
          #
          #   @param type [String] The object type: "playlist"
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the play

          # @see Spotted::Models::SearchRetrieveResponse::Playlists::Item#external_urls
          class ExternalURLs < Spotted::Internal::Type::BaseModel
            # @!attribute spotify
            #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   object.
            #
            #   @return [String, nil]
            optional :spotify, String

            # @!method initialize(spotify: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Playlists::Item::ExternalURLs} for
            #   more details.
            #
            #   Known external URLs for this playlist.
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
            #   {Spotted::Models::SearchRetrieveResponse::Playlists::Item::Image} for more
            #   details.
            #
            #   @param height [Integer, nil] The image height in pixels.
            #
            #   @param url [String] The source URL of the image.
            #
            #   @param width [Integer, nil] The image width in pixels.
          end

          # @see Spotted::Models::SearchRetrieveResponse::Playlists::Item#owner
          class Owner < Spotted::Internal::Type::BaseModel
            # @!attribute id
            #   The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
            #   user.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute display_name
            #   The name displayed on the user's profile. `null` if not available.
            #
            #   @return [String, nil]
            optional :display_name, String, nil?: true

            # @!attribute external_urls
            #   Known public external URLs for this user.
            #
            #   @return [Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner::ExternalURLs, nil]
            optional :external_urls,
                     -> { Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner::ExternalURLs }

            # @!attribute href
            #   A link to the Web API endpoint for this user.
            #
            #   @return [String, nil]
            optional :href, String

            # @!attribute type
            #   The object type.
            #
            #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner::Type, nil]
            optional :type, enum: -> { Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner::Type }

            # @!attribute uri
            #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this
            #   user.
            #
            #   @return [String, nil]
            optional :uri, String

            # @!method initialize(id: nil, display_name: nil, external_urls: nil, href: nil, type: nil, uri: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner} for more
            #   details.
            #
            #   The user who owns the playlist
            #
            #   @param id [String] The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
            #
            #   @param display_name [String, nil] The name displayed on the user's profile. `null` if not available.
            #
            #   @param external_urls [Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner::ExternalURLs] Known public external URLs for this user.
            #
            #   @param href [String] A link to the Web API endpoint for this user.
            #
            #   @param type [Symbol, Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner::Type] The object type.
            #
            #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this use

            # @see Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner#external_urls
            class ExternalURLs < Spotted::Internal::Type::BaseModel
              # @!attribute spotify
              #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   object.
              #
              #   @return [String, nil]
              optional :spotify, String

              # @!method initialize(spotify: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner::ExternalURLs}
              #   for more details.
              #
              #   Known public external URLs for this user.
              #
              #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
            end

            # The object type.
            #
            # @see Spotted::Models::SearchRetrieveResponse::Playlists::Item::Owner#type
            module Type
              extend Spotted::Internal::Type::Enum

              USER = :user

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Spotted::Models::SearchRetrieveResponse::Playlists::Item#tracks
          class Tracks < Spotted::Internal::Type::BaseModel
            # @!attribute href
            #   A link to the Web API endpoint where full details of the playlist's tracks can
            #   be retrieved.
            #
            #   @return [String, nil]
            optional :href, String

            # @!attribute total
            #   Number of tracks in the playlist.
            #
            #   @return [Integer, nil]
            optional :total, Integer

            # @!method initialize(href: nil, total: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Playlists::Item::Tracks} for more
            #   details.
            #
            #   A collection containing a link ( `href` ) to the Web API endpoint where full
            #   details of the playlist's tracks can be retrieved, along with the `total` number
            #   of tracks in the playlist. Note, a track object may be `null`. This can happen
            #   if a track is no longer available.
            #
            #   @param href [String] A link to the Web API endpoint where full details of the playlist's tracks can b
            #
            #   @param total [Integer] Number of tracks in the playlist.
          end
        end
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
          #   @return [Array<Spotted::Models::SearchRetrieveResponse::Shows::Item::Copyright>]
          required :copyrights,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Shows::Item::Copyright] }

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
          #   @return [Spotted::Models::SearchRetrieveResponse::Shows::Item::ExternalURLs]
          required :external_urls, -> { Spotted::Models::SearchRetrieveResponse::Shows::Item::ExternalURLs }

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
          #   @return [Array<Spotted::Models::SearchRetrieveResponse::Shows::Item::Image>]
          required :images,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Shows::Item::Image] }

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
          #   @param copyrights [Array<Spotted::Models::SearchRetrieveResponse::Shows::Item::Copyright>] The copyright statements of the show.
          #
          #   @param description [String] A description of the show. HTML tags are stripped away from this field, use `htm
          #
          #   @param explicit [Boolean] Whether or not the show has explicit content (true = yes it does; false = no it
          #
          #   @param external_urls [Spotted::Models::SearchRetrieveResponse::Shows::Item::ExternalURLs] External URLs for this show.
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the show.
          #
          #   @param html_description [String] A description of the show. This field may contain HTML tags.
          #
          #   @param images [Array<Spotted::Models::SearchRetrieveResponse::Shows::Item::Image>] The cover art for the show in various sizes, widest first.
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
            #   {Spotted::Models::SearchRetrieveResponse::Shows::Item::Copyright} for more
            #   details.
            #
            #   @param text [String] The copyright text for this content.
            #
            #   @param type [String] The type of copyright: `C` = the copyright, `P` = the sound recording (performan
          end

          # @see Spotted::Models::SearchRetrieveResponse::Shows::Item#external_urls
          class ExternalURLs < Spotted::Internal::Type::BaseModel
            # @!attribute spotify
            #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   object.
            #
            #   @return [String, nil]
            optional :spotify, String

            # @!method initialize(spotify: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Shows::Item::ExternalURLs} for more
            #   details.
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
            #   {Spotted::Models::SearchRetrieveResponse::Shows::Item::Image} for more details.
            #
            #   @param height [Integer, nil] The image height in pixels.
            #
            #   @param url [String] The source URL of the image.
            #
            #   @param width [Integer, nil] The image width in pixels.
          end

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
        #   @return [Array<Spotted::Models::SearchRetrieveResponse::Tracks::Item>]
        required :items,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Tracks::Item] }

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
        #   @param items [Array<Spotted::Models::SearchRetrieveResponse::Tracks::Item>]
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

          # @!attribute album
          #   The album on which the track appears. The album object includes a link in `href`
          #   to full information about the album.
          #
          #   @return [Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album, nil]
          optional :album, -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album }

          # @!attribute artists
          #   The artists who performed the track. Each artist object includes a link in
          #   `href` to more detailed information about the artist.
          #
          #   @return [Array<Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist>, nil]
          optional :artists,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist] }

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

          # @!attribute external_ids
          #   Known external IDs for the track.
          #
          #   @return [Spotted::Models::SearchRetrieveResponse::Tracks::Item::ExternalIDs, nil]
          optional :external_ids, -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::ExternalIDs }

          # @!attribute external_urls
          #   Known external URLs for this track.
          #
          #   @return [Spotted::Models::SearchRetrieveResponse::Tracks::Item::ExternalURLs, nil]
          optional :external_urls, -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::ExternalURLs }

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
          #   [Track Relinking](/documentation/web-api/concepts/track-relinking) is applied.
          #   If `true`, the track is playable in the given market. Otherwise `false`.
          #
          #   @return [Boolean, nil]
          optional :is_playable, Spotted::Internal::Type::Boolean

          # @!attribute linked_from
          #   Part of the response when
          #   [Track Relinking](/documentation/web-api/concepts/track-relinking) is applied,
          #   and the requested track has been replaced with different track. The track in the
          #   `linked_from` object contains information about the originally requested track.
          #
          #   @return [Object, nil]
          optional :linked_from, Spotted::Internal::Type::Unknown

          # @!attribute name
          #   The name of the track.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute popularity
          #   The popularity of the track. The value will be between 0 and 100, with 100 being
          #   the most popular.<br/>The popularity of a track is a value between 0 and 100,
          #   with 100 being the most popular. The popularity is calculated by algorithm and
          #   is based, in the most part, on the total number of plays the track has had and
          #   how recent those plays are.<br/>Generally speaking, songs that are being played
          #   a lot now will have a higher popularity than songs that were played a lot in the
          #   past. Duplicate tracks (e.g. the same track from a single and an album) are
          #   rated independently. Artist and album popularity is derived mathematically from
          #   track popularity. _**Note**: the popularity value may lag actual popularity by a
          #   few days: the value is not updated in real time._
          #
          #   @return [Integer, nil]
          optional :popularity, Integer

          # @!attribute preview_url
          #   @deprecated
          #
          #   A link to a 30 second preview (MP3 format) of the track. Can be `null`
          #
          #   @return [String, nil]
          optional :preview_url, String, nil?: true

          # @!attribute restrictions
          #   Included in the response when a content restriction is applied.
          #
          #   @return [Spotted::Models::SearchRetrieveResponse::Tracks::Item::Restrictions, nil]
          optional :restrictions, -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Restrictions }

          # @!attribute track_number
          #   The number of the track. If an album has several discs, the track number is the
          #   number on the specified disc.
          #
          #   @return [Integer, nil]
          optional :track_number, Integer

          # @!attribute type
          #   The object type: "track".
          #
          #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Type, nil]
          optional :type, enum: -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Type }

          # @!attribute uri
          #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   track.
          #
          #   @return [String, nil]
          optional :uri, String

          # @!method initialize(id: nil, album: nil, artists: nil, available_markets: nil, disc_number: nil, duration_ms: nil, explicit: nil, external_ids: nil, external_urls: nil, href: nil, is_local: nil, is_playable: nil, linked_from: nil, name: nil, popularity: nil, preview_url: nil, restrictions: nil, track_number: nil, type: nil, uri: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::SearchRetrieveResponse::Tracks::Item} for more details.
          #
          #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track
          #
          #   @param album [Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album] The album on which the track appears. The album object includes a link in `href`
          #
          #   @param artists [Array<Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist>] The artists who performed the track. Each artist object includes a link in `href
          #
          #   @param available_markets [Array<String>] A list of the countries in which the track can be played, identified by their [I
          #
          #   @param disc_number [Integer] The disc number (usually `1` unless the album consists of more than one disc).
          #
          #   @param duration_ms [Integer] The track length in milliseconds.
          #
          #   @param explicit [Boolean] Whether or not the track has explicit lyrics ( `true` = yes it does; `false` = n
          #
          #   @param external_ids [Spotted::Models::SearchRetrieveResponse::Tracks::Item::ExternalIDs] Known external IDs for the track.
          #
          #   @param external_urls [Spotted::Models::SearchRetrieveResponse::Tracks::Item::ExternalURLs] Known external URLs for this track.
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the track.
          #
          #   @param is_local [Boolean] Whether or not the track is from a local file.
          #
          #   @param is_playable [Boolean] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
          #
          #   @param linked_from [Object] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
          #
          #   @param name [String] The name of the track.
          #
          #   @param popularity [Integer] The popularity of the track. The value will be between 0 and 100, with 100 being
          #
          #   @param preview_url [String, nil] A link to a 30 second preview (MP3 format) of the track. Can be `null`
          #
          #   @param restrictions [Spotted::Models::SearchRetrieveResponse::Tracks::Item::Restrictions] Included in the response when a content restriction is applied.
          #
          #   @param track_number [Integer] The number of the track. If an album has several discs, the track number is the
          #
          #   @param type [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Type] The object type: "track".
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the trac

          # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item#album
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
            #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::AlbumType]
            required :album_type, enum: -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::AlbumType }

            # @!attribute artists
            #   The artists of the album. Each artist object includes a link in `href` to more
            #   detailed information about the artist.
            #
            #   @return [Array<Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist>]
            required :artists,
                     -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist] }

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
            #   @return [Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::ExternalURLs]
            required :external_urls, -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::ExternalURLs }

            # @!attribute href
            #   A link to the Web API endpoint providing full details of the album.
            #
            #   @return [String]
            required :href, String

            # @!attribute images
            #   The cover art for the album in various sizes, widest first.
            #
            #   @return [Array<Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Image>]
            required :images,
                     -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Image] }

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
            #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::ReleaseDatePrecision]
            required :release_date_precision,
                     enum: -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::ReleaseDatePrecision }

            # @!attribute total_tracks
            #   The number of tracks in the album.
            #
            #   @return [Integer]
            required :total_tracks, Integer

            # @!attribute type
            #   The object type.
            #
            #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Type]
            required :type, enum: -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Type }

            # @!attribute uri
            #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   album.
            #
            #   @return [String]
            required :uri, String

            # @!attribute restrictions
            #   Included in the response when a content restriction is applied.
            #
            #   @return [Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Restrictions, nil]
            optional :restrictions, -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Restrictions }

            # @!method initialize(id:, album_type:, artists:, available_markets:, external_urls:, href:, images:, name:, release_date:, release_date_precision:, total_tracks:, type:, uri:, restrictions: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album} for more details.
            #
            #   The album on which the track appears. The album object includes a link in `href`
            #   to full information about the album.
            #
            #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the album
            #
            #   @param album_type [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::AlbumType] The type of the album.
            #
            #   @param artists [Array<Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist>] The artists of the album. Each artist object includes a link in `href` to more d
            #
            #   @param available_markets [Array<String>] The markets in which the album is available: [ISO 3166-1 alpha-2 country codes](
            #
            #   @param external_urls [Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::ExternalURLs] Known external URLs for this album.
            #
            #   @param href [String] A link to the Web API endpoint providing full details of the album.
            #
            #   @param images [Array<Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Image>] The cover art for the album in various sizes, widest first.
            #
            #   @param name [String] The name of the album. In case of an album takedown, the value may be an empty s
            #
            #   @param release_date [String] The date the album was first released.
            #
            #   @param release_date_precision [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::ReleaseDatePrecision] The precision with which `release_date` value is known.
            #
            #   @param total_tracks [Integer] The number of tracks in the album.
            #
            #   @param type [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Type] The object type.
            #
            #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the albu
            #
            #   @param restrictions [Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Restrictions] Included in the response when a content restriction is applied.

            # The type of the album.
            #
            # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album#album_type
            module AlbumType
              extend Spotted::Internal::Type::Enum

              ALBUM = :album
              SINGLE = :single
              COMPILATION = :compilation

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
              #   @return [Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist::ExternalURLs, nil]
              optional :external_urls,
                       -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist::ExternalURLs }

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
              #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist::Type, nil]
              optional :type, enum: -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist::Type }

              # @!attribute uri
              #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   artist.
              #
              #   @return [String, nil]
              optional :uri, String

              # @!method initialize(id: nil, external_urls: nil, href: nil, name: nil, type: nil, uri: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist} for more
              #   details.
              #
              #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
              #
              #   @param external_urls [Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist::ExternalURLs] Known external URLs for this artist.
              #
              #   @param href [String] A link to the Web API endpoint providing full details of the artist.
              #
              #   @param name [String] The name of the artist.
              #
              #   @param type [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist::Type] The object type.
              #
              #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

              # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist#external_urls
              class ExternalURLs < Spotted::Internal::Type::BaseModel
                # @!attribute spotify
                #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   object.
                #
                #   @return [String, nil]
                optional :spotify, String

                # @!method initialize(spotify: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist::ExternalURLs}
                #   for more details.
                #
                #   Known external URLs for this artist.
                #
                #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
              end

              # The object type.
              #
              # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Artist#type
              module Type
                extend Spotted::Internal::Type::Enum

                ARTIST = :artist

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album#external_urls
            class ExternalURLs < Spotted::Internal::Type::BaseModel
              # @!attribute spotify
              #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   object.
              #
              #   @return [String, nil]
              optional :spotify, String

              # @!method initialize(spotify: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::ExternalURLs} for
              #   more details.
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
              #   {Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Image} for more
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
            # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album#release_date_precision
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
            # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album#type
            module Type
              extend Spotted::Internal::Type::Enum

              ALBUM = :album

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album#restrictions
            class Restrictions < Spotted::Internal::Type::BaseModel
              # @!attribute reason
              #   The reason for the restriction. Albums may be restricted if the content is not
              #   available in a given market, to the user's subscription type, or when the user's
              #   account is set to not play explicit content. Additional reasons may be added in
              #   the future.
              #
              #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Restrictions::Reason, nil]
              optional :reason,
                       enum: -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Restrictions::Reason }

              # @!method initialize(reason: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Restrictions} for
              #   more details.
              #
              #   Included in the response when a content restriction is applied.
              #
              #   @param reason [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Restrictions::Reason] The reason for the restriction. Albums may be restricted if the content is not a

              # The reason for the restriction. Albums may be restricted if the content is not
              # available in a given market, to the user's subscription type, or when the user's
              # account is set to not play explicit content. Additional reasons may be added in
              # the future.
              #
              # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item::Album::Restrictions#reason
              module Reason
                extend Spotted::Internal::Type::Enum

                MARKET = :market
                PRODUCT = :product
                EXPLICIT = :explicit

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
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
            #   @return [Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist::ExternalURLs, nil]
            optional :external_urls,
                     -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist::ExternalURLs }

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
            #   @return [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist::Type, nil]
            optional :type, enum: -> { Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist::Type }

            # @!attribute uri
            #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   artist.
            #
            #   @return [String, nil]
            optional :uri, String

            # @!method initialize(id: nil, external_urls: nil, href: nil, name: nil, type: nil, uri: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist} for more
            #   details.
            #
            #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
            #
            #   @param external_urls [Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist::ExternalURLs] Known external URLs for this artist.
            #
            #   @param href [String] A link to the Web API endpoint providing full details of the artist.
            #
            #   @param name [String] The name of the artist.
            #
            #   @param type [Symbol, Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist::Type] The object type.
            #
            #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

            # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist#external_urls
            class ExternalURLs < Spotted::Internal::Type::BaseModel
              # @!attribute spotify
              #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   object.
              #
              #   @return [String, nil]
              optional :spotify, String

              # @!method initialize(spotify: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist::ExternalURLs}
              #   for more details.
              #
              #   Known external URLs for this artist.
              #
              #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
            end

            # The object type.
            #
            # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item::Artist#type
            module Type
              extend Spotted::Internal::Type::Enum

              ARTIST = :artist

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item#external_ids
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
            #   {Spotted::Models::SearchRetrieveResponse::Tracks::Item::ExternalIDs} for more
            #   details.
            #
            #   Known external IDs for the track.
            #
            #   @param ean [String] [International Article Number](http://en.wikipedia.org/wiki/International_Articl
            #
            #   @param isrc [String] [International Standard Recording Code](http://en.wikipedia.org/wiki/Internation
            #
            #   @param upc [String] [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
          end

          # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item#external_urls
          class ExternalURLs < Spotted::Internal::Type::BaseModel
            # @!attribute spotify
            #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   object.
            #
            #   @return [String, nil]
            optional :spotify, String

            # @!method initialize(spotify: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::SearchRetrieveResponse::Tracks::Item::ExternalURLs} for more
            #   details.
            #
            #   Known external URLs for this track.
            #
            #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
          end

          # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item#restrictions
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
            #   {Spotted::Models::SearchRetrieveResponse::Tracks::Item::Restrictions} for more
            #   details.
            #
            #   Included in the response when a content restriction is applied.
            #
            #   @param reason [String] The reason for the restriction. Supported values:
          end

          # The object type: "track".
          #
          # @see Spotted::Models::SearchRetrieveResponse::Tracks::Item#type
          module Type
            extend Spotted::Internal::Type::Enum

            TRACK = :track

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
