# typed: strong

module Spotted
  module Models
    class ArtistListAlbumsResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::ArtistListAlbumsResponse,
            Spotted::Internal::AnyHash
          )
        end

      # A link to the Web API endpoint returning the full result of the request
      sig { returns(String) }
      attr_accessor :href

      sig { returns(T::Array[Spotted::Models::ArtistListAlbumsResponse::Item]) }
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

      sig do
        params(
          href: String,
          items:
            T::Array[Spotted::Models::ArtistListAlbumsResponse::Item::OrHash],
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
            items: T::Array[Spotted::Models::ArtistListAlbumsResponse::Item],
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

      class Item < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::ArtistListAlbumsResponse::Item,
              Spotted::Internal::AnyHash
            )
          end

        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # album.
        sig { returns(String) }
        attr_accessor :id

        # This field describes the relationship between the artist and the album.
        sig do
          returns(
            Spotted::Models::ArtistListAlbumsResponse::Item::AlbumGroup::TaggedSymbol
          )
        end
        attr_accessor :album_group

        # The type of the album.
        sig do
          returns(
            Spotted::Models::ArtistListAlbumsResponse::Item::AlbumType::TaggedSymbol
          )
        end
        attr_accessor :album_type

        # The artists of the album. Each artist object includes a link in `href` to more
        # detailed information about the artist.
        sig do
          returns(
            T::Array[Spotted::Models::ArtistListAlbumsResponse::Item::Artist]
          )
        end
        attr_accessor :artists

        # The markets in which the album is available:
        # [ISO 3166-1 alpha-2 country codes](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
        # _**NOTE**: an album is considered available in a market when at least 1 of its
        # tracks is available in that market._
        sig { returns(T::Array[String]) }
        attr_accessor :available_markets

        # Known external URLs for this album.
        sig do
          returns(Spotted::Models::ArtistListAlbumsResponse::Item::ExternalURLs)
        end
        attr_reader :external_urls

        sig do
          params(
            external_urls:
              Spotted::Models::ArtistListAlbumsResponse::Item::ExternalURLs::OrHash
          ).void
        end
        attr_writer :external_urls

        # A link to the Web API endpoint providing full details of the album.
        sig { returns(String) }
        attr_accessor :href

        # The cover art for the album in various sizes, widest first.
        sig do
          returns(
            T::Array[Spotted::Models::ArtistListAlbumsResponse::Item::Image]
          )
        end
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
            Spotted::Models::ArtistListAlbumsResponse::Item::ReleaseDatePrecision::TaggedSymbol
          )
        end
        attr_accessor :release_date_precision

        # The number of tracks in the album.
        sig { returns(Integer) }
        attr_accessor :total_tracks

        # The object type.
        sig do
          returns(
            Spotted::Models::ArtistListAlbumsResponse::Item::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        # album.
        sig { returns(String) }
        attr_accessor :uri

        # Included in the response when a content restriction is applied.
        sig do
          returns(
            T.nilable(
              Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions
            )
          )
        end
        attr_reader :restrictions

        sig do
          params(
            restrictions:
              Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::OrHash
          ).void
        end
        attr_writer :restrictions

        sig do
          params(
            id: String,
            album_group:
              Spotted::Models::ArtistListAlbumsResponse::Item::AlbumGroup::OrSymbol,
            album_type:
              Spotted::Models::ArtistListAlbumsResponse::Item::AlbumType::OrSymbol,
            artists:
              T::Array[
                Spotted::Models::ArtistListAlbumsResponse::Item::Artist::OrHash
              ],
            available_markets: T::Array[String],
            external_urls:
              Spotted::Models::ArtistListAlbumsResponse::Item::ExternalURLs::OrHash,
            href: String,
            images:
              T::Array[
                Spotted::Models::ArtistListAlbumsResponse::Item::Image::OrHash
              ],
            name: String,
            release_date: String,
            release_date_precision:
              Spotted::Models::ArtistListAlbumsResponse::Item::ReleaseDatePrecision::OrSymbol,
            total_tracks: Integer,
            type:
              Spotted::Models::ArtistListAlbumsResponse::Item::Type::OrSymbol,
            uri: String,
            restrictions:
              Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # album.
          id:,
          # This field describes the relationship between the artist and the album.
          album_group:,
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
              album_group:
                Spotted::Models::ArtistListAlbumsResponse::Item::AlbumGroup::TaggedSymbol,
              album_type:
                Spotted::Models::ArtistListAlbumsResponse::Item::AlbumType::TaggedSymbol,
              artists:
                T::Array[
                  Spotted::Models::ArtistListAlbumsResponse::Item::Artist
                ],
              available_markets: T::Array[String],
              external_urls:
                Spotted::Models::ArtistListAlbumsResponse::Item::ExternalURLs,
              href: String,
              images:
                T::Array[
                  Spotted::Models::ArtistListAlbumsResponse::Item::Image
                ],
              name: String,
              release_date: String,
              release_date_precision:
                Spotted::Models::ArtistListAlbumsResponse::Item::ReleaseDatePrecision::TaggedSymbol,
              total_tracks: Integer,
              type:
                Spotted::Models::ArtistListAlbumsResponse::Item::Type::TaggedSymbol,
              uri: String,
              restrictions:
                Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions
            }
          )
        end
        def to_hash
        end

        # This field describes the relationship between the artist and the album.
        module AlbumGroup
          extend Spotted::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Spotted::Models::ArtistListAlbumsResponse::Item::AlbumGroup
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALBUM =
            T.let(
              :album,
              Spotted::Models::ArtistListAlbumsResponse::Item::AlbumGroup::TaggedSymbol
            )
          SINGLE =
            T.let(
              :single,
              Spotted::Models::ArtistListAlbumsResponse::Item::AlbumGroup::TaggedSymbol
            )
          COMPILATION =
            T.let(
              :compilation,
              Spotted::Models::ArtistListAlbumsResponse::Item::AlbumGroup::TaggedSymbol
            )
          APPEARS_ON =
            T.let(
              :appears_on,
              Spotted::Models::ArtistListAlbumsResponse::Item::AlbumGroup::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Spotted::Models::ArtistListAlbumsResponse::Item::AlbumGroup::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of the album.
        module AlbumType
          extend Spotted::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Spotted::Models::ArtistListAlbumsResponse::Item::AlbumType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALBUM =
            T.let(
              :album,
              Spotted::Models::ArtistListAlbumsResponse::Item::AlbumType::TaggedSymbol
            )
          SINGLE =
            T.let(
              :single,
              Spotted::Models::ArtistListAlbumsResponse::Item::AlbumType::TaggedSymbol
            )
          COMPILATION =
            T.let(
              :compilation,
              Spotted::Models::ArtistListAlbumsResponse::Item::AlbumType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Spotted::Models::ArtistListAlbumsResponse::Item::AlbumType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Artist < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ArtistListAlbumsResponse::Item::Artist,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # artist.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Known external URLs for this artist.
          sig do
            returns(
              T.nilable(
                Spotted::Models::ArtistListAlbumsResponse::Item::Artist::ExternalURLs
              )
            )
          end
          attr_reader :external_urls

          sig do
            params(
              external_urls:
                Spotted::Models::ArtistListAlbumsResponse::Item::Artist::ExternalURLs::OrHash
            ).void
          end
          attr_writer :external_urls

          # A link to the Web API endpoint providing full details of the artist.
          sig { returns(T.nilable(String)) }
          attr_reader :href

          sig { params(href: String).void }
          attr_writer :href

          # The name of the artist.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # The object type.
          sig do
            returns(
              T.nilable(
                Spotted::Models::ArtistListAlbumsResponse::Item::Artist::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Spotted::Models::ArtistListAlbumsResponse::Item::Artist::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # artist.
          sig { returns(T.nilable(String)) }
          attr_reader :uri

          sig { params(uri: String).void }
          attr_writer :uri

          sig do
            params(
              id: String,
              external_urls:
                Spotted::Models::ArtistListAlbumsResponse::Item::Artist::ExternalURLs::OrHash,
              href: String,
              name: String,
              type:
                Spotted::Models::ArtistListAlbumsResponse::Item::Artist::Type::OrSymbol,
              uri: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            # artist.
            id: nil,
            # Known external URLs for this artist.
            external_urls: nil,
            # A link to the Web API endpoint providing full details of the artist.
            href: nil,
            # The name of the artist.
            name: nil,
            # The object type.
            type: nil,
            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # artist.
            uri: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                external_urls:
                  Spotted::Models::ArtistListAlbumsResponse::Item::Artist::ExternalURLs,
                href: String,
                name: String,
                type:
                  Spotted::Models::ArtistListAlbumsResponse::Item::Artist::Type::TaggedSymbol,
                uri: String
              }
            )
          end
          def to_hash
          end

          class ExternalURLs < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::ArtistListAlbumsResponse::Item::Artist::ExternalURLs,
                  Spotted::Internal::AnyHash
                )
              end

            # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            # object.
            sig { returns(T.nilable(String)) }
            attr_reader :spotify

            sig { params(spotify: String).void }
            attr_writer :spotify

            # Known external URLs for this artist.
            sig { params(spotify: String).returns(T.attached_class) }
            def self.new(
              # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              # object.
              spotify: nil
            )
            end

            sig { override.returns({ spotify: String }) }
            def to_hash
            end
          end

          # The object type.
          module Type
            extend Spotted::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Spotted::Models::ArtistListAlbumsResponse::Item::Artist::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ARTIST =
              T.let(
                :artist,
                Spotted::Models::ArtistListAlbumsResponse::Item::Artist::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::ArtistListAlbumsResponse::Item::Artist::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ExternalURLs < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ArtistListAlbumsResponse::Item::ExternalURLs,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
          # object.
          sig { returns(T.nilable(String)) }
          attr_reader :spotify

          sig { params(spotify: String).void }
          attr_writer :spotify

          # Known external URLs for this album.
          sig { params(spotify: String).returns(T.attached_class) }
          def self.new(
            # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            # object.
            spotify: nil
          )
          end

          sig { override.returns({ spotify: String }) }
          def to_hash
          end
        end

        class Image < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ArtistListAlbumsResponse::Item::Image,
                Spotted::Internal::AnyHash
              )
            end

          # The image height in pixels.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :height

          # The source URL of the image.
          sig { returns(String) }
          attr_accessor :url

          # The image width in pixels.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :width

          sig do
            params(
              height: T.nilable(Integer),
              url: String,
              width: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # The image height in pixels.
            height:,
            # The source URL of the image.
            url:,
            # The image width in pixels.
            width:
          )
          end

          sig do
            override.returns(
              {
                height: T.nilable(Integer),
                url: String,
                width: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end

        # The precision with which `release_date` value is known.
        module ReleaseDatePrecision
          extend Spotted::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Spotted::Models::ArtistListAlbumsResponse::Item::ReleaseDatePrecision
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          YEAR =
            T.let(
              :year,
              Spotted::Models::ArtistListAlbumsResponse::Item::ReleaseDatePrecision::TaggedSymbol
            )
          MONTH =
            T.let(
              :month,
              Spotted::Models::ArtistListAlbumsResponse::Item::ReleaseDatePrecision::TaggedSymbol
            )
          DAY =
            T.let(
              :day,
              Spotted::Models::ArtistListAlbumsResponse::Item::ReleaseDatePrecision::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Spotted::Models::ArtistListAlbumsResponse::Item::ReleaseDatePrecision::TaggedSymbol
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
                Spotted::Models::ArtistListAlbumsResponse::Item::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALBUM =
            T.let(
              :album,
              Spotted::Models::ArtistListAlbumsResponse::Item::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Spotted::Models::ArtistListAlbumsResponse::Item::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Restrictions < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions,
                Spotted::Internal::AnyHash
              )
            end

          # The reason for the restriction. Albums may be restricted if the content is not
          # available in a given market, to the user's subscription type, or when the user's
          # account is set to not play explicit content. Additional reasons may be added in
          # the future.
          sig do
            returns(
              T.nilable(
                Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::Reason::TaggedSymbol
              )
            )
          end
          attr_reader :reason

          sig do
            params(
              reason:
                Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::Reason::OrSymbol
            ).void
          end
          attr_writer :reason

          # Included in the response when a content restriction is applied.
          sig do
            params(
              reason:
                Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::Reason::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The reason for the restriction. Albums may be restricted if the content is not
            # available in a given market, to the user's subscription type, or when the user's
            # account is set to not play explicit content. Additional reasons may be added in
            # the future.
            reason: nil
          )
          end

          sig do
            override.returns(
              {
                reason:
                  Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::Reason::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The reason for the restriction. Albums may be restricted if the content is not
          # available in a given market, to the user's subscription type, or when the user's
          # account is set to not play explicit content. Additional reasons may be added in
          # the future.
          module Reason
            extend Spotted::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MARKET =
              T.let(
                :market,
                Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::Reason::TaggedSymbol
              )
            PRODUCT =
              T.let(
                :product,
                Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::Reason::TaggedSymbol
              )
            EXPLICIT =
              T.let(
                :explicit,
                Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::ArtistListAlbumsResponse::Item::Restrictions::Reason::TaggedSymbol
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
