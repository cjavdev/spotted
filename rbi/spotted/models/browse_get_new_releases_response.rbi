# typed: strong

module Spotted
  module Models
    class BrowseGetNewReleasesResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::BrowseGetNewReleasesResponse,
            Spotted::Internal::AnyHash
          )
        end

      sig { returns(Spotted::Models::BrowseGetNewReleasesResponse::Albums) }
      attr_reader :albums

      sig do
        params(
          albums: Spotted::Models::BrowseGetNewReleasesResponse::Albums::OrHash
        ).void
      end
      attr_writer :albums

      sig do
        params(
          albums: Spotted::Models::BrowseGetNewReleasesResponse::Albums::OrHash
        ).returns(T.attached_class)
      end
      def self.new(albums:)
      end

      sig do
        override.returns(
          { albums: Spotted::Models::BrowseGetNewReleasesResponse::Albums }
        )
      end
      def to_hash
      end

      class Albums < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::BrowseGetNewReleasesResponse::Albums,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

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

        sig do
          returns(
            T.nilable(
              T::Array[
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item
              ]
            )
          )
        end
        attr_reader :items

        sig do
          params(
            items:
              T::Array[
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::OrHash
              ]
          ).void
        end
        attr_writer :items

        sig do
          params(
            href: String,
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total: Integer,
            items:
              T::Array[
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # A link to the Web API endpoint returning the full result of the request
          href:,
          # The maximum number of items in the response (as set in the query or by default).
          limit:,
          # URL to the next page of items. ( `null` if none)
          next_:,
          # The offset of the items returned (as set in the query or by default)
          offset:,
          # URL to the previous page of items. ( `null` if none)
          previous:,
          # The total number of items available to return.
          total:,
          items: nil
        )
        end

        sig do
          override.returns(
            {
              href: String,
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              previous: T.nilable(String),
              total: Integer,
              items:
                T::Array[
                  Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item
                ]
            }
          )
        end
        def to_hash
        end

        class Item < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # album.
          sig { returns(String) }
          attr_accessor :id

          # The type of the album.
          sig do
            returns(
              Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::AlbumType::TaggedSymbol
            )
          end
          attr_accessor :album_type

          # The artists of the album. Each artist object includes a link in `href` to more
          # detailed information about the artist.
          sig { returns(T::Array[Spotted::SimplifiedArtistObject]) }
          attr_accessor :artists

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
              Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
            )
          end
          attr_accessor :release_date_precision

          # The number of tracks in the album.
          sig { returns(Integer) }
          attr_accessor :total_tracks

          # The object type.
          sig do
            returns(
              Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # album.
          sig { returns(String) }
          attr_accessor :uri

          # Included in the response when a content restriction is applied.
          sig { returns(T.nilable(Spotted::AlbumRestrictionObject)) }
          attr_reader :restrictions

          sig do
            params(restrictions: Spotted::AlbumRestrictionObject::OrHash).void
          end
          attr_writer :restrictions

          sig do
            params(
              id: String,
              album_type:
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::AlbumType::OrSymbol,
              artists: T::Array[Spotted::SimplifiedArtistObject::OrHash],
              available_markets: T::Array[String],
              external_urls: Spotted::ExternalURLObject::OrHash,
              href: String,
              images: T::Array[Spotted::ImageObject::OrHash],
              name: String,
              release_date: String,
              release_date_precision:
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::ReleaseDatePrecision::OrSymbol,
              total_tracks: Integer,
              type:
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::Type::OrSymbol,
              uri: String,
              restrictions: Spotted::AlbumRestrictionObject::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            # album.
            id:,
            # The type of the album.
            album_type:,
            # The artists of the album. Each artist object includes a link in `href` to more
            # detailed information about the artist.
            artists:,
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
            # Included in the response when a content restriction is applied.
            restrictions: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                album_type:
                  Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::AlbumType::TaggedSymbol,
                artists: T::Array[Spotted::SimplifiedArtistObject],
                available_markets: T::Array[String],
                external_urls: Spotted::ExternalURLObject,
                href: String,
                images: T::Array[Spotted::ImageObject],
                name: String,
                release_date: String,
                release_date_precision:
                  Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol,
                total_tracks: Integer,
                type:
                  Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::Type::TaggedSymbol,
                uri: String,
                restrictions: Spotted::AlbumRestrictionObject
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
                T.all(
                  Symbol,
                  Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::AlbumType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALBUM =
              T.let(
                :album,
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::AlbumType::TaggedSymbol
              )
            SINGLE =
              T.let(
                :single,
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::AlbumType::TaggedSymbol
              )
            COMPILATION =
              T.let(
                :compilation,
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::AlbumType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::AlbumType::TaggedSymbol
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
                  Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::ReleaseDatePrecision
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            YEAR =
              T.let(
                :year,
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
              )
            DAY =
              T.let(
                :day,
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
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
                T.all(
                  Symbol,
                  Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALBUM =
              T.let(
                :album,
                Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::BrowseGetNewReleasesResponse::Albums::Item::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
