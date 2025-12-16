# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Artists#list_albums
    class ArtistListAlbumsResponse < Spotted::Internal::Type::BaseModel
      # @!attribute id
      #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   album.
      #
      #   @return [String]
      required :id, String

      # @!attribute album_group
      #   This field describes the relationship between the artist and the album.
      #
      #   @return [Symbol, Spotted::Models::ArtistListAlbumsResponse::AlbumGroup]
      required :album_group, enum: -> { Spotted::Models::ArtistListAlbumsResponse::AlbumGroup }

      # @!attribute album_type
      #   The type of the album.
      #
      #   @return [Symbol, Spotted::Models::ArtistListAlbumsResponse::AlbumType]
      required :album_type, enum: -> { Spotted::Models::ArtistListAlbumsResponse::AlbumType }

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
      #   @return [Symbol, Spotted::Models::ArtistListAlbumsResponse::ReleaseDatePrecision]
      required :release_date_precision,
               enum: -> { Spotted::Models::ArtistListAlbumsResponse::ReleaseDatePrecision }

      # @!attribute total_tracks
      #   The number of tracks in the album.
      #
      #   @return [Integer]
      required :total_tracks, Integer

      # @!attribute type
      #   The object type.
      #
      #   @return [Symbol, :album]
      required :type, const: :album

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   album.
      #
      #   @return [String]
      required :uri, String

      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!attribute restrictions
      #   Included in the response when a content restriction is applied.
      #
      #   @return [Spotted::Models::AlbumRestrictionObject, nil]
      optional :restrictions, -> { Spotted::AlbumRestrictionObject }

      # @!method initialize(id:, album_group:, album_type:, artists:, available_markets:, external_urls:, href:, images:, name:, release_date:, release_date_precision:, total_tracks:, uri:, published: nil, restrictions: nil, type: :album)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ArtistListAlbumsResponse} for more details.
      #
      #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the album
      #
      #   @param album_group [Symbol, Spotted::Models::ArtistListAlbumsResponse::AlbumGroup] This field describes the relationship between the artist and the album.
      #
      #   @param album_type [Symbol, Spotted::Models::ArtistListAlbumsResponse::AlbumType] The type of the album.
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
      #   @param release_date_precision [Symbol, Spotted::Models::ArtistListAlbumsResponse::ReleaseDatePrecision] The precision with which `release_date` value is known.
      #
      #   @param total_tracks [Integer] The number of tracks in the album.
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the albu
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param restrictions [Spotted::Models::AlbumRestrictionObject] Included in the response when a content restriction is applied.
      #
      #   @param type [Symbol, :album] The object type.

      # This field describes the relationship between the artist and the album.
      #
      # @see Spotted::Models::ArtistListAlbumsResponse#album_group
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
      # @see Spotted::Models::ArtistListAlbumsResponse#album_type
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
      # @see Spotted::Models::ArtistListAlbumsResponse#release_date_precision
      module ReleaseDatePrecision
        extend Spotted::Internal::Type::Enum

        YEAR = :year
        MONTH = :month
        DAY = :day

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
