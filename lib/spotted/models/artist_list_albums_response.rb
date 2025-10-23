# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Artists#list_albums
    class ArtistListAlbumsResponse < Spotted::Internal::Type::BaseModel
      # @!attribute href
      #   A link to the Web API endpoint returning the full result of the request
      #
      #   @return [String]
      required :href, String

      # @!attribute items
      #
      #   @return [Array<Spotted::Models::ArtistListAlbumsResponse::Item>]
      required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ArtistListAlbumsResponse::Item] }

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
      #   {Spotted::Models::ArtistListAlbumsResponse} for more details.
      #
      #   @param href [String] A link to the Web API endpoint returning the full result of the request
      #
      #   @param items [Array<Spotted::Models::ArtistListAlbumsResponse::Item>]
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

        # @!attribute album_group
        #   This field describes the relationship between the artist and the album.
        #
        #   @return [Symbol, Spotted::Models::ArtistListAlbumsResponse::Item::AlbumGroup]
        required :album_group, enum: -> { Spotted::Models::ArtistListAlbumsResponse::Item::AlbumGroup }

        # @!attribute album_type
        #   The type of the album.
        #
        #   @return [Symbol, Spotted::Models::ArtistListAlbumsResponse::Item::AlbumType]
        required :album_type, enum: -> { Spotted::Models::ArtistListAlbumsResponse::Item::AlbumType }

        # @!attribute artists
        #   The artists of the album. Each artist object includes a link in `href` to more
        #   detailed information about the artist.
        #
        #   @return [Array<Spotted::Models::ArtistListAlbumsResponse::Item::Artist>]
        required :artists,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ArtistListAlbumsResponse::Item::Artist] }

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
        #   @return [Spotted::Models::ArtistListAlbumsResponse::Item::ExternalURLs]
        required :external_urls, -> { Spotted::Models::ArtistListAlbumsResponse::Item::ExternalURLs }

        # @!attribute href
        #   A link to the Web API endpoint providing full details of the album.
        #
        #   @return [String]
        required :href, String

        # @!attribute images
        #   The cover art for the album in various sizes, widest first.
        #
        #   @return [Array<Spotted::Models::ArtistListAlbumsResponse::Item::Image>]
        required :images,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ArtistListAlbumsResponse::Item::Image] }

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
        #   @return [Symbol, Spotted::Models::ArtistListAlbumsResponse::Item::ReleaseDatePrecision]
        required :release_date_precision,
                 enum: -> { Spotted::Models::ArtistListAlbumsResponse::Item::ReleaseDatePrecision }

        # @!attribute total_tracks
        #   The number of tracks in the album.
        #
        #   @return [Integer]
        required :total_tracks, Integer

        # @!attribute type
        #   The object type.
        #
        #   @return [Symbol, Spotted::Models::ArtistListAlbumsResponse::Item::Type]
        required :type, enum: -> { Spotted::Models::ArtistListAlbumsResponse::Item::Type }

        # @!attribute uri
        #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        #   album.
        #
        #   @return [String]
        required :uri, String

        # @!attribute restrictions
        #   Included in the response when a content restriction is applied.
        #
        #   @return [Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions, nil]
        optional :restrictions, -> { Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions }

        # @!method initialize(id:, album_group:, album_type:, artists:, available_markets:, external_urls:, href:, images:, name:, release_date:, release_date_precision:, total_tracks:, type:, uri:, restrictions: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::ArtistListAlbumsResponse::Item} for more details.
        #
        #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the album
        #
        #   @param album_group [Symbol, Spotted::Models::ArtistListAlbumsResponse::Item::AlbumGroup] This field describes the relationship between the artist and the album.
        #
        #   @param album_type [Symbol, Spotted::Models::ArtistListAlbumsResponse::Item::AlbumType] The type of the album.
        #
        #   @param artists [Array<Spotted::Models::ArtistListAlbumsResponse::Item::Artist>] The artists of the album. Each artist object includes a link in `href` to more d
        #
        #   @param available_markets [Array<String>] The markets in which the album is available: [ISO 3166-1 alpha-2 country codes](
        #
        #   @param external_urls [Spotted::Models::ArtistListAlbumsResponse::Item::ExternalURLs] Known external URLs for this album.
        #
        #   @param href [String] A link to the Web API endpoint providing full details of the album.
        #
        #   @param images [Array<Spotted::Models::ArtistListAlbumsResponse::Item::Image>] The cover art for the album in various sizes, widest first.
        #
        #   @param name [String] The name of the album. In case of an album takedown, the value may be an empty s
        #
        #   @param release_date [String] The date the album was first released.
        #
        #   @param release_date_precision [Symbol, Spotted::Models::ArtistListAlbumsResponse::Item::ReleaseDatePrecision] The precision with which `release_date` value is known.
        #
        #   @param total_tracks [Integer] The number of tracks in the album.
        #
        #   @param type [Symbol, Spotted::Models::ArtistListAlbumsResponse::Item::Type] The object type.
        #
        #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the albu
        #
        #   @param restrictions [Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions] Included in the response when a content restriction is applied.

        # This field describes the relationship between the artist and the album.
        #
        # @see Spotted::Models::ArtistListAlbumsResponse::Item#album_group
        module AlbumGroup
          extend Spotted::Internal::Type::Enum

          ALBUM = :album
          SINGLE = :single
          COMPILATION = :compilation
          APPEARS_ON = :appears_on

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of the album.
        #
        # @see Spotted::Models::ArtistListAlbumsResponse::Item#album_type
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
          #   @return [Spotted::Models::ArtistListAlbumsResponse::Item::Artist::ExternalURLs, nil]
          optional :external_urls, -> { Spotted::Models::ArtistListAlbumsResponse::Item::Artist::ExternalURLs }

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
          #   @return [Symbol, Spotted::Models::ArtistListAlbumsResponse::Item::Artist::Type, nil]
          optional :type, enum: -> { Spotted::Models::ArtistListAlbumsResponse::Item::Artist::Type }

          # @!attribute uri
          #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   artist.
          #
          #   @return [String, nil]
          optional :uri, String

          # @!method initialize(id: nil, external_urls: nil, href: nil, name: nil, type: nil, uri: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::ArtistListAlbumsResponse::Item::Artist} for more details.
          #
          #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
          #
          #   @param external_urls [Spotted::Models::ArtistListAlbumsResponse::Item::Artist::ExternalURLs] Known external URLs for this artist.
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the artist.
          #
          #   @param name [String] The name of the artist.
          #
          #   @param type [Symbol, Spotted::Models::ArtistListAlbumsResponse::Item::Artist::Type] The object type.
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

          # @see Spotted::Models::ArtistListAlbumsResponse::Item::Artist#external_urls
          class ExternalURLs < Spotted::Internal::Type::BaseModel
            # @!attribute spotify
            #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   object.
            #
            #   @return [String, nil]
            optional :spotify, String

            # @!method initialize(spotify: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::ArtistListAlbumsResponse::Item::Artist::ExternalURLs} for more
            #   details.
            #
            #   Known external URLs for this artist.
            #
            #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
          end

          # The object type.
          #
          # @see Spotted::Models::ArtistListAlbumsResponse::Item::Artist#type
          module Type
            extend Spotted::Internal::Type::Enum

            ARTIST = :artist

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Spotted::Models::ArtistListAlbumsResponse::Item#external_urls
        class ExternalURLs < Spotted::Internal::Type::BaseModel
          # @!attribute spotify
          #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   object.
          #
          #   @return [String, nil]
          optional :spotify, String

          # @!method initialize(spotify: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::ArtistListAlbumsResponse::Item::ExternalURLs} for more
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
          #   {Spotted::Models::ArtistListAlbumsResponse::Item::Image} for more details.
          #
          #   @param height [Integer, nil] The image height in pixels.
          #
          #   @param url [String] The source URL of the image.
          #
          #   @param width [Integer, nil] The image width in pixels.
        end

        # The precision with which `release_date` value is known.
        #
        # @see Spotted::Models::ArtistListAlbumsResponse::Item#release_date_precision
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
        # @see Spotted::Models::ArtistListAlbumsResponse::Item#type
        module Type
          extend Spotted::Internal::Type::Enum

          ALBUM = :album

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Spotted::Models::ArtistListAlbumsResponse::Item#restrictions
        class Restrictions < Spotted::Internal::Type::BaseModel
          # @!attribute reason
          #   The reason for the restriction. Albums may be restricted if the content is not
          #   available in a given market, to the user's subscription type, or when the user's
          #   account is set to not play explicit content. Additional reasons may be added in
          #   the future.
          #
          #   @return [Symbol, Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::Reason, nil]
          optional :reason, enum: -> { Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::Reason }

          # @!method initialize(reason: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions} for more
          #   details.
          #
          #   Included in the response when a content restriction is applied.
          #
          #   @param reason [Symbol, Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::Reason] The reason for the restriction. Albums may be restricted if the content is not a

          # The reason for the restriction. Albums may be restricted if the content is not
          # available in a given market, to the user's subscription type, or when the user's
          # account is set to not play explicit content. Additional reasons may be added in
          # the future.
          #
          # @see Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions#reason
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
  end
end
