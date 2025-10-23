# typed: strong

module Spotted
  module Models
    module Me
      class AlbumListResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::AlbumListResponse,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig { returns(T::Array[Spotted::Models::Me::AlbumListResponse::Item]) }
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
              T::Array[Spotted::Models::Me::AlbumListResponse::Item::OrHash],
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
              items: T::Array[Spotted::Models::Me::AlbumListResponse::Item],
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
                Spotted::Models::Me::AlbumListResponse::Item,
                Spotted::Internal::AnyHash
              )
            end

          # The date and time the album was saved Timestamps are returned in ISO 8601 format
          # as Coordinated Universal Time (UTC) with a zero offset: YYYY-MM-DDTHH:MM:SSZ. If
          # the time is imprecise (for example, the date/time of an album release), an
          # additional field indicates the precision; see for example, release_date in an
          # album object.
          sig { returns(T.nilable(Time)) }
          attr_reader :added_at

          sig { params(added_at: Time).void }
          attr_writer :added_at

          # Information about the album.
          sig do
            returns(
              T.nilable(Spotted::Models::Me::AlbumListResponse::Item::Album)
            )
          end
          attr_reader :album

          sig do
            params(
              album: Spotted::Models::Me::AlbumListResponse::Item::Album::OrHash
            ).void
          end
          attr_writer :album

          sig do
            params(
              added_at: Time,
              album: Spotted::Models::Me::AlbumListResponse::Item::Album::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The date and time the album was saved Timestamps are returned in ISO 8601 format
            # as Coordinated Universal Time (UTC) with a zero offset: YYYY-MM-DDTHH:MM:SSZ. If
            # the time is imprecise (for example, the date/time of an album release), an
            # additional field indicates the precision; see for example, release_date in an
            # album object.
            added_at: nil,
            # Information about the album.
            album: nil
          )
          end

          sig do
            override.returns(
              {
                added_at: Time,
                album: Spotted::Models::Me::AlbumListResponse::Item::Album
              }
            )
          end
          def to_hash
          end

          class Album < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::AlbumListResponse::Item::Album,
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
                Spotted::Models::Me::AlbumListResponse::Item::Album::AlbumType::TaggedSymbol
              )
            end
            attr_accessor :album_type

            # The markets in which the album is available:
            # [ISO 3166-1 alpha-2 country codes](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
            # _**NOTE**: an album is considered available in a market when at least 1 of its
            # tracks is available in that market._
            sig { returns(T::Array[String]) }
            attr_accessor :available_markets

            # Known external URLs for this album.
            sig do
              returns(
                Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalURLs
              )
            end
            attr_reader :external_urls

            sig do
              params(
                external_urls:
                  Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalURLs::OrHash
              ).void
            end
            attr_writer :external_urls

            # A link to the Web API endpoint providing full details of the album.
            sig { returns(String) }
            attr_accessor :href

            # The cover art for the album in various sizes, widest first.
            sig do
              returns(
                T::Array[
                  Spotted::Models::Me::AlbumListResponse::Item::Album::Image
                ]
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
                Spotted::Models::Me::AlbumListResponse::Item::Album::ReleaseDatePrecision::TaggedSymbol
              )
            end
            attr_accessor :release_date_precision

            # The number of tracks in the album.
            sig { returns(Integer) }
            attr_accessor :total_tracks

            # The object type.
            sig do
              returns(
                Spotted::Models::Me::AlbumListResponse::Item::Album::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # album.
            sig { returns(String) }
            attr_accessor :uri

            # The artists of the album. Each artist object includes a link in `href` to more
            # detailed information about the artist.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Artist
                  ]
                )
              )
            end
            attr_reader :artists

            sig do
              params(
                artists:
                  T::Array[
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::OrHash
                  ]
              ).void
            end
            attr_writer :artists

            # The copyright statements of the album.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Copyright
                  ]
                )
              )
            end
            attr_reader :copyrights

            sig do
              params(
                copyrights:
                  T::Array[
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Copyright::OrHash
                  ]
              ).void
            end
            attr_writer :copyrights

            # Known external IDs for the album.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalIDs
                )
              )
            end
            attr_reader :external_ids

            sig do
              params(
                external_ids:
                  Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalIDs::OrHash
              ).void
            end
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
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions
                )
              )
            end
            attr_reader :restrictions

            sig do
              params(
                restrictions:
                  Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::OrHash
              ).void
            end
            attr_writer :restrictions

            # The tracks of the album.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks
                )
              )
            end
            attr_reader :tracks

            sig do
              params(
                tracks:
                  Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::OrHash
              ).void
            end
            attr_writer :tracks

            # Information about the album.
            sig do
              params(
                id: String,
                album_type:
                  Spotted::Models::Me::AlbumListResponse::Item::Album::AlbumType::OrSymbol,
                available_markets: T::Array[String],
                external_urls:
                  Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalURLs::OrHash,
                href: String,
                images:
                  T::Array[
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Image::OrHash
                  ],
                name: String,
                release_date: String,
                release_date_precision:
                  Spotted::Models::Me::AlbumListResponse::Item::Album::ReleaseDatePrecision::OrSymbol,
                total_tracks: Integer,
                type:
                  Spotted::Models::Me::AlbumListResponse::Item::Album::Type::OrSymbol,
                uri: String,
                artists:
                  T::Array[
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::OrHash
                  ],
                copyrights:
                  T::Array[
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Copyright::OrHash
                  ],
                external_ids:
                  Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalIDs::OrHash,
                genres: T::Array[String],
                label: String,
                popularity: Integer,
                restrictions:
                  Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::OrHash,
                tracks:
                  Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::OrHash
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
                    Spotted::Models::Me::AlbumListResponse::Item::Album::AlbumType::TaggedSymbol,
                  available_markets: T::Array[String],
                  external_urls:
                    Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalURLs,
                  href: String,
                  images:
                    T::Array[
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Image
                    ],
                  name: String,
                  release_date: String,
                  release_date_precision:
                    Spotted::Models::Me::AlbumListResponse::Item::Album::ReleaseDatePrecision::TaggedSymbol,
                  total_tracks: Integer,
                  type:
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Type::TaggedSymbol,
                  uri: String,
                  artists:
                    T::Array[
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Artist
                    ],
                  copyrights:
                    T::Array[
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Copyright
                    ],
                  external_ids:
                    Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalIDs,
                  genres: T::Array[String],
                  label: String,
                  popularity: Integer,
                  restrictions:
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions,
                  tracks:
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks
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
                    Spotted::Models::Me::AlbumListResponse::Item::Album::AlbumType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ALBUM =
                T.let(
                  :album,
                  Spotted::Models::Me::AlbumListResponse::Item::Album::AlbumType::TaggedSymbol
                )
              SINGLE =
                T.let(
                  :single,
                  Spotted::Models::Me::AlbumListResponse::Item::Album::AlbumType::TaggedSymbol
                )
              COMPILATION =
                T.let(
                  :compilation,
                  Spotted::Models::Me::AlbumListResponse::Item::Album::AlbumType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Spotted::Models::Me::AlbumListResponse::Item::Album::AlbumType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class ExternalURLs < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalURLs,
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
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Image,
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
                    Spotted::Models::Me::AlbumListResponse::Item::Album::ReleaseDatePrecision
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              YEAR =
                T.let(
                  :year,
                  Spotted::Models::Me::AlbumListResponse::Item::Album::ReleaseDatePrecision::TaggedSymbol
                )
              MONTH =
                T.let(
                  :month,
                  Spotted::Models::Me::AlbumListResponse::Item::Album::ReleaseDatePrecision::TaggedSymbol
                )
              DAY =
                T.let(
                  :day,
                  Spotted::Models::Me::AlbumListResponse::Item::Album::ReleaseDatePrecision::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Spotted::Models::Me::AlbumListResponse::Item::Album::ReleaseDatePrecision::TaggedSymbol
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
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ALBUM =
                T.let(
                  :album,
                  Spotted::Models::Me::AlbumListResponse::Item::Album::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Type::TaggedSymbol
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
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Artist,
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
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::ExternalURLs
                  )
                )
              end
              attr_reader :external_urls

              sig do
                params(
                  external_urls:
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::ExternalURLs::OrHash
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
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::Type::TaggedSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::Type::OrSymbol
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
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::ExternalURLs::OrHash,
                  href: String,
                  name: String,
                  type:
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::Type::OrSymbol,
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
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::ExternalURLs,
                    href: String,
                    name: String,
                    type:
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::Type::TaggedSymbol,
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
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::ExternalURLs,
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
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ARTIST =
                  T.let(
                    :artist,
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Artist::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Copyright < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Copyright,
                    Spotted::Internal::AnyHash
                  )
                end

              # The copyright text for this content.
              sig { returns(T.nilable(String)) }
              attr_reader :text

              sig { params(text: String).void }
              attr_writer :text

              # The type of copyright: `C` = the copyright, `P` = the sound recording
              # (performance) copyright.
              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              sig do
                params(text: String, type: String).returns(T.attached_class)
              end
              def self.new(
                # The copyright text for this content.
                text: nil,
                # The type of copyright: `C` = the copyright, `P` = the sound recording
                # (performance) copyright.
                type: nil
              )
              end

              sig { override.returns({ text: String, type: String }) }
              def to_hash
              end
            end

            class ExternalIDs < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::AlbumListResponse::Item::Album::ExternalIDs,
                    Spotted::Internal::AnyHash
                  )
                end

              # [International Article Number](http://en.wikipedia.org/wiki/International_Article_Number_%28EAN%29)
              sig { returns(T.nilable(String)) }
              attr_reader :ean

              sig { params(ean: String).void }
              attr_writer :ean

              # [International Standard Recording Code](http://en.wikipedia.org/wiki/International_Standard_Recording_Code)
              sig { returns(T.nilable(String)) }
              attr_reader :isrc

              sig { params(isrc: String).void }
              attr_writer :isrc

              # [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
              sig { returns(T.nilable(String)) }
              attr_reader :upc

              sig { params(upc: String).void }
              attr_writer :upc

              # Known external IDs for the album.
              sig do
                params(ean: String, isrc: String, upc: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # [International Article Number](http://en.wikipedia.org/wiki/International_Article_Number_%28EAN%29)
                ean: nil,
                # [International Standard Recording Code](http://en.wikipedia.org/wiki/International_Standard_Recording_Code)
                isrc: nil,
                # [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
                upc: nil
              )
              end

              sig do
                override.returns({ ean: String, isrc: String, upc: String })
              end
              def to_hash
              end
            end

            class Restrictions < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions,
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
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::Reason::TaggedSymbol
                  )
                )
              end
              attr_reader :reason

              sig do
                params(
                  reason:
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::Reason::OrSymbol
                ).void
              end
              attr_writer :reason

              # Included in the response when a content restriction is applied.
              sig do
                params(
                  reason:
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::Reason::OrSymbol
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
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::Reason::TaggedSymbol
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
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::Reason
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MARKET =
                  T.let(
                    :market,
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::Reason::TaggedSymbol
                  )
                PRODUCT =
                  T.let(
                    :product,
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::Reason::TaggedSymbol
                  )
                EXPLICIT =
                  T.let(
                    :explicit,
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::Reason::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Restrictions::Reason::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Tracks < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks,
                    Spotted::Internal::AnyHash
                  )
                end

              # A link to the Web API endpoint returning the full result of the request
              sig { returns(String) }
              attr_accessor :href

              sig do
                returns(
                  T::Array[
                    Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item
                  ]
                )
              end
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
                  items:
                    T::Array[
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::OrHash
                    ],
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
                    items:
                      T::Array[
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item
                      ],
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
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
                # track.
                sig { returns(T.nilable(String)) }
                attr_reader :id

                sig { params(id: String).void }
                attr_writer :id

                # The artists who performed the track. Each artist object includes a link in
                # `href` to more detailed information about the artist.
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist
                      ]
                    )
                  )
                end
                attr_reader :artists

                sig do
                  params(
                    artists:
                      T::Array[
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::OrHash
                      ]
                  ).void
                end
                attr_writer :artists

                # A list of the countries in which the track can be played, identified by their
                # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
                sig { returns(T.nilable(T::Array[String])) }
                attr_reader :available_markets

                sig { params(available_markets: T::Array[String]).void }
                attr_writer :available_markets

                # The disc number (usually `1` unless the album consists of more than one disc).
                sig { returns(T.nilable(Integer)) }
                attr_reader :disc_number

                sig { params(disc_number: Integer).void }
                attr_writer :disc_number

                # The track length in milliseconds.
                sig { returns(T.nilable(Integer)) }
                attr_reader :duration_ms

                sig { params(duration_ms: Integer).void }
                attr_writer :duration_ms

                # Whether or not the track has explicit lyrics ( `true` = yes it does; `false` =
                # no it does not OR unknown).
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :explicit

                sig { params(explicit: T::Boolean).void }
                attr_writer :explicit

                # External URLs for this track.
                sig do
                  returns(
                    T.nilable(
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::ExternalURLs
                    )
                  )
                end
                attr_reader :external_urls

                sig do
                  params(
                    external_urls:
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::ExternalURLs::OrHash
                  ).void
                end
                attr_writer :external_urls

                # A link to the Web API endpoint providing full details of the track.
                sig { returns(T.nilable(String)) }
                attr_reader :href

                sig { params(href: String).void }
                attr_writer :href

                # Whether or not the track is from a local file.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :is_local

                sig { params(is_local: T::Boolean).void }
                attr_writer :is_local

                # Part of the response when
                # [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied.
                # If `true`, the track is playable in the given market. Otherwise `false`.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :is_playable

                sig { params(is_playable: T::Boolean).void }
                attr_writer :is_playable

                # Part of the response when
                # [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied
                # and is only part of the response if the track linking, in fact, exists. The
                # requested track has been replaced with a different track. The track in the
                # `linked_from` object contains information about the originally requested track.
                sig do
                  returns(
                    T.nilable(
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom
                    )
                  )
                end
                attr_reader :linked_from

                sig do
                  params(
                    linked_from:
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom::OrHash
                  ).void
                end
                attr_writer :linked_from

                # The name of the track.
                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                # A URL to a 30 second preview (MP3 format) of the track.
                sig { returns(T.nilable(String)) }
                attr_accessor :preview_url

                # Included in the response when a content restriction is applied.
                sig do
                  returns(
                    T.nilable(
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Restrictions
                    )
                  )
                end
                attr_reader :restrictions

                sig do
                  params(
                    restrictions:
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Restrictions::OrHash
                  ).void
                end
                attr_writer :restrictions

                # The number of the track. If an album has several discs, the track number is the
                # number on the specified disc.
                sig { returns(T.nilable(Integer)) }
                attr_reader :track_number

                sig { params(track_number: Integer).void }
                attr_writer :track_number

                # The object type: "track".
                sig { returns(T.nilable(String)) }
                attr_reader :type

                sig { params(type: String).void }
                attr_writer :type

                # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                # track.
                sig { returns(T.nilable(String)) }
                attr_reader :uri

                sig { params(uri: String).void }
                attr_writer :uri

                sig do
                  params(
                    id: String,
                    artists:
                      T::Array[
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::OrHash
                      ],
                    available_markets: T::Array[String],
                    disc_number: Integer,
                    duration_ms: Integer,
                    explicit: T::Boolean,
                    external_urls:
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::ExternalURLs::OrHash,
                    href: String,
                    is_local: T::Boolean,
                    is_playable: T::Boolean,
                    linked_from:
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom::OrHash,
                    name: String,
                    preview_url: T.nilable(String),
                    restrictions:
                      Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Restrictions::OrHash,
                    track_number: Integer,
                    type: String,
                    uri: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # track.
                  id: nil,
                  # The artists who performed the track. Each artist object includes a link in
                  # `href` to more detailed information about the artist.
                  artists: nil,
                  # A list of the countries in which the track can be played, identified by their
                  # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
                  available_markets: nil,
                  # The disc number (usually `1` unless the album consists of more than one disc).
                  disc_number: nil,
                  # The track length in milliseconds.
                  duration_ms: nil,
                  # Whether or not the track has explicit lyrics ( `true` = yes it does; `false` =
                  # no it does not OR unknown).
                  explicit: nil,
                  # External URLs for this track.
                  external_urls: nil,
                  # A link to the Web API endpoint providing full details of the track.
                  href: nil,
                  # Whether or not the track is from a local file.
                  is_local: nil,
                  # Part of the response when
                  # [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied.
                  # If `true`, the track is playable in the given market. Otherwise `false`.
                  is_playable: nil,
                  # Part of the response when
                  # [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied
                  # and is only part of the response if the track linking, in fact, exists. The
                  # requested track has been replaced with a different track. The track in the
                  # `linked_from` object contains information about the originally requested track.
                  linked_from: nil,
                  # The name of the track.
                  name: nil,
                  # A URL to a 30 second preview (MP3 format) of the track.
                  preview_url: nil,
                  # Included in the response when a content restriction is applied.
                  restrictions: nil,
                  # The number of the track. If an album has several discs, the track number is the
                  # number on the specified disc.
                  track_number: nil,
                  # The object type: "track".
                  type: nil,
                  # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # track.
                  uri: nil
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      artists:
                        T::Array[
                          Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist
                        ],
                      available_markets: T::Array[String],
                      disc_number: Integer,
                      duration_ms: Integer,
                      explicit: T::Boolean,
                      external_urls:
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::ExternalURLs,
                      href: String,
                      is_local: T::Boolean,
                      is_playable: T::Boolean,
                      linked_from:
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom,
                      name: String,
                      preview_url: T.nilable(String),
                      restrictions:
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Restrictions,
                      track_number: Integer,
                      type: String,
                      uri: String
                    }
                  )
                end
                def to_hash
                end

                class Artist < Spotted::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist,
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
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::ExternalURLs
                      )
                    )
                  end
                  attr_reader :external_urls

                  sig do
                    params(
                      external_urls:
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::ExternalURLs::OrHash
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
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::Type::TaggedSymbol
                      )
                    )
                  end
                  attr_reader :type

                  sig do
                    params(
                      type:
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::Type::OrSymbol
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
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::ExternalURLs::OrHash,
                      href: String,
                      name: String,
                      type:
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::Type::OrSymbol,
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
                          Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::ExternalURLs,
                        href: String,
                        name: String,
                        type:
                          Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::Type::TaggedSymbol,
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
                          Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::ExternalURLs,
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
                          Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ARTIST =
                      T.let(
                        :artist,
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Artist::Type::TaggedSymbol
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
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::ExternalURLs,
                        Spotted::Internal::AnyHash
                      )
                    end

                  # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # object.
                  sig { returns(T.nilable(String)) }
                  attr_reader :spotify

                  sig { params(spotify: String).void }
                  attr_writer :spotify

                  # External URLs for this track.
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

                class LinkedFrom < Spotted::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom,
                        Spotted::Internal::AnyHash
                      )
                    end

                  # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # track.
                  sig { returns(T.nilable(String)) }
                  attr_reader :id

                  sig { params(id: String).void }
                  attr_writer :id

                  # Known external URLs for this track.
                  sig do
                    returns(
                      T.nilable(
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom::ExternalURLs
                      )
                    )
                  end
                  attr_reader :external_urls

                  sig do
                    params(
                      external_urls:
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom::ExternalURLs::OrHash
                    ).void
                  end
                  attr_writer :external_urls

                  # A link to the Web API endpoint providing full details of the track.
                  sig { returns(T.nilable(String)) }
                  attr_reader :href

                  sig { params(href: String).void }
                  attr_writer :href

                  # The object type: "track".
                  sig { returns(T.nilable(String)) }
                  attr_reader :type

                  sig { params(type: String).void }
                  attr_writer :type

                  # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # track.
                  sig { returns(T.nilable(String)) }
                  attr_reader :uri

                  sig { params(uri: String).void }
                  attr_writer :uri

                  # Part of the response when
                  # [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied
                  # and is only part of the response if the track linking, in fact, exists. The
                  # requested track has been replaced with a different track. The track in the
                  # `linked_from` object contains information about the originally requested track.
                  sig do
                    params(
                      id: String,
                      external_urls:
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom::ExternalURLs::OrHash,
                      href: String,
                      type: String,
                      uri: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
                    # track.
                    id: nil,
                    # Known external URLs for this track.
                    external_urls: nil,
                    # A link to the Web API endpoint providing full details of the track.
                    href: nil,
                    # The object type: "track".
                    type: nil,
                    # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                    # track.
                    uri: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: String,
                        external_urls:
                          Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom::ExternalURLs,
                        href: String,
                        type: String,
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
                          Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::LinkedFrom::ExternalURLs,
                          Spotted::Internal::AnyHash
                        )
                      end

                    # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                    # object.
                    sig { returns(T.nilable(String)) }
                    attr_reader :spotify

                    sig { params(spotify: String).void }
                    attr_writer :spotify

                    # Known external URLs for this track.
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
                end

                class Restrictions < Spotted::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Spotted::Models::Me::AlbumListResponse::Item::Album::Tracks::Item::Restrictions,
                        Spotted::Internal::AnyHash
                      )
                    end

                  # The reason for the restriction. Supported values:
                  #
                  # - `market` - The content item is not available in the given market.
                  # - `product` - The content item is not available for the user's subscription
                  #   type.
                  # - `explicit` - The content item is explicit and the user's account is set to not
                  #   play explicit content.
                  #
                  # Additional reasons may be added in the future. **Note**: If you use this field,
                  # make sure that your application safely handles unknown values.
                  sig { returns(T.nilable(String)) }
                  attr_reader :reason

                  sig { params(reason: String).void }
                  attr_writer :reason

                  # Included in the response when a content restriction is applied.
                  sig { params(reason: String).returns(T.attached_class) }
                  def self.new(
                    # The reason for the restriction. Supported values:
                    #
                    # - `market` - The content item is not available in the given market.
                    # - `product` - The content item is not available for the user's subscription
                    #   type.
                    # - `explicit` - The content item is explicit and the user's account is set to not
                    #   play explicit content.
                    #
                    # Additional reasons may be added in the future. **Note**: If you use this field,
                    # make sure that your application safely handles unknown values.
                    reason: nil
                  )
                  end

                  sig { override.returns({ reason: String }) }
                  def to_hash
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
