# frozen_string_literal: true

module Spotted
  module Models
    class TrackObject < Spotted::Internal::Type::BaseModel
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
      #   @return [Spotted::Models::TrackObject::Album, nil]
      optional :album, -> { Spotted::TrackObject::Album }

      # @!attribute artists
      #   The artists who performed the track. Each artist object includes a link in
      #   `href` to more detailed information about the artist.
      #
      #   @return [Array<Spotted::Models::SimplifiedArtistObject>, nil]
      optional :artists, -> { Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedArtistObject] }

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
      #   @return [Spotted::Models::ExternalIDObject, nil]
      optional :external_ids, -> { Spotted::ExternalIDObject }

      # @!attribute external_urls
      #   Known external URLs for this track.
      #
      #   @return [Spotted::Models::ExternalURLObject, nil]
      optional :external_urls, -> { Spotted::ExternalURLObject }

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
      #   @return [Spotted::Models::LinkedTrackObject, nil]
      optional :linked_from, -> { Spotted::LinkedTrackObject }

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
      #   @return [Spotted::Models::TrackRestrictionObject, nil]
      optional :restrictions, -> { Spotted::TrackRestrictionObject }

      # @!attribute track_number
      #   The number of the track. If an album has several discs, the track number is the
      #   number on the specified disc.
      #
      #   @return [Integer, nil]
      optional :track_number, Integer

      # @!attribute type
      #   The object type: "track".
      #
      #   @return [Symbol, Spotted::Models::TrackObject::Type, nil]
      optional :type, enum: -> { Spotted::TrackObject::Type }

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   track.
      #
      #   @return [String, nil]
      optional :uri, String

      # @!method initialize(id: nil, album: nil, artists: nil, available_markets: nil, disc_number: nil, duration_ms: nil, explicit: nil, external_ids: nil, external_urls: nil, href: nil, is_local: nil, is_playable: nil, linked_from: nil, name: nil, popularity: nil, preview_url: nil, restrictions: nil, track_number: nil, type: nil, uri: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::TrackObject} for more details.
      #
      #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track
      #
      #   @param album [Spotted::Models::TrackObject::Album] The album on which the track appears. The album object includes a link in `href`
      #
      #   @param artists [Array<Spotted::Models::SimplifiedArtistObject>] The artists who performed the track. Each artist object includes a link in `href
      #
      #   @param available_markets [Array<String>] A list of the countries in which the track can be played, identified by their [I
      #
      #   @param disc_number [Integer] The disc number (usually `1` unless the album consists of more than one disc).
      #
      #   @param duration_ms [Integer] The track length in milliseconds.
      #
      #   @param explicit [Boolean] Whether or not the track has explicit lyrics ( `true` = yes it does; `false` = n
      #
      #   @param external_ids [Spotted::Models::ExternalIDObject] Known external IDs for the track.
      #
      #   @param external_urls [Spotted::Models::ExternalURLObject] Known external URLs for this track.
      #
      #   @param href [String] A link to the Web API endpoint providing full details of the track.
      #
      #   @param is_local [Boolean] Whether or not the track is from a local file.
      #
      #   @param is_playable [Boolean] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
      #
      #   @param linked_from [Spotted::Models::LinkedTrackObject] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
      #
      #   @param name [String] The name of the track.
      #
      #   @param popularity [Integer] The popularity of the track. The value will be between 0 and 100, with 100 being
      #
      #   @param preview_url [String, nil] A link to a 30 second preview (MP3 format) of the track. Can be `null`
      #
      #   @param restrictions [Spotted::Models::TrackRestrictionObject] Included in the response when a content restriction is applied.
      #
      #   @param track_number [Integer] The number of the track. If an album has several discs, the track number is the
      #
      #   @param type [Symbol, Spotted::Models::TrackObject::Type] The object type: "track".
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the trac

      # @see Spotted::Models::TrackObject#album
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
        #   @return [Symbol, Spotted::Models::TrackObject::Album::AlbumType]
        required :album_type, enum: -> { Spotted::TrackObject::Album::AlbumType }

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
        #   @return [Symbol, Spotted::Models::TrackObject::Album::ReleaseDatePrecision]
        required :release_date_precision, enum: -> { Spotted::TrackObject::Album::ReleaseDatePrecision }

        # @!attribute total_tracks
        #   The number of tracks in the album.
        #
        #   @return [Integer]
        required :total_tracks, Integer

        # @!attribute type
        #   The object type.
        #
        #   @return [Symbol, Spotted::Models::TrackObject::Album::Type]
        required :type, enum: -> { Spotted::TrackObject::Album::Type }

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
        #   {Spotted::Models::TrackObject::Album} for more details.
        #
        #   The album on which the track appears. The album object includes a link in `href`
        #   to full information about the album.
        #
        #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the album
        #
        #   @param album_type [Symbol, Spotted::Models::TrackObject::Album::AlbumType] The type of the album.
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
        #   @param release_date_precision [Symbol, Spotted::Models::TrackObject::Album::ReleaseDatePrecision] The precision with which `release_date` value is known.
        #
        #   @param total_tracks [Integer] The number of tracks in the album.
        #
        #   @param type [Symbol, Spotted::Models::TrackObject::Album::Type] The object type.
        #
        #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the albu
        #
        #   @param restrictions [Spotted::Models::AlbumRestrictionObject] Included in the response when a content restriction is applied.

        # The type of the album.
        #
        # @see Spotted::Models::TrackObject::Album#album_type
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
        # @see Spotted::Models::TrackObject::Album#release_date_precision
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
        # @see Spotted::Models::TrackObject::Album#type
        module Type
          extend Spotted::Internal::Type::Enum

          ALBUM = :album

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The object type: "track".
      #
      # @see Spotted::Models::TrackObject#type
      module Type
        extend Spotted::Internal::Type::Enum

        TRACK = :track

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
