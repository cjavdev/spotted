# typed: strong

module Spotted
  module Models
    class ArtistListTopTracksResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::ArtistListTopTracksResponse,
            Spotted::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[Spotted::Models::ArtistListTopTracksResponse::Track])
      end
      attr_accessor :tracks

      sig do
        params(
          tracks:
            T::Array[
              Spotted::Models::ArtistListTopTracksResponse::Track::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(tracks:)
      end

      sig do
        override.returns(
          {
            tracks:
              T::Array[Spotted::Models::ArtistListTopTracksResponse::Track]
          }
        )
      end
      def to_hash
      end

      class Track < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::ArtistListTopTracksResponse::Track,
              Spotted::Internal::AnyHash
            )
          end

        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # track.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The album on which the track appears. The album object includes a link in `href`
        # to full information about the album.
        sig do
          returns(
            T.nilable(
              Spotted::Models::ArtistListTopTracksResponse::Track::Album
            )
          )
        end
        attr_reader :album

        sig do
          params(
            album:
              Spotted::Models::ArtistListTopTracksResponse::Track::Album::OrHash
          ).void
        end
        attr_writer :album

        # The artists who performed the track. Each artist object includes a link in
        # `href` to more detailed information about the artist.
        sig do
          returns(
            T.nilable(
              T::Array[
                Spotted::Models::ArtistListTopTracksResponse::Track::Artist
              ]
            )
          )
        end
        attr_reader :artists

        sig do
          params(
            artists:
              T::Array[
                Spotted::Models::ArtistListTopTracksResponse::Track::Artist::OrHash
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

        # Known external IDs for the track.
        sig do
          returns(
            T.nilable(
              Spotted::Models::ArtistListTopTracksResponse::Track::ExternalIDs
            )
          )
        end
        attr_reader :external_ids

        sig do
          params(
            external_ids:
              Spotted::Models::ArtistListTopTracksResponse::Track::ExternalIDs::OrHash
          ).void
        end
        attr_writer :external_ids

        # Known external URLs for this track.
        sig do
          returns(
            T.nilable(
              Spotted::Models::ArtistListTopTracksResponse::Track::ExternalURLs
            )
          )
        end
        attr_reader :external_urls

        sig do
          params(
            external_urls:
              Spotted::Models::ArtistListTopTracksResponse::Track::ExternalURLs::OrHash
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
        # [Track Relinking](/documentation/web-api/concepts/track-relinking) is applied.
        # If `true`, the track is playable in the given market. Otherwise `false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_playable

        sig { params(is_playable: T::Boolean).void }
        attr_writer :is_playable

        # Part of the response when
        # [Track Relinking](/documentation/web-api/concepts/track-relinking) is applied,
        # and the requested track has been replaced with different track. The track in the
        # `linked_from` object contains information about the originally requested track.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :linked_from

        sig { params(linked_from: T.anything).void }
        attr_writer :linked_from

        # The name of the track.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The popularity of the track. The value will be between 0 and 100, with 100 being
        # the most popular.<br/>The popularity of a track is a value between 0 and 100,
        # with 100 being the most popular. The popularity is calculated by algorithm and
        # is based, in the most part, on the total number of plays the track has had and
        # how recent those plays are.<br/>Generally speaking, songs that are being played
        # a lot now will have a higher popularity than songs that were played a lot in the
        # past. Duplicate tracks (e.g. the same track from a single and an album) are
        # rated independently. Artist and album popularity is derived mathematically from
        # track popularity. _**Note**: the popularity value may lag actual popularity by a
        # few days: the value is not updated in real time._
        sig { returns(T.nilable(Integer)) }
        attr_reader :popularity

        sig { params(popularity: Integer).void }
        attr_writer :popularity

        # A link to a 30 second preview (MP3 format) of the track. Can be `null`
        sig { returns(T.nilable(String)) }
        attr_accessor :preview_url

        # Included in the response when a content restriction is applied.
        sig do
          returns(
            T.nilable(
              Spotted::Models::ArtistListTopTracksResponse::Track::Restrictions
            )
          )
        end
        attr_reader :restrictions

        sig do
          params(
            restrictions:
              Spotted::Models::ArtistListTopTracksResponse::Track::Restrictions::OrHash
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
        sig do
          returns(
            T.nilable(
              Spotted::Models::ArtistListTopTracksResponse::Track::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Spotted::Models::ArtistListTopTracksResponse::Track::Type::OrSymbol
          ).void
        end
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
            album:
              Spotted::Models::ArtistListTopTracksResponse::Track::Album::OrHash,
            artists:
              T::Array[
                Spotted::Models::ArtistListTopTracksResponse::Track::Artist::OrHash
              ],
            available_markets: T::Array[String],
            disc_number: Integer,
            duration_ms: Integer,
            explicit: T::Boolean,
            external_ids:
              Spotted::Models::ArtistListTopTracksResponse::Track::ExternalIDs::OrHash,
            external_urls:
              Spotted::Models::ArtistListTopTracksResponse::Track::ExternalURLs::OrHash,
            href: String,
            is_local: T::Boolean,
            is_playable: T::Boolean,
            linked_from: T.anything,
            name: String,
            popularity: Integer,
            preview_url: T.nilable(String),
            restrictions:
              Spotted::Models::ArtistListTopTracksResponse::Track::Restrictions::OrHash,
            track_number: Integer,
            type:
              Spotted::Models::ArtistListTopTracksResponse::Track::Type::OrSymbol,
            uri: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # track.
          id: nil,
          # The album on which the track appears. The album object includes a link in `href`
          # to full information about the album.
          album: nil,
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
          # Known external IDs for the track.
          external_ids: nil,
          # Known external URLs for this track.
          external_urls: nil,
          # A link to the Web API endpoint providing full details of the track.
          href: nil,
          # Whether or not the track is from a local file.
          is_local: nil,
          # Part of the response when
          # [Track Relinking](/documentation/web-api/concepts/track-relinking) is applied.
          # If `true`, the track is playable in the given market. Otherwise `false`.
          is_playable: nil,
          # Part of the response when
          # [Track Relinking](/documentation/web-api/concepts/track-relinking) is applied,
          # and the requested track has been replaced with different track. The track in the
          # `linked_from` object contains information about the originally requested track.
          linked_from: nil,
          # The name of the track.
          name: nil,
          # The popularity of the track. The value will be between 0 and 100, with 100 being
          # the most popular.<br/>The popularity of a track is a value between 0 and 100,
          # with 100 being the most popular. The popularity is calculated by algorithm and
          # is based, in the most part, on the total number of plays the track has had and
          # how recent those plays are.<br/>Generally speaking, songs that are being played
          # a lot now will have a higher popularity than songs that were played a lot in the
          # past. Duplicate tracks (e.g. the same track from a single and an album) are
          # rated independently. Artist and album popularity is derived mathematically from
          # track popularity. _**Note**: the popularity value may lag actual popularity by a
          # few days: the value is not updated in real time._
          popularity: nil,
          # A link to a 30 second preview (MP3 format) of the track. Can be `null`
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
              album: Spotted::Models::ArtistListTopTracksResponse::Track::Album,
              artists:
                T::Array[
                  Spotted::Models::ArtistListTopTracksResponse::Track::Artist
                ],
              available_markets: T::Array[String],
              disc_number: Integer,
              duration_ms: Integer,
              explicit: T::Boolean,
              external_ids:
                Spotted::Models::ArtistListTopTracksResponse::Track::ExternalIDs,
              external_urls:
                Spotted::Models::ArtistListTopTracksResponse::Track::ExternalURLs,
              href: String,
              is_local: T::Boolean,
              is_playable: T::Boolean,
              linked_from: T.anything,
              name: String,
              popularity: Integer,
              preview_url: T.nilable(String),
              restrictions:
                Spotted::Models::ArtistListTopTracksResponse::Track::Restrictions,
              track_number: Integer,
              type:
                Spotted::Models::ArtistListTopTracksResponse::Track::Type::TaggedSymbol,
              uri: String
            }
          )
        end
        def to_hash
        end

        class Album < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ArtistListTopTracksResponse::Track::Album,
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
              Spotted::Models::ArtistListTopTracksResponse::Track::Album::AlbumType::TaggedSymbol
            )
          end
          attr_accessor :album_type

          # The artists of the album. Each artist object includes a link in `href` to more
          # detailed information about the artist.
          sig do
            returns(
              T::Array[
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist
              ]
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
            returns(
              Spotted::Models::ArtistListTopTracksResponse::Track::Album::ExternalURLs
            )
          end
          attr_reader :external_urls

          sig do
            params(
              external_urls:
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::ExternalURLs::OrHash
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
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::Image
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
              Spotted::Models::ArtistListTopTracksResponse::Track::Album::ReleaseDatePrecision::TaggedSymbol
            )
          end
          attr_accessor :release_date_precision

          # The number of tracks in the album.
          sig { returns(Integer) }
          attr_accessor :total_tracks

          # The object type.
          sig do
            returns(
              Spotted::Models::ArtistListTopTracksResponse::Track::Album::Type::TaggedSymbol
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
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions
              )
            )
          end
          attr_reader :restrictions

          sig do
            params(
              restrictions:
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions::OrHash
            ).void
          end
          attr_writer :restrictions

          # The album on which the track appears. The album object includes a link in `href`
          # to full information about the album.
          sig do
            params(
              id: String,
              album_type:
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::AlbumType::OrSymbol,
              artists:
                T::Array[
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::OrHash
                ],
              available_markets: T::Array[String],
              external_urls:
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::ExternalURLs::OrHash,
              href: String,
              images:
                T::Array[
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Image::OrHash
                ],
              name: String,
              release_date: String,
              release_date_precision:
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::ReleaseDatePrecision::OrSymbol,
              total_tracks: Integer,
              type:
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::Type::OrSymbol,
              uri: String,
              restrictions:
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions::OrHash
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::AlbumType::TaggedSymbol,
                artists:
                  T::Array[
                    Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist
                  ],
                available_markets: T::Array[String],
                external_urls:
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::ExternalURLs,
                href: String,
                images:
                  T::Array[
                    Spotted::Models::ArtistListTopTracksResponse::Track::Album::Image
                  ],
                name: String,
                release_date: String,
                release_date_precision:
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::ReleaseDatePrecision::TaggedSymbol,
                total_tracks: Integer,
                type:
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Type::TaggedSymbol,
                uri: String,
                restrictions:
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::AlbumType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALBUM =
              T.let(
                :album,
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::AlbumType::TaggedSymbol
              )
            SINGLE =
              T.let(
                :single,
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::AlbumType::TaggedSymbol
              )
            COMPILATION =
              T.let(
                :compilation,
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::AlbumType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::AlbumType::TaggedSymbol
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist,
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::ExternalURLs
                )
              )
            end
            attr_reader :external_urls

            sig do
              params(
                external_urls:
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::ExternalURLs::OrHash
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::Type::TaggedSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::Type::OrSymbol
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::ExternalURLs::OrHash,
                href: String,
                name: String,
                type:
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::Type::OrSymbol,
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
                    Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::ExternalURLs,
                  href: String,
                  name: String,
                  type:
                    Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::Type::TaggedSymbol,
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
                    Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::ExternalURLs,
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
                    Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ARTIST =
                T.let(
                  :artist,
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Spotted::Models::ArtistListTopTracksResponse::Track::Album::Artist::Type::TaggedSymbol
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::ExternalURLs,
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Image,
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::ReleaseDatePrecision
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            YEAR =
              T.let(
                :year,
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::ReleaseDatePrecision::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::ReleaseDatePrecision::TaggedSymbol
              )
            DAY =
              T.let(
                :day,
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::ReleaseDatePrecision::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::ReleaseDatePrecision::TaggedSymbol
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALBUM =
              T.let(
                :album,
                Spotted::Models::ArtistListTopTracksResponse::Track::Album::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Type::TaggedSymbol
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions,
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions::Reason::TaggedSymbol
                )
              )
            end
            attr_reader :reason

            sig do
              params(
                reason:
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions::Reason::OrSymbol
              ).void
            end
            attr_writer :reason

            # Included in the response when a content restriction is applied.
            sig do
              params(
                reason:
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions::Reason::OrSymbol
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
                    Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions::Reason::TaggedSymbol
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
                    Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions::Reason
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MARKET =
                T.let(
                  :market,
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions::Reason::TaggedSymbol
                )
              PRODUCT =
                T.let(
                  :product,
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions::Reason::TaggedSymbol
                )
              EXPLICIT =
                T.let(
                  :explicit,
                  Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions::Reason::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Spotted::Models::ArtistListTopTracksResponse::Track::Album::Restrictions::Reason::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Artist < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ArtistListTopTracksResponse::Track::Artist,
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
                Spotted::Models::ArtistListTopTracksResponse::Track::Artist::ExternalURLs
              )
            )
          end
          attr_reader :external_urls

          sig do
            params(
              external_urls:
                Spotted::Models::ArtistListTopTracksResponse::Track::Artist::ExternalURLs::OrHash
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
                Spotted::Models::ArtistListTopTracksResponse::Track::Artist::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Spotted::Models::ArtistListTopTracksResponse::Track::Artist::Type::OrSymbol
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
                Spotted::Models::ArtistListTopTracksResponse::Track::Artist::ExternalURLs::OrHash,
              href: String,
              name: String,
              type:
                Spotted::Models::ArtistListTopTracksResponse::Track::Artist::Type::OrSymbol,
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Artist::ExternalURLs,
                href: String,
                name: String,
                type:
                  Spotted::Models::ArtistListTopTracksResponse::Track::Artist::Type::TaggedSymbol,
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Artist::ExternalURLs,
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
                  Spotted::Models::ArtistListTopTracksResponse::Track::Artist::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ARTIST =
              T.let(
                :artist,
                Spotted::Models::ArtistListTopTracksResponse::Track::Artist::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::ArtistListTopTracksResponse::Track::Artist::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ExternalIDs < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ArtistListTopTracksResponse::Track::ExternalIDs,
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

          # Known external IDs for the track.
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

          sig { override.returns({ ean: String, isrc: String, upc: String }) }
          def to_hash
          end
        end

        class ExternalURLs < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ArtistListTopTracksResponse::Track::ExternalURLs,
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

        class Restrictions < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ArtistListTopTracksResponse::Track::Restrictions,
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

        # The object type: "track".
        module Type
          extend Spotted::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Spotted::Models::ArtistListTopTracksResponse::Track::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRACK =
            T.let(
              :track,
              Spotted::Models::ArtistListTopTracksResponse::Track::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Spotted::Models::ArtistListTopTracksResponse::Track::Type::TaggedSymbol
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
