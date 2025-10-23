# typed: strong

module Spotted
  module Models
    module Me
      module Player
        class QueueGetResponse < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Me::Player::QueueGetResponse,
                Spotted::Internal::AnyHash
              )
            end

          # The currently playing track or episode. Can be `null`.
          sig do
            returns(
              T.nilable(
                Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Variants
              )
            )
          end
          attr_reader :currently_playing

          sig do
            params(
              currently_playing:
                T.any(
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::OrHash,
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::OrHash
                )
            ).void
          end
          attr_writer :currently_playing

          # The tracks or episodes in the queue. Can be empty.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Spotted::Models::Me::Player::QueueGetResponse::Queue::Variants
                ]
              )
            )
          end
          attr_reader :queue

          sig do
            params(
              queue:
                T::Array[
                  T.any(
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::OrHash,
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::OrHash
                  )
                ]
            ).void
          end
          attr_writer :queue

          sig do
            params(
              currently_playing:
                T.any(
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::OrHash,
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::OrHash
                ),
              queue:
                T::Array[
                  T.any(
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::OrHash,
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::OrHash
                  )
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The currently playing track or episode. Can be `null`.
            currently_playing: nil,
            # The tracks or episodes in the queue. Can be empty.
            queue: nil
          )
          end

          sig do
            override.returns(
              {
                currently_playing:
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Variants,
                queue:
                  T::Array[
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Variants
                  ]
              }
            )
          end
          def to_hash
          end

          # The currently playing track or episode. Can be `null`.
          module CurrentlyPlaying
            extend Spotted::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track,
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode
                )
              end

            class Track < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track,
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
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album
                  )
                )
              end
              attr_reader :album

              sig do
                params(
                  album:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::OrHash
                ).void
              end
              attr_writer :album

              # The artists who performed the track. Each artist object includes a link in
              # `href` to more detailed information about the artist.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist
                    ]
                  )
                )
              end
              attr_reader :artists

              sig do
                params(
                  artists:
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::OrHash
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
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalIDs
                  )
                )
              end
              attr_reader :external_ids

              sig do
                params(
                  external_ids:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalIDs::OrHash
                ).void
              end
              attr_writer :external_ids

              # Known external URLs for this track.
              sig do
                returns(
                  T.nilable(
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalURLs
                  )
                )
              end
              attr_reader :external_urls

              sig do
                params(
                  external_urls:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalURLs::OrHash
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
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Restrictions
                  )
                )
              end
              attr_reader :restrictions

              sig do
                params(
                  restrictions:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Restrictions::OrHash
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
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Type::TaggedSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Type::OrSymbol
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
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::OrHash,
                  artists:
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::OrHash
                    ],
                  available_markets: T::Array[String],
                  disc_number: Integer,
                  duration_ms: Integer,
                  explicit: T::Boolean,
                  external_ids:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalIDs::OrHash,
                  external_urls:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalURLs::OrHash,
                  href: String,
                  is_local: T::Boolean,
                  is_playable: T::Boolean,
                  linked_from: T.anything,
                  name: String,
                  popularity: Integer,
                  preview_url: T.nilable(String),
                  restrictions:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Restrictions::OrHash,
                  track_number: Integer,
                  type:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Type::OrSymbol,
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
                    album:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album,
                    artists:
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist
                      ],
                    available_markets: T::Array[String],
                    disc_number: Integer,
                    duration_ms: Integer,
                    explicit: T::Boolean,
                    external_ids:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalIDs,
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalURLs,
                    href: String,
                    is_local: T::Boolean,
                    is_playable: T::Boolean,
                    linked_from: T.anything,
                    name: String,
                    popularity: Integer,
                    preview_url: T.nilable(String),
                    restrictions:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Restrictions,
                    track_number: Integer,
                    type:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Type::TaggedSymbol,
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
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album,
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
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::AlbumType::TaggedSymbol
                  )
                end
                attr_accessor :album_type

                # The artists of the album. Each artist object includes a link in `href` to more
                # detailed information about the artist.
                sig do
                  returns(
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist
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
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ExternalURLs
                  )
                end
                attr_reader :external_urls

                sig do
                  params(
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ExternalURLs::OrHash
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
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Image
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
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ReleaseDatePrecision::TaggedSymbol
                  )
                end
                attr_accessor :release_date_precision

                # The number of tracks in the album.
                sig { returns(Integer) }
                attr_accessor :total_tracks

                # The object type.
                sig do
                  returns(
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Type::TaggedSymbol
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
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions
                    )
                  )
                end
                attr_reader :restrictions

                sig do
                  params(
                    restrictions:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::OrHash
                  ).void
                end
                attr_writer :restrictions

                # The album on which the track appears. The album object includes a link in `href`
                # to full information about the album.
                sig do
                  params(
                    id: String,
                    album_type:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::AlbumType::OrSymbol,
                    artists:
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::OrHash
                      ],
                    available_markets: T::Array[String],
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ExternalURLs::OrHash,
                    href: String,
                    images:
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Image::OrHash
                      ],
                    name: String,
                    release_date: String,
                    release_date_precision:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ReleaseDatePrecision::OrSymbol,
                    total_tracks: Integer,
                    type:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Type::OrSymbol,
                    uri: String,
                    restrictions:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::OrHash
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::AlbumType::TaggedSymbol,
                      artists:
                        T::Array[
                          Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist
                        ],
                      available_markets: T::Array[String],
                      external_urls:
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ExternalURLs,
                      href: String,
                      images:
                        T::Array[
                          Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Image
                        ],
                      name: String,
                      release_date: String,
                      release_date_precision:
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ReleaseDatePrecision::TaggedSymbol,
                      total_tracks: Integer,
                      type:
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Type::TaggedSymbol,
                      uri: String,
                      restrictions:
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::AlbumType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ALBUM =
                    T.let(
                      :album,
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::AlbumType::TaggedSymbol
                    )
                  SINGLE =
                    T.let(
                      :single,
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::AlbumType::TaggedSymbol
                    )
                  COMPILATION =
                    T.let(
                      :compilation,
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::AlbumType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::AlbumType::TaggedSymbol
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist,
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::ExternalURLs
                      )
                    )
                  end
                  attr_reader :external_urls

                  sig do
                    params(
                      external_urls:
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::ExternalURLs::OrHash
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::Type::TaggedSymbol
                      )
                    )
                  end
                  attr_reader :type

                  sig do
                    params(
                      type:
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::Type::OrSymbol
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::ExternalURLs::OrHash,
                      href: String,
                      name: String,
                      type:
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::Type::OrSymbol,
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
                          Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::ExternalURLs,
                        href: String,
                        name: String,
                        type:
                          Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::Type::TaggedSymbol,
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
                          Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::ExternalURLs,
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
                          Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ARTIST =
                      T.let(
                        :artist,
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::Type::TaggedSymbol
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ExternalURLs,
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Image,
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ReleaseDatePrecision
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  YEAR =
                    T.let(
                      :year,
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ReleaseDatePrecision::TaggedSymbol
                    )
                  MONTH =
                    T.let(
                      :month,
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ReleaseDatePrecision::TaggedSymbol
                    )
                  DAY =
                    T.let(
                      :day,
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ReleaseDatePrecision::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ReleaseDatePrecision::TaggedSymbol
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ALBUM =
                    T.let(
                      :album,
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Type::TaggedSymbol
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions,
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::Reason::TaggedSymbol
                      )
                    )
                  end
                  attr_reader :reason

                  sig do
                    params(
                      reason:
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::Reason::OrSymbol
                    ).void
                  end
                  attr_writer :reason

                  # Included in the response when a content restriction is applied.
                  sig do
                    params(
                      reason:
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::Reason::OrSymbol
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
                          Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::Reason::TaggedSymbol
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
                          Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::Reason
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    MARKET =
                      T.let(
                        :market,
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::Reason::TaggedSymbol
                      )
                    PRODUCT =
                      T.let(
                        :product,
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::Reason::TaggedSymbol
                      )
                    EXPLICIT =
                      T.let(
                        :explicit,
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::Reason::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::Reason::TaggedSymbol
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
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist,
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
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::ExternalURLs
                    )
                  )
                end
                attr_reader :external_urls

                sig do
                  params(
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::ExternalURLs::OrHash
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
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::Type::TaggedSymbol
                    )
                  )
                end
                attr_reader :type

                sig do
                  params(
                    type:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::Type::OrSymbol
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
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::ExternalURLs::OrHash,
                    href: String,
                    name: String,
                    type:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::Type::OrSymbol,
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::ExternalURLs,
                      href: String,
                      name: String,
                      type:
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::Type::TaggedSymbol,
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::ExternalURLs,
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ARTIST =
                    T.let(
                      :artist,
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::Type::TaggedSymbol
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
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalIDs,
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

                sig do
                  override.returns({ ean: String, isrc: String, upc: String })
                end
                def to_hash
                end
              end

              class ExternalURLs < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalURLs,
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
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Restrictions,
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
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TRACK =
                  T.let(
                    :track,
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Episode < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode,
                    Spotted::Internal::AnyHash
                  )
                end

              # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
              # episode.
              sig { returns(String) }
              attr_accessor :id

              # A URL to a 30 second preview (MP3 format) of the episode. `null` if not
              # available.
              sig { returns(T.nilable(String)) }
              attr_accessor :audio_preview_url

              # A description of the episode. HTML tags are stripped away from this field, use
              # `html_description` field in case HTML tags are needed.
              sig { returns(String) }
              attr_accessor :description

              # The episode length in milliseconds.
              sig { returns(Integer) }
              attr_accessor :duration_ms

              # Whether or not the episode has explicit content (true = yes it does; false = no
              # it does not OR unknown).
              sig { returns(T::Boolean) }
              attr_accessor :explicit

              # External URLs for this episode.
              sig do
                returns(
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ExternalURLs
                )
              end
              attr_reader :external_urls

              sig do
                params(
                  external_urls:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ExternalURLs::OrHash
                ).void
              end
              attr_writer :external_urls

              # A link to the Web API endpoint providing full details of the episode.
              sig { returns(String) }
              attr_accessor :href

              # A description of the episode. This field may contain HTML tags.
              sig { returns(String) }
              attr_accessor :html_description

              # The cover art for the episode in various sizes, widest first.
              sig do
                returns(
                  T::Array[
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Image
                  ]
                )
              end
              attr_accessor :images

              # True if the episode is hosted outside of Spotify's CDN.
              sig { returns(T::Boolean) }
              attr_accessor :is_externally_hosted

              # True if the episode is playable in the given market. Otherwise false.
              sig { returns(T::Boolean) }
              attr_accessor :is_playable

              # A list of the languages used in the episode, identified by their
              # [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
              sig { returns(T::Array[String]) }
              attr_accessor :languages

              # The name of the episode.
              sig { returns(String) }
              attr_accessor :name

              # The date the episode was first released, for example `"1981-12-15"`. Depending
              # on the precision, it might be shown as `"1981"` or `"1981-12"`.
              sig { returns(String) }
              attr_accessor :release_date

              # The precision with which `release_date` value is known.
              sig do
                returns(
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ReleaseDatePrecision::TaggedSymbol
                )
              end
              attr_accessor :release_date_precision

              # The show on which the episode belongs.
              sig do
                returns(
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show
                )
              end
              attr_reader :show

              sig do
                params(
                  show:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::OrHash
                ).void
              end
              attr_writer :show

              # The object type.
              sig { returns(Symbol) }
              attr_accessor :type

              # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              # episode.
              sig { returns(String) }
              attr_accessor :uri

              # The language used in the episode, identified by a
              # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
              # and might be removed in the future. Please use the `languages` field instead.
              sig { returns(T.nilable(String)) }
              attr_reader :language

              sig { params(language: String).void }
              attr_writer :language

              # Included in the response when a content restriction is applied.
              sig do
                returns(
                  T.nilable(
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Restrictions
                  )
                )
              end
              attr_reader :restrictions

              sig do
                params(
                  restrictions:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Restrictions::OrHash
                ).void
              end
              attr_writer :restrictions

              # The user's most recent position in the episode. Set if the supplied access token
              # is a user token and has the scope 'user-read-playback-position'.
              sig do
                returns(
                  T.nilable(
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ResumePoint
                  )
                )
              end
              attr_reader :resume_point

              sig do
                params(
                  resume_point:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ResumePoint::OrHash
                ).void
              end
              attr_writer :resume_point

              sig do
                params(
                  id: String,
                  audio_preview_url: T.nilable(String),
                  description: String,
                  duration_ms: Integer,
                  explicit: T::Boolean,
                  external_urls:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ExternalURLs::OrHash,
                  href: String,
                  html_description: String,
                  images:
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Image::OrHash
                    ],
                  is_externally_hosted: T::Boolean,
                  is_playable: T::Boolean,
                  languages: T::Array[String],
                  name: String,
                  release_date: String,
                  release_date_precision:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ReleaseDatePrecision::OrSymbol,
                  show:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::OrHash,
                  uri: String,
                  language: String,
                  restrictions:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Restrictions::OrHash,
                  resume_point:
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ResumePoint::OrHash,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
                # episode.
                id:,
                # A URL to a 30 second preview (MP3 format) of the episode. `null` if not
                # available.
                audio_preview_url:,
                # A description of the episode. HTML tags are stripped away from this field, use
                # `html_description` field in case HTML tags are needed.
                description:,
                # The episode length in milliseconds.
                duration_ms:,
                # Whether or not the episode has explicit content (true = yes it does; false = no
                # it does not OR unknown).
                explicit:,
                # External URLs for this episode.
                external_urls:,
                # A link to the Web API endpoint providing full details of the episode.
                href:,
                # A description of the episode. This field may contain HTML tags.
                html_description:,
                # The cover art for the episode in various sizes, widest first.
                images:,
                # True if the episode is hosted outside of Spotify's CDN.
                is_externally_hosted:,
                # True if the episode is playable in the given market. Otherwise false.
                is_playable:,
                # A list of the languages used in the episode, identified by their
                # [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
                languages:,
                # The name of the episode.
                name:,
                # The date the episode was first released, for example `"1981-12-15"`. Depending
                # on the precision, it might be shown as `"1981"` or `"1981-12"`.
                release_date:,
                # The precision with which `release_date` value is known.
                release_date_precision:,
                # The show on which the episode belongs.
                show:,
                # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                # episode.
                uri:,
                # The language used in the episode, identified by a
                # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
                # and might be removed in the future. Please use the `languages` field instead.
                language: nil,
                # Included in the response when a content restriction is applied.
                restrictions: nil,
                # The user's most recent position in the episode. Set if the supplied access token
                # is a user token and has the scope 'user-read-playback-position'.
                resume_point: nil,
                # The object type.
                type: :episode
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    audio_preview_url: T.nilable(String),
                    description: String,
                    duration_ms: Integer,
                    explicit: T::Boolean,
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ExternalURLs,
                    href: String,
                    html_description: String,
                    images:
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Image
                      ],
                    is_externally_hosted: T::Boolean,
                    is_playable: T::Boolean,
                    languages: T::Array[String],
                    name: String,
                    release_date: String,
                    release_date_precision:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ReleaseDatePrecision::TaggedSymbol,
                    show:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show,
                    type: Symbol,
                    uri: String,
                    language: String,
                    restrictions:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Restrictions,
                    resume_point:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ResumePoint
                  }
                )
              end
              def to_hash
              end

              class ExternalURLs < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ExternalURLs,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                # object.
                sig { returns(T.nilable(String)) }
                attr_reader :spotify

                sig { params(spotify: String).void }
                attr_writer :spotify

                # External URLs for this episode.
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
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Image,
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
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ReleaseDatePrecision
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                YEAR =
                  T.let(
                    :year,
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ReleaseDatePrecision::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ReleaseDatePrecision::TaggedSymbol
                  )
                DAY =
                  T.let(
                    :day,
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ReleaseDatePrecision::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ReleaseDatePrecision::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Show < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
                sig { returns(String) }
                attr_accessor :id

                # A list of the countries in which the show can be played, identified by their
                # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
                sig { returns(T::Array[String]) }
                attr_accessor :available_markets

                # The copyright statements of the show.
                sig do
                  returns(
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Copyright
                    ]
                  )
                end
                attr_accessor :copyrights

                # A description of the show. HTML tags are stripped away from this field, use
                # `html_description` field in case HTML tags are needed.
                sig { returns(String) }
                attr_accessor :description

                # Whether or not the show has explicit content (true = yes it does; false = no it
                # does not OR unknown).
                sig { returns(T::Boolean) }
                attr_accessor :explicit

                # External URLs for this show.
                sig do
                  returns(
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::ExternalURLs
                  )
                end
                attr_reader :external_urls

                sig do
                  params(
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::ExternalURLs::OrHash
                  ).void
                end
                attr_writer :external_urls

                # A link to the Web API endpoint providing full details of the show.
                sig { returns(String) }
                attr_accessor :href

                # A description of the show. This field may contain HTML tags.
                sig { returns(String) }
                attr_accessor :html_description

                # The cover art for the show in various sizes, widest first.
                sig do
                  returns(
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Image
                    ]
                  )
                end
                attr_accessor :images

                # True if all of the shows episodes are hosted outside of Spotify's CDN. This
                # field might be `null` in some cases.
                sig { returns(T::Boolean) }
                attr_accessor :is_externally_hosted

                # A list of the languages used in the show, identified by their
                # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
                sig { returns(T::Array[String]) }
                attr_accessor :languages

                # The media type of the show.
                sig { returns(String) }
                attr_accessor :media_type

                # The name of the episode.
                sig { returns(String) }
                attr_accessor :name

                # The publisher of the show.
                sig { returns(String) }
                attr_accessor :publisher

                # The total number of episodes in the show.
                sig { returns(Integer) }
                attr_accessor :total_episodes

                # The object type.
                sig do
                  returns(
                    Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                # show.
                sig { returns(String) }
                attr_accessor :uri

                # The show on which the episode belongs.
                sig do
                  params(
                    id: String,
                    available_markets: T::Array[String],
                    copyrights:
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Copyright::OrHash
                      ],
                    description: String,
                    explicit: T::Boolean,
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::ExternalURLs::OrHash,
                    href: String,
                    html_description: String,
                    images:
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Image::OrHash
                      ],
                    is_externally_hosted: T::Boolean,
                    languages: T::Array[String],
                    media_type: String,
                    name: String,
                    publisher: String,
                    total_episodes: Integer,
                    type:
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Type::OrSymbol,
                    uri: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
                  id:,
                  # A list of the countries in which the show can be played, identified by their
                  # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
                  available_markets:,
                  # The copyright statements of the show.
                  copyrights:,
                  # A description of the show. HTML tags are stripped away from this field, use
                  # `html_description` field in case HTML tags are needed.
                  description:,
                  # Whether or not the show has explicit content (true = yes it does; false = no it
                  # does not OR unknown).
                  explicit:,
                  # External URLs for this show.
                  external_urls:,
                  # A link to the Web API endpoint providing full details of the show.
                  href:,
                  # A description of the show. This field may contain HTML tags.
                  html_description:,
                  # The cover art for the show in various sizes, widest first.
                  images:,
                  # True if all of the shows episodes are hosted outside of Spotify's CDN. This
                  # field might be `null` in some cases.
                  is_externally_hosted:,
                  # A list of the languages used in the show, identified by their
                  # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
                  languages:,
                  # The media type of the show.
                  media_type:,
                  # The name of the episode.
                  name:,
                  # The publisher of the show.
                  publisher:,
                  # The total number of episodes in the show.
                  total_episodes:,
                  # The object type.
                  type:,
                  # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # show.
                  uri:
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      available_markets: T::Array[String],
                      copyrights:
                        T::Array[
                          Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Copyright
                        ],
                      description: String,
                      explicit: T::Boolean,
                      external_urls:
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::ExternalURLs,
                      href: String,
                      html_description: String,
                      images:
                        T::Array[
                          Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Image
                        ],
                      is_externally_hosted: T::Boolean,
                      languages: T::Array[String],
                      media_type: String,
                      name: String,
                      publisher: String,
                      total_episodes: Integer,
                      type:
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Type::TaggedSymbol,
                      uri: String
                    }
                  )
                end
                def to_hash
                end

                class Copyright < Spotted::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Copyright,
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

                class ExternalURLs < Spotted::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::ExternalURLs,
                        Spotted::Internal::AnyHash
                      )
                    end

                  # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # object.
                  sig { returns(T.nilable(String)) }
                  attr_reader :spotify

                  sig { params(spotify: String).void }
                  attr_writer :spotify

                  # External URLs for this show.
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
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Image,
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

                # The object type.
                module Type
                  extend Spotted::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SHOW =
                    T.let(
                      :show,
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class Restrictions < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Restrictions,
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

              class ResumePoint < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ResumePoint,
                      Spotted::Internal::AnyHash
                    )
                  end

                # Whether or not the episode has been fully played by the user.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :fully_played

                sig { params(fully_played: T::Boolean).void }
                attr_writer :fully_played

                # The user's most recent position in the episode in milliseconds.
                sig { returns(T.nilable(Integer)) }
                attr_reader :resume_position_ms

                sig { params(resume_position_ms: Integer).void }
                attr_writer :resume_position_ms

                # The user's most recent position in the episode. Set if the supplied access token
                # is a user token and has the scope 'user-read-playback-position'.
                sig do
                  params(
                    fully_played: T::Boolean,
                    resume_position_ms: Integer
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Whether or not the episode has been fully played by the user.
                  fully_played: nil,
                  # The user's most recent position in the episode in milliseconds.
                  resume_position_ms: nil
                )
                end

                sig do
                  override.returns(
                    { fully_played: T::Boolean, resume_position_ms: Integer }
                  )
                end
                def to_hash
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Variants
                ]
              )
            end
            def self.variants
            end
          end

          module Queue
            extend Spotted::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::Player::QueueGetResponse::Queue::Track,
                  Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode
                )
              end

            class Track < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track,
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
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album
                  )
                )
              end
              attr_reader :album

              sig do
                params(
                  album:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::OrHash
                ).void
              end
              attr_writer :album

              # The artists who performed the track. Each artist object includes a link in
              # `href` to more detailed information about the artist.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist
                    ]
                  )
                )
              end
              attr_reader :artists

              sig do
                params(
                  artists:
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::OrHash
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
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalIDs
                  )
                )
              end
              attr_reader :external_ids

              sig do
                params(
                  external_ids:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalIDs::OrHash
                ).void
              end
              attr_writer :external_ids

              # Known external URLs for this track.
              sig do
                returns(
                  T.nilable(
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalURLs
                  )
                )
              end
              attr_reader :external_urls

              sig do
                params(
                  external_urls:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalURLs::OrHash
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
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Restrictions
                  )
                )
              end
              attr_reader :restrictions

              sig do
                params(
                  restrictions:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Restrictions::OrHash
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
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Type::TaggedSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Type::OrSymbol
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
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::OrHash,
                  artists:
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::OrHash
                    ],
                  available_markets: T::Array[String],
                  disc_number: Integer,
                  duration_ms: Integer,
                  explicit: T::Boolean,
                  external_ids:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalIDs::OrHash,
                  external_urls:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalURLs::OrHash,
                  href: String,
                  is_local: T::Boolean,
                  is_playable: T::Boolean,
                  linked_from: T.anything,
                  name: String,
                  popularity: Integer,
                  preview_url: T.nilable(String),
                  restrictions:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Restrictions::OrHash,
                  track_number: Integer,
                  type:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Type::OrSymbol,
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
                    album:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album,
                    artists:
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist
                      ],
                    available_markets: T::Array[String],
                    disc_number: Integer,
                    duration_ms: Integer,
                    explicit: T::Boolean,
                    external_ids:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalIDs,
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalURLs,
                    href: String,
                    is_local: T::Boolean,
                    is_playable: T::Boolean,
                    linked_from: T.anything,
                    name: String,
                    popularity: Integer,
                    preview_url: T.nilable(String),
                    restrictions:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Restrictions,
                    track_number: Integer,
                    type:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Type::TaggedSymbol,
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
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album,
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
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::AlbumType::TaggedSymbol
                  )
                end
                attr_accessor :album_type

                # The artists of the album. Each artist object includes a link in `href` to more
                # detailed information about the artist.
                sig do
                  returns(
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist
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
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ExternalURLs
                  )
                end
                attr_reader :external_urls

                sig do
                  params(
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ExternalURLs::OrHash
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
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Image
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
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ReleaseDatePrecision::TaggedSymbol
                  )
                end
                attr_accessor :release_date_precision

                # The number of tracks in the album.
                sig { returns(Integer) }
                attr_accessor :total_tracks

                # The object type.
                sig do
                  returns(
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Type::TaggedSymbol
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
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions
                    )
                  )
                end
                attr_reader :restrictions

                sig do
                  params(
                    restrictions:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::OrHash
                  ).void
                end
                attr_writer :restrictions

                # The album on which the track appears. The album object includes a link in `href`
                # to full information about the album.
                sig do
                  params(
                    id: String,
                    album_type:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::AlbumType::OrSymbol,
                    artists:
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::OrHash
                      ],
                    available_markets: T::Array[String],
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ExternalURLs::OrHash,
                    href: String,
                    images:
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Image::OrHash
                      ],
                    name: String,
                    release_date: String,
                    release_date_precision:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ReleaseDatePrecision::OrSymbol,
                    total_tracks: Integer,
                    type:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Type::OrSymbol,
                    uri: String,
                    restrictions:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::OrHash
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::AlbumType::TaggedSymbol,
                      artists:
                        T::Array[
                          Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist
                        ],
                      available_markets: T::Array[String],
                      external_urls:
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ExternalURLs,
                      href: String,
                      images:
                        T::Array[
                          Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Image
                        ],
                      name: String,
                      release_date: String,
                      release_date_precision:
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ReleaseDatePrecision::TaggedSymbol,
                      total_tracks: Integer,
                      type:
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Type::TaggedSymbol,
                      uri: String,
                      restrictions:
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::AlbumType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ALBUM =
                    T.let(
                      :album,
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::AlbumType::TaggedSymbol
                    )
                  SINGLE =
                    T.let(
                      :single,
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::AlbumType::TaggedSymbol
                    )
                  COMPILATION =
                    T.let(
                      :compilation,
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::AlbumType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::AlbumType::TaggedSymbol
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist,
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::ExternalURLs
                      )
                    )
                  end
                  attr_reader :external_urls

                  sig do
                    params(
                      external_urls:
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::ExternalURLs::OrHash
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::Type::TaggedSymbol
                      )
                    )
                  end
                  attr_reader :type

                  sig do
                    params(
                      type:
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::Type::OrSymbol
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::ExternalURLs::OrHash,
                      href: String,
                      name: String,
                      type:
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::Type::OrSymbol,
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
                          Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::ExternalURLs,
                        href: String,
                        name: String,
                        type:
                          Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::Type::TaggedSymbol,
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
                          Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::ExternalURLs,
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
                          Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ARTIST =
                      T.let(
                        :artist,
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::Type::TaggedSymbol
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ExternalURLs,
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Image,
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ReleaseDatePrecision
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  YEAR =
                    T.let(
                      :year,
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ReleaseDatePrecision::TaggedSymbol
                    )
                  MONTH =
                    T.let(
                      :month,
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ReleaseDatePrecision::TaggedSymbol
                    )
                  DAY =
                    T.let(
                      :day,
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ReleaseDatePrecision::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ReleaseDatePrecision::TaggedSymbol
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ALBUM =
                    T.let(
                      :album,
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Type::TaggedSymbol
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions,
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::Reason::TaggedSymbol
                      )
                    )
                  end
                  attr_reader :reason

                  sig do
                    params(
                      reason:
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::Reason::OrSymbol
                    ).void
                  end
                  attr_writer :reason

                  # Included in the response when a content restriction is applied.
                  sig do
                    params(
                      reason:
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::Reason::OrSymbol
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
                          Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::Reason::TaggedSymbol
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
                          Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::Reason
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    MARKET =
                      T.let(
                        :market,
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::Reason::TaggedSymbol
                      )
                    PRODUCT =
                      T.let(
                        :product,
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::Reason::TaggedSymbol
                      )
                    EXPLICIT =
                      T.let(
                        :explicit,
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::Reason::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::Reason::TaggedSymbol
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
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist,
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
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::ExternalURLs
                    )
                  )
                end
                attr_reader :external_urls

                sig do
                  params(
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::ExternalURLs::OrHash
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
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::Type::TaggedSymbol
                    )
                  )
                end
                attr_reader :type

                sig do
                  params(
                    type:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::Type::OrSymbol
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
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::ExternalURLs::OrHash,
                    href: String,
                    name: String,
                    type:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::Type::OrSymbol,
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::ExternalURLs,
                      href: String,
                      name: String,
                      type:
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::Type::TaggedSymbol,
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::ExternalURLs,
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ARTIST =
                    T.let(
                      :artist,
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::Type::TaggedSymbol
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
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalIDs,
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

                sig do
                  override.returns({ ean: String, isrc: String, upc: String })
                end
                def to_hash
                end
              end

              class ExternalURLs < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalURLs,
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
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Restrictions,
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
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TRACK =
                  T.let(
                    :track,
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Episode < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode,
                    Spotted::Internal::AnyHash
                  )
                end

              # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
              # episode.
              sig { returns(String) }
              attr_accessor :id

              # A URL to a 30 second preview (MP3 format) of the episode. `null` if not
              # available.
              sig { returns(T.nilable(String)) }
              attr_accessor :audio_preview_url

              # A description of the episode. HTML tags are stripped away from this field, use
              # `html_description` field in case HTML tags are needed.
              sig { returns(String) }
              attr_accessor :description

              # The episode length in milliseconds.
              sig { returns(Integer) }
              attr_accessor :duration_ms

              # Whether or not the episode has explicit content (true = yes it does; false = no
              # it does not OR unknown).
              sig { returns(T::Boolean) }
              attr_accessor :explicit

              # External URLs for this episode.
              sig do
                returns(
                  Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ExternalURLs
                )
              end
              attr_reader :external_urls

              sig do
                params(
                  external_urls:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ExternalURLs::OrHash
                ).void
              end
              attr_writer :external_urls

              # A link to the Web API endpoint providing full details of the episode.
              sig { returns(String) }
              attr_accessor :href

              # A description of the episode. This field may contain HTML tags.
              sig { returns(String) }
              attr_accessor :html_description

              # The cover art for the episode in various sizes, widest first.
              sig do
                returns(
                  T::Array[
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Image
                  ]
                )
              end
              attr_accessor :images

              # True if the episode is hosted outside of Spotify's CDN.
              sig { returns(T::Boolean) }
              attr_accessor :is_externally_hosted

              # True if the episode is playable in the given market. Otherwise false.
              sig { returns(T::Boolean) }
              attr_accessor :is_playable

              # A list of the languages used in the episode, identified by their
              # [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
              sig { returns(T::Array[String]) }
              attr_accessor :languages

              # The name of the episode.
              sig { returns(String) }
              attr_accessor :name

              # The date the episode was first released, for example `"1981-12-15"`. Depending
              # on the precision, it might be shown as `"1981"` or `"1981-12"`.
              sig { returns(String) }
              attr_accessor :release_date

              # The precision with which `release_date` value is known.
              sig do
                returns(
                  Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ReleaseDatePrecision::TaggedSymbol
                )
              end
              attr_accessor :release_date_precision

              # The show on which the episode belongs.
              sig do
                returns(
                  Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show
                )
              end
              attr_reader :show

              sig do
                params(
                  show:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::OrHash
                ).void
              end
              attr_writer :show

              # The object type.
              sig { returns(Symbol) }
              attr_accessor :type

              # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              # episode.
              sig { returns(String) }
              attr_accessor :uri

              # The language used in the episode, identified by a
              # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
              # and might be removed in the future. Please use the `languages` field instead.
              sig { returns(T.nilable(String)) }
              attr_reader :language

              sig { params(language: String).void }
              attr_writer :language

              # Included in the response when a content restriction is applied.
              sig do
                returns(
                  T.nilable(
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Restrictions
                  )
                )
              end
              attr_reader :restrictions

              sig do
                params(
                  restrictions:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Restrictions::OrHash
                ).void
              end
              attr_writer :restrictions

              # The user's most recent position in the episode. Set if the supplied access token
              # is a user token and has the scope 'user-read-playback-position'.
              sig do
                returns(
                  T.nilable(
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ResumePoint
                  )
                )
              end
              attr_reader :resume_point

              sig do
                params(
                  resume_point:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ResumePoint::OrHash
                ).void
              end
              attr_writer :resume_point

              sig do
                params(
                  id: String,
                  audio_preview_url: T.nilable(String),
                  description: String,
                  duration_ms: Integer,
                  explicit: T::Boolean,
                  external_urls:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ExternalURLs::OrHash,
                  href: String,
                  html_description: String,
                  images:
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Image::OrHash
                    ],
                  is_externally_hosted: T::Boolean,
                  is_playable: T::Boolean,
                  languages: T::Array[String],
                  name: String,
                  release_date: String,
                  release_date_precision:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ReleaseDatePrecision::OrSymbol,
                  show:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::OrHash,
                  uri: String,
                  language: String,
                  restrictions:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Restrictions::OrHash,
                  resume_point:
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ResumePoint::OrHash,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
                # episode.
                id:,
                # A URL to a 30 second preview (MP3 format) of the episode. `null` if not
                # available.
                audio_preview_url:,
                # A description of the episode. HTML tags are stripped away from this field, use
                # `html_description` field in case HTML tags are needed.
                description:,
                # The episode length in milliseconds.
                duration_ms:,
                # Whether or not the episode has explicit content (true = yes it does; false = no
                # it does not OR unknown).
                explicit:,
                # External URLs for this episode.
                external_urls:,
                # A link to the Web API endpoint providing full details of the episode.
                href:,
                # A description of the episode. This field may contain HTML tags.
                html_description:,
                # The cover art for the episode in various sizes, widest first.
                images:,
                # True if the episode is hosted outside of Spotify's CDN.
                is_externally_hosted:,
                # True if the episode is playable in the given market. Otherwise false.
                is_playable:,
                # A list of the languages used in the episode, identified by their
                # [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
                languages:,
                # The name of the episode.
                name:,
                # The date the episode was first released, for example `"1981-12-15"`. Depending
                # on the precision, it might be shown as `"1981"` or `"1981-12"`.
                release_date:,
                # The precision with which `release_date` value is known.
                release_date_precision:,
                # The show on which the episode belongs.
                show:,
                # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                # episode.
                uri:,
                # The language used in the episode, identified by a
                # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
                # and might be removed in the future. Please use the `languages` field instead.
                language: nil,
                # Included in the response when a content restriction is applied.
                restrictions: nil,
                # The user's most recent position in the episode. Set if the supplied access token
                # is a user token and has the scope 'user-read-playback-position'.
                resume_point: nil,
                # The object type.
                type: :episode
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    audio_preview_url: T.nilable(String),
                    description: String,
                    duration_ms: Integer,
                    explicit: T::Boolean,
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ExternalURLs,
                    href: String,
                    html_description: String,
                    images:
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Image
                      ],
                    is_externally_hosted: T::Boolean,
                    is_playable: T::Boolean,
                    languages: T::Array[String],
                    name: String,
                    release_date: String,
                    release_date_precision:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ReleaseDatePrecision::TaggedSymbol,
                    show:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show,
                    type: Symbol,
                    uri: String,
                    language: String,
                    restrictions:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Restrictions,
                    resume_point:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ResumePoint
                  }
                )
              end
              def to_hash
              end

              class ExternalURLs < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ExternalURLs,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                # object.
                sig { returns(T.nilable(String)) }
                attr_reader :spotify

                sig { params(spotify: String).void }
                attr_writer :spotify

                # External URLs for this episode.
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
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Image,
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
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ReleaseDatePrecision
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                YEAR =
                  T.let(
                    :year,
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ReleaseDatePrecision::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ReleaseDatePrecision::TaggedSymbol
                  )
                DAY =
                  T.let(
                    :day,
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ReleaseDatePrecision::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ReleaseDatePrecision::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Show < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
                sig { returns(String) }
                attr_accessor :id

                # A list of the countries in which the show can be played, identified by their
                # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
                sig { returns(T::Array[String]) }
                attr_accessor :available_markets

                # The copyright statements of the show.
                sig do
                  returns(
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Copyright
                    ]
                  )
                end
                attr_accessor :copyrights

                # A description of the show. HTML tags are stripped away from this field, use
                # `html_description` field in case HTML tags are needed.
                sig { returns(String) }
                attr_accessor :description

                # Whether or not the show has explicit content (true = yes it does; false = no it
                # does not OR unknown).
                sig { returns(T::Boolean) }
                attr_accessor :explicit

                # External URLs for this show.
                sig do
                  returns(
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::ExternalURLs
                  )
                end
                attr_reader :external_urls

                sig do
                  params(
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::ExternalURLs::OrHash
                  ).void
                end
                attr_writer :external_urls

                # A link to the Web API endpoint providing full details of the show.
                sig { returns(String) }
                attr_accessor :href

                # A description of the show. This field may contain HTML tags.
                sig { returns(String) }
                attr_accessor :html_description

                # The cover art for the show in various sizes, widest first.
                sig do
                  returns(
                    T::Array[
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Image
                    ]
                  )
                end
                attr_accessor :images

                # True if all of the shows episodes are hosted outside of Spotify's CDN. This
                # field might be `null` in some cases.
                sig { returns(T::Boolean) }
                attr_accessor :is_externally_hosted

                # A list of the languages used in the show, identified by their
                # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
                sig { returns(T::Array[String]) }
                attr_accessor :languages

                # The media type of the show.
                sig { returns(String) }
                attr_accessor :media_type

                # The name of the episode.
                sig { returns(String) }
                attr_accessor :name

                # The publisher of the show.
                sig { returns(String) }
                attr_accessor :publisher

                # The total number of episodes in the show.
                sig { returns(Integer) }
                attr_accessor :total_episodes

                # The object type.
                sig do
                  returns(
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                # show.
                sig { returns(String) }
                attr_accessor :uri

                # The show on which the episode belongs.
                sig do
                  params(
                    id: String,
                    available_markets: T::Array[String],
                    copyrights:
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Copyright::OrHash
                      ],
                    description: String,
                    explicit: T::Boolean,
                    external_urls:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::ExternalURLs::OrHash,
                    href: String,
                    html_description: String,
                    images:
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Image::OrHash
                      ],
                    is_externally_hosted: T::Boolean,
                    languages: T::Array[String],
                    media_type: String,
                    name: String,
                    publisher: String,
                    total_episodes: Integer,
                    type:
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Type::OrSymbol,
                    uri: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
                  id:,
                  # A list of the countries in which the show can be played, identified by their
                  # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
                  available_markets:,
                  # The copyright statements of the show.
                  copyrights:,
                  # A description of the show. HTML tags are stripped away from this field, use
                  # `html_description` field in case HTML tags are needed.
                  description:,
                  # Whether or not the show has explicit content (true = yes it does; false = no it
                  # does not OR unknown).
                  explicit:,
                  # External URLs for this show.
                  external_urls:,
                  # A link to the Web API endpoint providing full details of the show.
                  href:,
                  # A description of the show. This field may contain HTML tags.
                  html_description:,
                  # The cover art for the show in various sizes, widest first.
                  images:,
                  # True if all of the shows episodes are hosted outside of Spotify's CDN. This
                  # field might be `null` in some cases.
                  is_externally_hosted:,
                  # A list of the languages used in the show, identified by their
                  # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
                  languages:,
                  # The media type of the show.
                  media_type:,
                  # The name of the episode.
                  name:,
                  # The publisher of the show.
                  publisher:,
                  # The total number of episodes in the show.
                  total_episodes:,
                  # The object type.
                  type:,
                  # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # show.
                  uri:
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      available_markets: T::Array[String],
                      copyrights:
                        T::Array[
                          Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Copyright
                        ],
                      description: String,
                      explicit: T::Boolean,
                      external_urls:
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::ExternalURLs,
                      href: String,
                      html_description: String,
                      images:
                        T::Array[
                          Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Image
                        ],
                      is_externally_hosted: T::Boolean,
                      languages: T::Array[String],
                      media_type: String,
                      name: String,
                      publisher: String,
                      total_episodes: Integer,
                      type:
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Type::TaggedSymbol,
                      uri: String
                    }
                  )
                end
                def to_hash
                end

                class Copyright < Spotted::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Copyright,
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

                class ExternalURLs < Spotted::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::ExternalURLs,
                        Spotted::Internal::AnyHash
                      )
                    end

                  # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # object.
                  sig { returns(T.nilable(String)) }
                  attr_reader :spotify

                  sig { params(spotify: String).void }
                  attr_writer :spotify

                  # External URLs for this show.
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
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Image,
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

                # The object type.
                module Type
                  extend Spotted::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SHOW =
                    T.let(
                      :show,
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class Restrictions < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Restrictions,
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

              class ResumePoint < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ResumePoint,
                      Spotted::Internal::AnyHash
                    )
                  end

                # Whether or not the episode has been fully played by the user.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :fully_played

                sig { params(fully_played: T::Boolean).void }
                attr_writer :fully_played

                # The user's most recent position in the episode in milliseconds.
                sig { returns(T.nilable(Integer)) }
                attr_reader :resume_position_ms

                sig { params(resume_position_ms: Integer).void }
                attr_writer :resume_position_ms

                # The user's most recent position in the episode. Set if the supplied access token
                # is a user token and has the scope 'user-read-playback-position'.
                sig do
                  params(
                    fully_played: T::Boolean,
                    resume_position_ms: Integer
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Whether or not the episode has been fully played by the user.
                  fully_played: nil,
                  # The user's most recent position in the episode in milliseconds.
                  resume_position_ms: nil
                )
                end

                sig do
                  override.returns(
                    { fully_played: T::Boolean, resume_position_ms: Integer }
                  )
                end
                def to_hash
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::Me::Player::QueueGetResponse::Queue::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
