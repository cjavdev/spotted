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
            #   @return [Array<Spotted::Models::SimplifiedArtistObject>, nil]
            optional :artists, -> { Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedArtistObject] }

            # @!attribute copyrights
            #   The copyright statements of the album.
            #
            #   @return [Array<Spotted::Models::CopyrightObject>, nil]
            optional :copyrights, -> { Spotted::Internal::Type::ArrayOf[Spotted::CopyrightObject] }

            # @!attribute external_ids
            #   Known external IDs for the album.
            #
            #   @return [Spotted::Models::ExternalIDObject, nil]
            optional :external_ids, -> { Spotted::ExternalIDObject }

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
            #   @return [Spotted::Models::AlbumRestrictionObject, nil]
            optional :restrictions, -> { Spotted::AlbumRestrictionObject }

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
            #   @param release_date_precision [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::ReleaseDatePrecision] The precision with which `release_date` value is known.
            #
            #   @param total_tracks [Integer] The number of tracks in the album.
            #
            #   @param type [Symbol, Spotted::Models::Me::AlbumListResponse::Item::Album::Type] The object type.
            #
            #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the albu
            #
            #   @param artists [Array<Spotted::Models::SimplifiedArtistObject>] The artists of the album. Each artist object includes a link in `href` to more d
            #
            #   @param copyrights [Array<Spotted::Models::CopyrightObject>] The copyright statements of the album.
            #
            #   @param external_ids [Spotted::Models::ExternalIDObject] Known external IDs for the album.
            #
            #   @param genres [Array<String>] **Deprecated** The array is always empty.
            #
            #   @param label [String] The label associated with the album.
            #
            #   @param popularity [Integer] The popularity of the album. The value will be between 0 and 100, with 100 being
            #
            #   @param restrictions [Spotted::Models::AlbumRestrictionObject] Included in the response when a content restriction is applied.
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

            # @see Spotted::Models::Me::AlbumListResponse::Item::Album#tracks
            class Tracks < Spotted::Internal::Type::BaseModel
              # @!attribute href
              #   A link to the Web API endpoint returning the full result of the request
              #
              #   @return [String]
              required :href, String

              # @!attribute items
              #
              #   @return [Array<Spotted::Models::SimplifiedTrackObject>]
              required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedTrackObject] }

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
              #   @param items [Array<Spotted::Models::SimplifiedTrackObject>]
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
    end
  end
end
