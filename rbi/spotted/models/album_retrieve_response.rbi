# typed: strong

module Spotted
  module Models
    class AlbumRetrieveResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::AlbumRetrieveResponse,
            Spotted::Internal::AnyHash
          )
        end

      # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      # album.
      sig { returns(String) }
      attr_accessor :id

      # The type of the album.
      sig do
        returns(Spotted::Models::AlbumRetrieveResponse::AlbumType::TaggedSymbol)
      end
      attr_accessor :album_type

      # The markets in which the album is available:
      # [ISO 3166-1 alpha-2 country codes](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
      # _**NOTE**: an album is considered available in a market when at least 1 of its
      # tracks is available in that market._
      sig { returns(T::Array[String]) }
      attr_accessor :available_markets

      # Known external URLs for this album.
      sig { returns(Spotted::ExternalURLObject) }
      attr_reader :external_urls

      sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
      attr_writer :external_urls

      # A link to the Web API endpoint providing full details of the album.
      sig { returns(String) }
      attr_accessor :href

      # The cover art for the album in various sizes, widest first.
      sig { returns(T::Array[Spotted::ImageObject]) }
      attr_accessor :images

      # The name of the album. In case of an album takedown, the value may be an empty
      # string.
      sig { returns(String) }
      attr_accessor :name

      # The date the album was first released.
      sig { returns(String) }
      attr_accessor :release_date

      # The precision with which `release_date` value is known.
      sig do
        returns(
          Spotted::Models::AlbumRetrieveResponse::ReleaseDatePrecision::TaggedSymbol
        )
      end
      attr_accessor :release_date_precision

      # The number of tracks in the album.
      sig { returns(Integer) }
      attr_accessor :total_tracks

      # The object type.
      sig do
        returns(Spotted::Models::AlbumRetrieveResponse::Type::TaggedSymbol)
      end
      attr_accessor :type

      # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      # album.
      sig { returns(String) }
      attr_accessor :uri

      # The artists of the album. Each artist object includes a link in `href` to more
      # detailed information about the artist.
      sig { returns(T.nilable(T::Array[Spotted::SimplifiedArtistObject])) }
      attr_reader :artists

      sig do
        params(artists: T::Array[Spotted::SimplifiedArtistObject::OrHash]).void
      end
      attr_writer :artists

      # The copyright statements of the album.
      sig { returns(T.nilable(T::Array[Spotted::CopyrightObject])) }
      attr_reader :copyrights

      sig do
        params(copyrights: T::Array[Spotted::CopyrightObject::OrHash]).void
      end
      attr_writer :copyrights

      # Known external IDs for the album.
      sig { returns(T.nilable(Spotted::ExternalIDObject)) }
      attr_reader :external_ids

      sig { params(external_ids: Spotted::ExternalIDObject::OrHash).void }
      attr_writer :external_ids

      # **Deprecated** The array is always empty.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :genres

      sig { params(genres: T::Array[String]).void }
      attr_writer :genres

      # The label associated with the album.
      sig { returns(T.nilable(String)) }
      attr_reader :label

      sig { params(label: String).void }
      attr_writer :label

      # The popularity of the album. The value will be between 0 and 100, with 100 being
      # the most popular.
      sig { returns(T.nilable(Integer)) }
      attr_reader :popularity

      sig { params(popularity: Integer).void }
      attr_writer :popularity

      # Included in the response when a content restriction is applied.
      sig { returns(T.nilable(Spotted::AlbumRestrictionObject)) }
      attr_reader :restrictions

      sig { params(restrictions: Spotted::AlbumRestrictionObject::OrHash).void }
      attr_writer :restrictions

      # The tracks of the album.
      sig { returns(T.nilable(Spotted::Models::AlbumRetrieveResponse::Tracks)) }
      attr_reader :tracks

      sig do
        params(
          tracks: Spotted::Models::AlbumRetrieveResponse::Tracks::OrHash
        ).void
      end
      attr_writer :tracks

      sig do
        params(
          id: String,
          album_type:
            Spotted::Models::AlbumRetrieveResponse::AlbumType::OrSymbol,
          available_markets: T::Array[String],
          external_urls: Spotted::ExternalURLObject::OrHash,
          href: String,
          images: T::Array[Spotted::ImageObject::OrHash],
          name: String,
          release_date: String,
          release_date_precision:
            Spotted::Models::AlbumRetrieveResponse::ReleaseDatePrecision::OrSymbol,
          total_tracks: Integer,
          type: Spotted::Models::AlbumRetrieveResponse::Type::OrSymbol,
          uri: String,
          artists: T::Array[Spotted::SimplifiedArtistObject::OrHash],
          copyrights: T::Array[Spotted::CopyrightObject::OrHash],
          external_ids: Spotted::ExternalIDObject::OrHash,
          genres: T::Array[String],
          label: String,
          popularity: Integer,
          restrictions: Spotted::AlbumRestrictionObject::OrHash,
          tracks: Spotted::Models::AlbumRetrieveResponse::Tracks::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # album.
        id:,
        # The type of the album.
        album_type:,
        # The markets in which the album is available:
        # [ISO 3166-1 alpha-2 country codes](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
        # _**NOTE**: an album is considered available in a market when at least 1 of its
        # tracks is available in that market._
        available_markets:,
        # Known external URLs for this album.
        external_urls:,
        # A link to the Web API endpoint providing full details of the album.
        href:,
        # The cover art for the album in various sizes, widest first.
        images:,
        # The name of the album. In case of an album takedown, the value may be an empty
        # string.
        name:,
        # The date the album was first released.
        release_date:,
        # The precision with which `release_date` value is known.
        release_date_precision:,
        # The number of tracks in the album.
        total_tracks:,
        # The object type.
        type:,
        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        # album.
        uri:,
        # The artists of the album. Each artist object includes a link in `href` to more
        # detailed information about the artist.
        artists: nil,
        # The copyright statements of the album.
        copyrights: nil,
        # Known external IDs for the album.
        external_ids: nil,
        # **Deprecated** The array is always empty.
        genres: nil,
        # The label associated with the album.
        label: nil,
        # The popularity of the album. The value will be between 0 and 100, with 100 being
        # the most popular.
        popularity: nil,
        # Included in the response when a content restriction is applied.
        restrictions: nil,
        # The tracks of the album.
        tracks: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            album_type:
              Spotted::Models::AlbumRetrieveResponse::AlbumType::TaggedSymbol,
            available_markets: T::Array[String],
            external_urls: Spotted::ExternalURLObject,
            href: String,
            images: T::Array[Spotted::ImageObject],
            name: String,
            release_date: String,
            release_date_precision:
              Spotted::Models::AlbumRetrieveResponse::ReleaseDatePrecision::TaggedSymbol,
            total_tracks: Integer,
            type: Spotted::Models::AlbumRetrieveResponse::Type::TaggedSymbol,
            uri: String,
            artists: T::Array[Spotted::SimplifiedArtistObject],
            copyrights: T::Array[Spotted::CopyrightObject],
            external_ids: Spotted::ExternalIDObject,
            genres: T::Array[String],
            label: String,
            popularity: Integer,
            restrictions: Spotted::AlbumRestrictionObject,
            tracks: Spotted::Models::AlbumRetrieveResponse::Tracks
          }
        )
      end
      def to_hash
      end

      # The type of the album.
      module AlbumType
        extend Spotted::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Spotted::Models::AlbumRetrieveResponse::AlbumType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALBUM =
          T.let(
            :album,
            Spotted::Models::AlbumRetrieveResponse::AlbumType::TaggedSymbol
          )
        SINGLE =
          T.let(
            :single,
            Spotted::Models::AlbumRetrieveResponse::AlbumType::TaggedSymbol
          )
        COMPILATION =
          T.let(
            :compilation,
            Spotted::Models::AlbumRetrieveResponse::AlbumType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Spotted::Models::AlbumRetrieveResponse::AlbumType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The precision with which `release_date` value is known.
      module ReleaseDatePrecision
        extend Spotted::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Spotted::Models::AlbumRetrieveResponse::ReleaseDatePrecision
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        YEAR =
          T.let(
            :year,
            Spotted::Models::AlbumRetrieveResponse::ReleaseDatePrecision::TaggedSymbol
          )
        MONTH =
          T.let(
            :month,
            Spotted::Models::AlbumRetrieveResponse::ReleaseDatePrecision::TaggedSymbol
          )
        DAY =
          T.let(
            :day,
            Spotted::Models::AlbumRetrieveResponse::ReleaseDatePrecision::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Spotted::Models::AlbumRetrieveResponse::ReleaseDatePrecision::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The object type.
      module Type
        extend Spotted::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Spotted::Models::AlbumRetrieveResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALBUM =
          T.let(
            :album,
            Spotted::Models::AlbumRetrieveResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Spotted::Models::AlbumRetrieveResponse::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Tracks < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::AlbumRetrieveResponse::Tracks,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig { returns(T::Array[Spotted::SimplifiedTrackObject]) }
        attr_accessor :items

        # The maximum number of items in the response (as set in the query or by default).
        sig { returns(Integer) }
        attr_accessor :limit

        # URL to the next page of items. ( `null` if none)
        sig { returns(T.nilable(String)) }
        attr_accessor :next_

        # The offset of the items returned (as set in the query or by default)
        sig { returns(Integer) }
        attr_accessor :offset

        # URL to the previous page of items. ( `null` if none)
        sig { returns(T.nilable(String)) }
        attr_accessor :previous

        # The total number of items available to return.
        sig { returns(Integer) }
        attr_accessor :total

        # The tracks of the album.
        sig do
          params(
            href: String,
            items: T::Array[Spotted::SimplifiedTrackObject::OrHash],
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # A link to the Web API endpoint returning the full result of the request
          href:,
          items:,
          # The maximum number of items in the response (as set in the query or by default).
          limit:,
          # URL to the next page of items. ( `null` if none)
          next_:,
          # The offset of the items returned (as set in the query or by default)
          offset:,
          # URL to the previous page of items. ( `null` if none)
          previous:,
          # The total number of items available to return.
          total:
        )
        end

        sig do
          override.returns(
            {
              href: String,
              items: T::Array[Spotted::SimplifiedTrackObject],
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              previous: T.nilable(String),
              total: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
