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
        #   @return [Array<Spotted::Models::AudiobookBase>]
        required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::AudiobookBase] }

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
        #   @param items [Array<Spotted::Models::AudiobookBase>]
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
        #   @return [Array<Spotted::Models::ShowBase>]
        required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::ShowBase] }

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
        #   @param items [Array<Spotted::Models::ShowBase>]
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
