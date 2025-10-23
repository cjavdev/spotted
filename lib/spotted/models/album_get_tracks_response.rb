# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Albums#get_tracks
    class AlbumGetTracksResponse < Spotted::Internal::Type::BaseModel
      # @!attribute href
      #   A link to the Web API endpoint returning the full result of the request
      #
      #   @return [String]
      required :href, String

      # @!attribute items
      #
      #   @return [Array<Spotted::Models::AlbumGetTracksResponse::Item>]
      required :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::AlbumGetTracksResponse::Item] }

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
      #   {Spotted::Models::AlbumGetTracksResponse} for more details.
      #
      #   @param href [String] A link to the Web API endpoint returning the full result of the request
      #
      #   @param items [Array<Spotted::Models::AlbumGetTracksResponse::Item>]
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
        #   @return [Array<Spotted::Models::AlbumGetTracksResponse::Item::Artist>, nil]
        optional :artists,
                 -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::AlbumGetTracksResponse::Item::Artist] }

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
        #   @return [Spotted::Models::AlbumGetTracksResponse::Item::ExternalURLs, nil]
        optional :external_urls, -> { Spotted::Models::AlbumGetTracksResponse::Item::ExternalURLs }

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
        #   @return [Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom, nil]
        optional :linked_from, -> { Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom }

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
        #   @return [Spotted::Models::AlbumGetTracksResponse::Item::Restrictions, nil]
        optional :restrictions, -> { Spotted::Models::AlbumGetTracksResponse::Item::Restrictions }

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
        #   {Spotted::Models::AlbumGetTracksResponse::Item} for more details.
        #
        #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track
        #
        #   @param artists [Array<Spotted::Models::AlbumGetTracksResponse::Item::Artist>] The artists who performed the track. Each artist object includes a link in `href
        #
        #   @param available_markets [Array<String>] A list of the countries in which the track can be played, identified by their [I
        #
        #   @param disc_number [Integer] The disc number (usually `1` unless the album consists of more than one disc).
        #
        #   @param duration_ms [Integer] The track length in milliseconds.
        #
        #   @param explicit [Boolean] Whether or not the track has explicit lyrics ( `true` = yes it does; `false` = n
        #
        #   @param external_urls [Spotted::Models::AlbumGetTracksResponse::Item::ExternalURLs] External URLs for this track.
        #
        #   @param href [String] A link to the Web API endpoint providing full details of the track.
        #
        #   @param is_local [Boolean] Whether or not the track is from a local file.
        #
        #   @param is_playable [Boolean] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
        #
        #   @param linked_from [Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
        #
        #   @param name [String] The name of the track.
        #
        #   @param preview_url [String, nil] A URL to a 30 second preview (MP3 format) of the track.
        #
        #   @param restrictions [Spotted::Models::AlbumGetTracksResponse::Item::Restrictions] Included in the response when a content restriction is applied.
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
          #   @return [Spotted::Models::AlbumGetTracksResponse::Item::Artist::ExternalURLs, nil]
          optional :external_urls, -> { Spotted::Models::AlbumGetTracksResponse::Item::Artist::ExternalURLs }

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
          #   @return [Symbol, Spotted::Models::AlbumGetTracksResponse::Item::Artist::Type, nil]
          optional :type, enum: -> { Spotted::Models::AlbumGetTracksResponse::Item::Artist::Type }

          # @!attribute uri
          #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   artist.
          #
          #   @return [String, nil]
          optional :uri, String

          # @!method initialize(id: nil, external_urls: nil, href: nil, name: nil, type: nil, uri: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::AlbumGetTracksResponse::Item::Artist} for more details.
          #
          #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
          #
          #   @param external_urls [Spotted::Models::AlbumGetTracksResponse::Item::Artist::ExternalURLs] Known external URLs for this artist.
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the artist.
          #
          #   @param name [String] The name of the artist.
          #
          #   @param type [Symbol, Spotted::Models::AlbumGetTracksResponse::Item::Artist::Type] The object type.
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

          # @see Spotted::Models::AlbumGetTracksResponse::Item::Artist#external_urls
          class ExternalURLs < Spotted::Internal::Type::BaseModel
            # @!attribute spotify
            #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   object.
            #
            #   @return [String, nil]
            optional :spotify, String

            # @!method initialize(spotify: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::AlbumGetTracksResponse::Item::Artist::ExternalURLs} for more
            #   details.
            #
            #   Known external URLs for this artist.
            #
            #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
          end

          # The object type.
          #
          # @see Spotted::Models::AlbumGetTracksResponse::Item::Artist#type
          module Type
            extend Spotted::Internal::Type::Enum

            ARTIST = :artist

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Spotted::Models::AlbumGetTracksResponse::Item#external_urls
        class ExternalURLs < Spotted::Internal::Type::BaseModel
          # @!attribute spotify
          #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
          #   object.
          #
          #   @return [String, nil]
          optional :spotify, String

          # @!method initialize(spotify: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::AlbumGetTracksResponse::Item::ExternalURLs} for more details.
          #
          #   External URLs for this track.
          #
          #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
        end

        # @see Spotted::Models::AlbumGetTracksResponse::Item#linked_from
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
          #   @return [Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom::ExternalURLs, nil]
          optional :external_urls, -> { Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom::ExternalURLs }

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
          #   {Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom} for more details.
          #
          #   Part of the response when
          #   [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied
          #   and is only part of the response if the track linking, in fact, exists. The
          #   requested track has been replaced with a different track. The track in the
          #   `linked_from` object contains information about the originally requested track.
          #
          #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track
          #
          #   @param external_urls [Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom::ExternalURLs] Known external URLs for this track.
          #
          #   @param href [String] A link to the Web API endpoint providing full details of the track.
          #
          #   @param type [String] The object type: "track".
          #
          #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the trac

          # @see Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom#external_urls
          class ExternalURLs < Spotted::Internal::Type::BaseModel
            # @!attribute spotify
            #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   object.
            #
            #   @return [String, nil]
            optional :spotify, String

            # @!method initialize(spotify: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom::ExternalURLs} for
            #   more details.
            #
            #   Known external URLs for this track.
            #
            #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
          end
        end

        # @see Spotted::Models::AlbumGetTracksResponse::Item#restrictions
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
          #   {Spotted::Models::AlbumGetTracksResponse::Item::Restrictions} for more details.
          #
          #   Included in the response when a content restriction is applied.
          #
          #   @param reason [String] The reason for the restriction. Supported values:
        end
      end
    end
  end
end
