# frozen_string_literal: true

module Spotted
  module Models
    module Me
      module Player
        # @see Spotted::Resources::Me::Player::Queue#get
        class QueueGetResponse < Spotted::Internal::Type::BaseModel
          # @!attribute currently_playing
          #   The currently playing track or episode. Can be `null`.
          #
          #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode, nil]
          optional :currently_playing, union: -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying }

          # @!attribute queue
          #   The tracks or episodes in the queue. Can be empty.
          #
          #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Track, Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode>, nil]
          optional :queue,
                   -> { Spotted::Internal::Type::ArrayOf[union: Spotted::Models::Me::Player::QueueGetResponse::Queue] }

          # @!method initialize(currently_playing: nil, queue: nil)
          #   @param currently_playing [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode] The currently playing track or episode. Can be `null`.
          #
          #   @param queue [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Track, Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode>] The tracks or episodes in the queue. Can be empty.

          # The currently playing track or episode. Can be `null`.
          #
          # @see Spotted::Models::Me::Player::QueueGetResponse#currently_playing
          module CurrentlyPlaying
            extend Spotted::Internal::Type::Union

            discriminator :type

            variant :track, -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track }

            variant :episode, -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode }

            class Track < Spotted::Internal::Type::BaseModel
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
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album, nil]
              optional :album, -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album }

              # @!attribute artists
              #   The artists who performed the track. Each artist object includes a link in
              #   `href` to more detailed information about the artist.
              #
              #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist>, nil]
              optional :artists,
                       -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist] }

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
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalIDs, nil]
              optional :external_ids,
                       -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalIDs }

              # @!attribute external_urls
              #   Known external URLs for this track.
              #
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalURLs, nil]
              optional :external_urls,
                       -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalURLs }

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
              #   @return [Object, nil]
              optional :linked_from, Spotted::Internal::Type::Unknown

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
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Restrictions, nil]
              optional :restrictions,
                       -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Restrictions }

              # @!attribute track_number
              #   The number of the track. If an album has several discs, the track number is the
              #   number on the specified disc.
              #
              #   @return [Integer, nil]
              optional :track_number, Integer

              # @!attribute type
              #   The object type: "track".
              #
              #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Type, nil]
              optional :type, enum: -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Type }

              # @!attribute uri
              #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   track.
              #
              #   @return [String, nil]
              optional :uri, String

              # @!method initialize(id: nil, album: nil, artists: nil, available_markets: nil, disc_number: nil, duration_ms: nil, explicit: nil, external_ids: nil, external_urls: nil, href: nil, is_local: nil, is_playable: nil, linked_from: nil, name: nil, popularity: nil, preview_url: nil, restrictions: nil, track_number: nil, type: nil, uri: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track} for
              #   more details.
              #
              #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track
              #
              #   @param album [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album] The album on which the track appears. The album object includes a link in `href`
              #
              #   @param artists [Array<Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist>] The artists who performed the track. Each artist object includes a link in `href
              #
              #   @param available_markets [Array<String>] A list of the countries in which the track can be played, identified by their [I
              #
              #   @param disc_number [Integer] The disc number (usually `1` unless the album consists of more than one disc).
              #
              #   @param duration_ms [Integer] The track length in milliseconds.
              #
              #   @param explicit [Boolean] Whether or not the track has explicit lyrics ( `true` = yes it does; `false` = n
              #
              #   @param external_ids [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalIDs] Known external IDs for the track.
              #
              #   @param external_urls [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalURLs] Known external URLs for this track.
              #
              #   @param href [String] A link to the Web API endpoint providing full details of the track.
              #
              #   @param is_local [Boolean] Whether or not the track is from a local file.
              #
              #   @param is_playable [Boolean] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
              #
              #   @param linked_from [Object] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
              #
              #   @param name [String] The name of the track.
              #
              #   @param popularity [Integer] The popularity of the track. The value will be between 0 and 100, with 100 being
              #
              #   @param preview_url [String, nil] A link to a 30 second preview (MP3 format) of the track. Can be `null`
              #
              #   @param restrictions [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Restrictions] Included in the response when a content restriction is applied.
              #
              #   @param track_number [Integer] The number of the track. If an album has several discs, the track number is the
              #
              #   @param type [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Type] The object type: "track".
              #
              #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the trac

              # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track#album
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
                #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::AlbumType]
                required :album_type,
                         enum: -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::AlbumType }

                # @!attribute artists
                #   The artists of the album. Each artist object includes a link in `href` to more
                #   detailed information about the artist.
                #
                #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist>]
                required :artists,
                         -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist] }

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
                #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ExternalURLs]
                required :external_urls,
                         -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ExternalURLs }

                # @!attribute href
                #   A link to the Web API endpoint providing full details of the album.
                #
                #   @return [String]
                required :href, String

                # @!attribute images
                #   The cover art for the album in various sizes, widest first.
                #
                #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Image>]
                required :images,
                         -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Image] }

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
                #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ReleaseDatePrecision]
                required :release_date_precision,
                         enum: -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ReleaseDatePrecision }

                # @!attribute total_tracks
                #   The number of tracks in the album.
                #
                #   @return [Integer]
                required :total_tracks, Integer

                # @!attribute type
                #   The object type.
                #
                #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Type]
                required :type,
                         enum: -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Type }

                # @!attribute uri
                #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   album.
                #
                #   @return [String]
                required :uri, String

                # @!attribute restrictions
                #   Included in the response when a content restriction is applied.
                #
                #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions, nil]
                optional :restrictions,
                         -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions }

                # @!method initialize(id:, album_type:, artists:, available_markets:, external_urls:, href:, images:, name:, release_date:, release_date_precision:, total_tracks:, type:, uri:, restrictions: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album}
                #   for more details.
                #
                #   The album on which the track appears. The album object includes a link in `href`
                #   to full information about the album.
                #
                #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the album
                #
                #   @param album_type [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::AlbumType] The type of the album.
                #
                #   @param artists [Array<Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist>] The artists of the album. Each artist object includes a link in `href` to more d
                #
                #   @param available_markets [Array<String>] The markets in which the album is available: [ISO 3166-1 alpha-2 country codes](
                #
                #   @param external_urls [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ExternalURLs] Known external URLs for this album.
                #
                #   @param href [String] A link to the Web API endpoint providing full details of the album.
                #
                #   @param images [Array<Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Image>] The cover art for the album in various sizes, widest first.
                #
                #   @param name [String] The name of the album. In case of an album takedown, the value may be an empty s
                #
                #   @param release_date [String] The date the album was first released.
                #
                #   @param release_date_precision [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ReleaseDatePrecision] The precision with which `release_date` value is known.
                #
                #   @param total_tracks [Integer] The number of tracks in the album.
                #
                #   @param type [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Type] The object type.
                #
                #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the albu
                #
                #   @param restrictions [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions] Included in the response when a content restriction is applied.

                # The type of the album.
                #
                # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album#album_type
                module AlbumType
                  extend Spotted::Internal::Type::Enum

                  ALBUM = :album
                  SINGLE = :single
                  COMPILATION = :compilation

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

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
                  #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::ExternalURLs, nil]
                  optional :external_urls,
                           -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::ExternalURLs }

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
                  #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::Type, nil]
                  optional :type,
                           enum: -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::Type }

                  # @!attribute uri
                  #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   artist.
                  #
                  #   @return [String, nil]
                  optional :uri, String

                  # @!method initialize(id: nil, external_urls: nil, href: nil, name: nil, type: nil, uri: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist}
                  #   for more details.
                  #
                  #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
                  #
                  #   @param external_urls [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::ExternalURLs] Known external URLs for this artist.
                  #
                  #   @param href [String] A link to the Web API endpoint providing full details of the artist.
                  #
                  #   @param name [String] The name of the artist.
                  #
                  #   @param type [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::Type] The object type.
                  #
                  #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

                  # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist#external_urls
                  class ExternalURLs < Spotted::Internal::Type::BaseModel
                    # @!attribute spotify
                    #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                    #   object.
                    #
                    #   @return [String, nil]
                    optional :spotify, String

                    # @!method initialize(spotify: nil)
                    #   Some parameter documentations has been truncated, see
                    #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist::ExternalURLs}
                    #   for more details.
                    #
                    #   Known external URLs for this artist.
                    #
                    #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
                  end

                  # The object type.
                  #
                  # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Artist#type
                  module Type
                    extend Spotted::Internal::Type::Enum

                    ARTIST = :artist

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album#external_urls
                class ExternalURLs < Spotted::Internal::Type::BaseModel
                  # @!attribute spotify
                  #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   object.
                  #
                  #   @return [String, nil]
                  optional :spotify, String

                  # @!method initialize(spotify: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::ExternalURLs}
                  #   for more details.
                  #
                  #   Known external URLs for this album.
                  #
                  #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
                end

                class Image < Spotted::Internal::Type::BaseModel
                  # @!attribute height
                  #   The image height in pixels.
                  #
                  #   @return [Integer, nil]
                  required :height, Integer, nil?: true

                  # @!attribute url
                  #   The source URL of the image.
                  #
                  #   @return [String]
                  required :url, String

                  # @!attribute width
                  #   The image width in pixels.
                  #
                  #   @return [Integer, nil]
                  required :width, Integer, nil?: true

                  # @!method initialize(height:, url:, width:)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Image}
                  #   for more details.
                  #
                  #   @param height [Integer, nil] The image height in pixels.
                  #
                  #   @param url [String] The source URL of the image.
                  #
                  #   @param width [Integer, nil] The image width in pixels.
                end

                # The precision with which `release_date` value is known.
                #
                # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album#release_date_precision
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
                # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album#type
                module Type
                  extend Spotted::Internal::Type::Enum

                  ALBUM = :album

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album#restrictions
                class Restrictions < Spotted::Internal::Type::BaseModel
                  # @!attribute reason
                  #   The reason for the restriction. Albums may be restricted if the content is not
                  #   available in a given market, to the user's subscription type, or when the user's
                  #   account is set to not play explicit content. Additional reasons may be added in
                  #   the future.
                  #
                  #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::Reason, nil]
                  optional :reason,
                           enum: -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::Reason }

                  # @!method initialize(reason: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions}
                  #   for more details.
                  #
                  #   Included in the response when a content restriction is applied.
                  #
                  #   @param reason [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions::Reason] The reason for the restriction. Albums may be restricted if the content is not a

                  # The reason for the restriction. Albums may be restricted if the content is not
                  # available in a given market, to the user's subscription type, or when the user's
                  # account is set to not play explicit content. Additional reasons may be added in
                  # the future.
                  #
                  # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Album::Restrictions#reason
                  module Reason
                    extend Spotted::Internal::Type::Enum

                    MARKET = :market
                    PRODUCT = :product
                    EXPLICIT = :explicit

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end
              end

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
                #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::ExternalURLs, nil]
                optional :external_urls,
                         -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::ExternalURLs }

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
                #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::Type, nil]
                optional :type,
                         enum: -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::Type }

                # @!attribute uri
                #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   artist.
                #
                #   @return [String, nil]
                optional :uri, String

                # @!method initialize(id: nil, external_urls: nil, href: nil, name: nil, type: nil, uri: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist}
                #   for more details.
                #
                #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
                #
                #   @param external_urls [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::ExternalURLs] Known external URLs for this artist.
                #
                #   @param href [String] A link to the Web API endpoint providing full details of the artist.
                #
                #   @param name [String] The name of the artist.
                #
                #   @param type [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::Type] The object type.
                #
                #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

                # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist#external_urls
                class ExternalURLs < Spotted::Internal::Type::BaseModel
                  # @!attribute spotify
                  #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   object.
                  #
                  #   @return [String, nil]
                  optional :spotify, String

                  # @!method initialize(spotify: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist::ExternalURLs}
                  #   for more details.
                  #
                  #   Known external URLs for this artist.
                  #
                  #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
                end

                # The object type.
                #
                # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Artist#type
                module Type
                  extend Spotted::Internal::Type::Enum

                  ARTIST = :artist

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track#external_ids
              class ExternalIDs < Spotted::Internal::Type::BaseModel
                # @!attribute ean
                #   [International Article Number](http://en.wikipedia.org/wiki/International_Article_Number_%28EAN%29)
                #
                #   @return [String, nil]
                optional :ean, String

                # @!attribute isrc
                #   [International Standard Recording Code](http://en.wikipedia.org/wiki/International_Standard_Recording_Code)
                #
                #   @return [String, nil]
                optional :isrc, String

                # @!attribute upc
                #   [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
                #
                #   @return [String, nil]
                optional :upc, String

                # @!method initialize(ean: nil, isrc: nil, upc: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalIDs}
                #   for more details.
                #
                #   Known external IDs for the track.
                #
                #   @param ean [String] [International Article Number](http://en.wikipedia.org/wiki/International_Articl
                #
                #   @param isrc [String] [International Standard Recording Code](http://en.wikipedia.org/wiki/Internation
                #
                #   @param upc [String] [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
              end

              # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track#external_urls
              class ExternalURLs < Spotted::Internal::Type::BaseModel
                # @!attribute spotify
                #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   object.
                #
                #   @return [String, nil]
                optional :spotify, String

                # @!method initialize(spotify: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::ExternalURLs}
                #   for more details.
                #
                #   Known external URLs for this track.
                #
                #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
              end

              # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track#restrictions
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
                #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track::Restrictions}
                #   for more details.
                #
                #   Included in the response when a content restriction is applied.
                #
                #   @param reason [String] The reason for the restriction. Supported values:
              end

              # The object type: "track".
              #
              # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track#type
              module Type
                extend Spotted::Internal::Type::Enum

                TRACK = :track

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Episode < Spotted::Internal::Type::BaseModel
              # @!attribute id
              #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   episode.
              #
              #   @return [String]
              required :id, String

              # @!attribute audio_preview_url
              #   @deprecated
              #
              #   A URL to a 30 second preview (MP3 format) of the episode. `null` if not
              #   available.
              #
              #   @return [String, nil]
              required :audio_preview_url, String, nil?: true

              # @!attribute description
              #   A description of the episode. HTML tags are stripped away from this field, use
              #   `html_description` field in case HTML tags are needed.
              #
              #   @return [String]
              required :description, String

              # @!attribute duration_ms
              #   The episode length in milliseconds.
              #
              #   @return [Integer]
              required :duration_ms, Integer

              # @!attribute explicit
              #   Whether or not the episode has explicit content (true = yes it does; false = no
              #   it does not OR unknown).
              #
              #   @return [Boolean]
              required :explicit, Spotted::Internal::Type::Boolean

              # @!attribute external_urls
              #   External URLs for this episode.
              #
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ExternalURLs]
              required :external_urls,
                       -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ExternalURLs }

              # @!attribute href
              #   A link to the Web API endpoint providing full details of the episode.
              #
              #   @return [String]
              required :href, String

              # @!attribute html_description
              #   A description of the episode. This field may contain HTML tags.
              #
              #   @return [String]
              required :html_description, String

              # @!attribute images
              #   The cover art for the episode in various sizes, widest first.
              #
              #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Image>]
              required :images,
                       -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Image] }

              # @!attribute is_externally_hosted
              #   True if the episode is hosted outside of Spotify's CDN.
              #
              #   @return [Boolean]
              required :is_externally_hosted, Spotted::Internal::Type::Boolean

              # @!attribute is_playable
              #   True if the episode is playable in the given market. Otherwise false.
              #
              #   @return [Boolean]
              required :is_playable, Spotted::Internal::Type::Boolean

              # @!attribute languages
              #   A list of the languages used in the episode, identified by their
              #   [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
              #
              #   @return [Array<String>]
              required :languages, Spotted::Internal::Type::ArrayOf[String]

              # @!attribute name
              #   The name of the episode.
              #
              #   @return [String]
              required :name, String

              # @!attribute release_date
              #   The date the episode was first released, for example `"1981-12-15"`. Depending
              #   on the precision, it might be shown as `"1981"` or `"1981-12"`.
              #
              #   @return [String]
              required :release_date, String

              # @!attribute release_date_precision
              #   The precision with which `release_date` value is known.
              #
              #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ReleaseDatePrecision]
              required :release_date_precision,
                       enum: -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ReleaseDatePrecision }

              # @!attribute show
              #   The show on which the episode belongs.
              #
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show]
              required :show, -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show }

              # @!attribute type
              #   The object type.
              #
              #   @return [Symbol, :episode]
              required :type, const: :episode

              # @!attribute uri
              #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   episode.
              #
              #   @return [String]
              required :uri, String

              # @!attribute language
              #   @deprecated
              #
              #   The language used in the episode, identified by a
              #   [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
              #   and might be removed in the future. Please use the `languages` field instead.
              #
              #   @return [String, nil]
              optional :language, String

              # @!attribute restrictions
              #   Included in the response when a content restriction is applied.
              #
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Restrictions, nil]
              optional :restrictions,
                       -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Restrictions }

              # @!attribute resume_point
              #   The user's most recent position in the episode. Set if the supplied access token
              #   is a user token and has the scope 'user-read-playback-position'.
              #
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ResumePoint, nil]
              optional :resume_point,
                       -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ResumePoint }

              # @!method initialize(id:, audio_preview_url:, description:, duration_ms:, explicit:, external_urls:, href:, html_description:, images:, is_externally_hosted:, is_playable:, languages:, name:, release_date:, release_date_precision:, show:, uri:, language: nil, restrictions: nil, resume_point: nil, type: :episode)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode} for
              #   more details.
              #
              #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the episo
              #
              #   @param audio_preview_url [String, nil] A URL to a 30 second preview (MP3 format) of the episode. `null` if not availabl
              #
              #   @param description [String] A description of the episode. HTML tags are stripped away from this field, use `
              #
              #   @param duration_ms [Integer] The episode length in milliseconds.
              #
              #   @param explicit [Boolean] Whether or not the episode has explicit content (true = yes it does; false = no
              #
              #   @param external_urls [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ExternalURLs] External URLs for this episode.
              #
              #   @param href [String] A link to the Web API endpoint providing full details of the episode.
              #
              #   @param html_description [String] A description of the episode. This field may contain HTML tags.
              #
              #   @param images [Array<Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Image>] The cover art for the episode in various sizes, widest first.
              #
              #   @param is_externally_hosted [Boolean] True if the episode is hosted outside of Spotify's CDN.
              #
              #   @param is_playable [Boolean] True if the episode is playable in the given market. Otherwise false.
              #
              #   @param languages [Array<String>] A list of the languages used in the episode, identified by their [ISO 639-1](htt
              #
              #   @param name [String] The name of the episode.
              #
              #   @param release_date [String] The date the episode was first released, for example `"1981-12-15"`. Depending o
              #
              #   @param release_date_precision [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ReleaseDatePrecision] The precision with which `release_date` value is known.
              #
              #   @param show [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show] The show on which the episode belongs.
              #
              #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the epis
              #
              #   @param language [String] The language used in the episode, identified by a [ISO 639](https://en.wikipedia
              #
              #   @param restrictions [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Restrictions] Included in the response when a content restriction is applied.
              #
              #   @param resume_point [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ResumePoint] The user's most recent position in the episode. Set if the supplied access token
              #
              #   @param type [Symbol, :episode] The object type.

              # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode#external_urls
              class ExternalURLs < Spotted::Internal::Type::BaseModel
                # @!attribute spotify
                #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   object.
                #
                #   @return [String, nil]
                optional :spotify, String

                # @!method initialize(spotify: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ExternalURLs}
                #   for more details.
                #
                #   External URLs for this episode.
                #
                #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
              end

              class Image < Spotted::Internal::Type::BaseModel
                # @!attribute height
                #   The image height in pixels.
                #
                #   @return [Integer, nil]
                required :height, Integer, nil?: true

                # @!attribute url
                #   The source URL of the image.
                #
                #   @return [String]
                required :url, String

                # @!attribute width
                #   The image width in pixels.
                #
                #   @return [Integer, nil]
                required :width, Integer, nil?: true

                # @!method initialize(height:, url:, width:)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Image}
                #   for more details.
                #
                #   @param height [Integer, nil] The image height in pixels.
                #
                #   @param url [String] The source URL of the image.
                #
                #   @param width [Integer, nil] The image width in pixels.
              end

              # The precision with which `release_date` value is known.
              #
              # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode#release_date_precision
              module ReleaseDatePrecision
                extend Spotted::Internal::Type::Enum

                YEAR = :year
                MONTH = :month
                DAY = :day

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode#show
              class Show < Spotted::Internal::Type::BaseModel
                # @!attribute id
                #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
                #
                #   @return [String]
                required :id, String

                # @!attribute available_markets
                #   A list of the countries in which the show can be played, identified by their
                #   [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
                #
                #   @return [Array<String>]
                required :available_markets, Spotted::Internal::Type::ArrayOf[String]

                # @!attribute copyrights
                #   The copyright statements of the show.
                #
                #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Copyright>]
                required :copyrights,
                         -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Copyright] }

                # @!attribute description
                #   A description of the show. HTML tags are stripped away from this field, use
                #   `html_description` field in case HTML tags are needed.
                #
                #   @return [String]
                required :description, String

                # @!attribute explicit
                #   Whether or not the show has explicit content (true = yes it does; false = no it
                #   does not OR unknown).
                #
                #   @return [Boolean]
                required :explicit, Spotted::Internal::Type::Boolean

                # @!attribute external_urls
                #   External URLs for this show.
                #
                #   @return [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::ExternalURLs]
                required :external_urls,
                         -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::ExternalURLs }

                # @!attribute href
                #   A link to the Web API endpoint providing full details of the show.
                #
                #   @return [String]
                required :href, String

                # @!attribute html_description
                #   A description of the show. This field may contain HTML tags.
                #
                #   @return [String]
                required :html_description, String

                # @!attribute images
                #   The cover art for the show in various sizes, widest first.
                #
                #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Image>]
                required :images,
                         -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Image] }

                # @!attribute is_externally_hosted
                #   True if all of the shows episodes are hosted outside of Spotify's CDN. This
                #   field might be `null` in some cases.
                #
                #   @return [Boolean]
                required :is_externally_hosted, Spotted::Internal::Type::Boolean

                # @!attribute languages
                #   A list of the languages used in the show, identified by their
                #   [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
                #
                #   @return [Array<String>]
                required :languages, Spotted::Internal::Type::ArrayOf[String]

                # @!attribute media_type
                #   The media type of the show.
                #
                #   @return [String]
                required :media_type, String

                # @!attribute name
                #   The name of the episode.
                #
                #   @return [String]
                required :name, String

                # @!attribute publisher
                #   The publisher of the show.
                #
                #   @return [String]
                required :publisher, String

                # @!attribute total_episodes
                #   The total number of episodes in the show.
                #
                #   @return [Integer]
                required :total_episodes, Integer

                # @!attribute type
                #   The object type.
                #
                #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Type]
                required :type,
                         enum: -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Type }

                # @!attribute uri
                #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   show.
                #
                #   @return [String]
                required :uri, String

                # @!method initialize(id:, available_markets:, copyrights:, description:, explicit:, external_urls:, href:, html_description:, images:, is_externally_hosted:, languages:, media_type:, name:, publisher:, total_episodes:, type:, uri:)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show}
                #   for more details.
                #
                #   The show on which the episode belongs.
                #
                #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
                #
                #   @param available_markets [Array<String>] A list of the countries in which the show can be played, identified by their [IS
                #
                #   @param copyrights [Array<Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Copyright>] The copyright statements of the show.
                #
                #   @param description [String] A description of the show. HTML tags are stripped away from this field, use `htm
                #
                #   @param explicit [Boolean] Whether or not the show has explicit content (true = yes it does; false = no it
                #
                #   @param external_urls [Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::ExternalURLs] External URLs for this show.
                #
                #   @param href [String] A link to the Web API endpoint providing full details of the show.
                #
                #   @param html_description [String] A description of the show. This field may contain HTML tags.
                #
                #   @param images [Array<Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Image>] The cover art for the show in various sizes, widest first.
                #
                #   @param is_externally_hosted [Boolean] True if all of the shows episodes are hosted outside of Spotify's CDN. This fiel
                #
                #   @param languages [Array<String>] A list of the languages used in the show, identified by their [ISO 639](https://
                #
                #   @param media_type [String] The media type of the show.
                #
                #   @param name [String] The name of the episode.
                #
                #   @param publisher [String] The publisher of the show.
                #
                #   @param total_episodes [Integer] The total number of episodes in the show.
                #
                #   @param type [Symbol, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Type] The object type.
                #
                #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the show

                class Copyright < Spotted::Internal::Type::BaseModel
                  # @!attribute text
                  #   The copyright text for this content.
                  #
                  #   @return [String, nil]
                  optional :text, String

                  # @!attribute type
                  #   The type of copyright: `C` = the copyright, `P` = the sound recording
                  #   (performance) copyright.
                  #
                  #   @return [String, nil]
                  optional :type, String

                  # @!method initialize(text: nil, type: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Copyright}
                  #   for more details.
                  #
                  #   @param text [String] The copyright text for this content.
                  #
                  #   @param type [String] The type of copyright: `C` = the copyright, `P` = the sound recording (performan
                end

                # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show#external_urls
                class ExternalURLs < Spotted::Internal::Type::BaseModel
                  # @!attribute spotify
                  #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   object.
                  #
                  #   @return [String, nil]
                  optional :spotify, String

                  # @!method initialize(spotify: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::ExternalURLs}
                  #   for more details.
                  #
                  #   External URLs for this show.
                  #
                  #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
                end

                class Image < Spotted::Internal::Type::BaseModel
                  # @!attribute height
                  #   The image height in pixels.
                  #
                  #   @return [Integer, nil]
                  required :height, Integer, nil?: true

                  # @!attribute url
                  #   The source URL of the image.
                  #
                  #   @return [String]
                  required :url, String

                  # @!attribute width
                  #   The image width in pixels.
                  #
                  #   @return [Integer, nil]
                  required :width, Integer, nil?: true

                  # @!method initialize(height:, url:, width:)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show::Image}
                  #   for more details.
                  #
                  #   @param height [Integer, nil] The image height in pixels.
                  #
                  #   @param url [String] The source URL of the image.
                  #
                  #   @param width [Integer, nil] The image width in pixels.
                end

                # The object type.
                #
                # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Show#type
                module Type
                  extend Spotted::Internal::Type::Enum

                  SHOW = :show

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode#restrictions
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
                #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::Restrictions}
                #   for more details.
                #
                #   Included in the response when a content restriction is applied.
                #
                #   @param reason [String] The reason for the restriction. Supported values:
              end

              # @see Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode#resume_point
              class ResumePoint < Spotted::Internal::Type::BaseModel
                # @!attribute fully_played
                #   Whether or not the episode has been fully played by the user.
                #
                #   @return [Boolean, nil]
                optional :fully_played, Spotted::Internal::Type::Boolean

                # @!attribute resume_position_ms
                #   The user's most recent position in the episode in milliseconds.
                #
                #   @return [Integer, nil]
                optional :resume_position_ms, Integer

                # @!method initialize(fully_played: nil, resume_position_ms: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode::ResumePoint}
                #   for more details.
                #
                #   The user's most recent position in the episode. Set if the supplied access token
                #   is a user token and has the scope 'user-read-playback-position'.
                #
                #   @param fully_played [Boolean] Whether or not the episode has been fully played by the user.
                #
                #   @param resume_position_ms [Integer] The user's most recent position in the episode in milliseconds.
              end
            end

            # @!method self.variants
            #   @return [Array(Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Track, Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Episode)]
          end

          module Queue
            extend Spotted::Internal::Type::Union

            discriminator :type

            variant :track, -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track }

            variant :episode, -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode }

            class Track < Spotted::Internal::Type::BaseModel
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
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album, nil]
              optional :album, -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album }

              # @!attribute artists
              #   The artists who performed the track. Each artist object includes a link in
              #   `href` to more detailed information about the artist.
              #
              #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist>, nil]
              optional :artists,
                       -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist] }

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
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalIDs, nil]
              optional :external_ids, -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalIDs }

              # @!attribute external_urls
              #   Known external URLs for this track.
              #
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalURLs, nil]
              optional :external_urls, -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalURLs }

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
              #   @return [Object, nil]
              optional :linked_from, Spotted::Internal::Type::Unknown

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
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Restrictions, nil]
              optional :restrictions, -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Restrictions }

              # @!attribute track_number
              #   The number of the track. If an album has several discs, the track number is the
              #   number on the specified disc.
              #
              #   @return [Integer, nil]
              optional :track_number, Integer

              # @!attribute type
              #   The object type: "track".
              #
              #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Type, nil]
              optional :type, enum: -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Type }

              # @!attribute uri
              #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   track.
              #
              #   @return [String, nil]
              optional :uri, String

              # @!method initialize(id: nil, album: nil, artists: nil, available_markets: nil, disc_number: nil, duration_ms: nil, explicit: nil, external_ids: nil, external_urls: nil, href: nil, is_local: nil, is_playable: nil, linked_from: nil, name: nil, popularity: nil, preview_url: nil, restrictions: nil, track_number: nil, type: nil, uri: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Track} for more details.
              #
              #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track
              #
              #   @param album [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album] The album on which the track appears. The album object includes a link in `href`
              #
              #   @param artists [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist>] The artists who performed the track. Each artist object includes a link in `href
              #
              #   @param available_markets [Array<String>] A list of the countries in which the track can be played, identified by their [I
              #
              #   @param disc_number [Integer] The disc number (usually `1` unless the album consists of more than one disc).
              #
              #   @param duration_ms [Integer] The track length in milliseconds.
              #
              #   @param explicit [Boolean] Whether or not the track has explicit lyrics ( `true` = yes it does; `false` = n
              #
              #   @param external_ids [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalIDs] Known external IDs for the track.
              #
              #   @param external_urls [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalURLs] Known external URLs for this track.
              #
              #   @param href [String] A link to the Web API endpoint providing full details of the track.
              #
              #   @param is_local [Boolean] Whether or not the track is from a local file.
              #
              #   @param is_playable [Boolean] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
              #
              #   @param linked_from [Object] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
              #
              #   @param name [String] The name of the track.
              #
              #   @param popularity [Integer] The popularity of the track. The value will be between 0 and 100, with 100 being
              #
              #   @param preview_url [String, nil] A link to a 30 second preview (MP3 format) of the track. Can be `null`
              #
              #   @param restrictions [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Restrictions] Included in the response when a content restriction is applied.
              #
              #   @param track_number [Integer] The number of the track. If an album has several discs, the track number is the
              #
              #   @param type [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Type] The object type: "track".
              #
              #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the trac

              # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track#album
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
                #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::AlbumType]
                required :album_type,
                         enum: -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::AlbumType }

                # @!attribute artists
                #   The artists of the album. Each artist object includes a link in `href` to more
                #   detailed information about the artist.
                #
                #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist>]
                required :artists,
                         -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist] }

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
                #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ExternalURLs]
                required :external_urls,
                         -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ExternalURLs }

                # @!attribute href
                #   A link to the Web API endpoint providing full details of the album.
                #
                #   @return [String]
                required :href, String

                # @!attribute images
                #   The cover art for the album in various sizes, widest first.
                #
                #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Image>]
                required :images,
                         -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Image] }

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
                #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ReleaseDatePrecision]
                required :release_date_precision,
                         enum: -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ReleaseDatePrecision }

                # @!attribute total_tracks
                #   The number of tracks in the album.
                #
                #   @return [Integer]
                required :total_tracks, Integer

                # @!attribute type
                #   The object type.
                #
                #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Type]
                required :type, enum: -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Type }

                # @!attribute uri
                #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   album.
                #
                #   @return [String]
                required :uri, String

                # @!attribute restrictions
                #   Included in the response when a content restriction is applied.
                #
                #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions, nil]
                optional :restrictions,
                         -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions }

                # @!method initialize(id:, album_type:, artists:, available_markets:, external_urls:, href:, images:, name:, release_date:, release_date_precision:, total_tracks:, type:, uri:, restrictions: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album} for more
                #   details.
                #
                #   The album on which the track appears. The album object includes a link in `href`
                #   to full information about the album.
                #
                #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the album
                #
                #   @param album_type [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::AlbumType] The type of the album.
                #
                #   @param artists [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist>] The artists of the album. Each artist object includes a link in `href` to more d
                #
                #   @param available_markets [Array<String>] The markets in which the album is available: [ISO 3166-1 alpha-2 country codes](
                #
                #   @param external_urls [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ExternalURLs] Known external URLs for this album.
                #
                #   @param href [String] A link to the Web API endpoint providing full details of the album.
                #
                #   @param images [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Image>] The cover art for the album in various sizes, widest first.
                #
                #   @param name [String] The name of the album. In case of an album takedown, the value may be an empty s
                #
                #   @param release_date [String] The date the album was first released.
                #
                #   @param release_date_precision [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ReleaseDatePrecision] The precision with which `release_date` value is known.
                #
                #   @param total_tracks [Integer] The number of tracks in the album.
                #
                #   @param type [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Type] The object type.
                #
                #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the albu
                #
                #   @param restrictions [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions] Included in the response when a content restriction is applied.

                # The type of the album.
                #
                # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album#album_type
                module AlbumType
                  extend Spotted::Internal::Type::Enum

                  ALBUM = :album
                  SINGLE = :single
                  COMPILATION = :compilation

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

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
                  #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::ExternalURLs, nil]
                  optional :external_urls,
                           -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::ExternalURLs }

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
                  #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::Type, nil]
                  optional :type,
                           enum: -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::Type }

                  # @!attribute uri
                  #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   artist.
                  #
                  #   @return [String, nil]
                  optional :uri, String

                  # @!method initialize(id: nil, external_urls: nil, href: nil, name: nil, type: nil, uri: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist} for
                  #   more details.
                  #
                  #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
                  #
                  #   @param external_urls [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::ExternalURLs] Known external URLs for this artist.
                  #
                  #   @param href [String] A link to the Web API endpoint providing full details of the artist.
                  #
                  #   @param name [String] The name of the artist.
                  #
                  #   @param type [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::Type] The object type.
                  #
                  #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

                  # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist#external_urls
                  class ExternalURLs < Spotted::Internal::Type::BaseModel
                    # @!attribute spotify
                    #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                    #   object.
                    #
                    #   @return [String, nil]
                    optional :spotify, String

                    # @!method initialize(spotify: nil)
                    #   Some parameter documentations has been truncated, see
                    #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist::ExternalURLs}
                    #   for more details.
                    #
                    #   Known external URLs for this artist.
                    #
                    #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
                  end

                  # The object type.
                  #
                  # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Artist#type
                  module Type
                    extend Spotted::Internal::Type::Enum

                    ARTIST = :artist

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album#external_urls
                class ExternalURLs < Spotted::Internal::Type::BaseModel
                  # @!attribute spotify
                  #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   object.
                  #
                  #   @return [String, nil]
                  optional :spotify, String

                  # @!method initialize(spotify: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::ExternalURLs}
                  #   for more details.
                  #
                  #   Known external URLs for this album.
                  #
                  #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
                end

                class Image < Spotted::Internal::Type::BaseModel
                  # @!attribute height
                  #   The image height in pixels.
                  #
                  #   @return [Integer, nil]
                  required :height, Integer, nil?: true

                  # @!attribute url
                  #   The source URL of the image.
                  #
                  #   @return [String]
                  required :url, String

                  # @!attribute width
                  #   The image width in pixels.
                  #
                  #   @return [Integer, nil]
                  required :width, Integer, nil?: true

                  # @!method initialize(height:, url:, width:)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Image} for
                  #   more details.
                  #
                  #   @param height [Integer, nil] The image height in pixels.
                  #
                  #   @param url [String] The source URL of the image.
                  #
                  #   @param width [Integer, nil] The image width in pixels.
                end

                # The precision with which `release_date` value is known.
                #
                # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album#release_date_precision
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
                # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album#type
                module Type
                  extend Spotted::Internal::Type::Enum

                  ALBUM = :album

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album#restrictions
                class Restrictions < Spotted::Internal::Type::BaseModel
                  # @!attribute reason
                  #   The reason for the restriction. Albums may be restricted if the content is not
                  #   available in a given market, to the user's subscription type, or when the user's
                  #   account is set to not play explicit content. Additional reasons may be added in
                  #   the future.
                  #
                  #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::Reason, nil]
                  optional :reason,
                           enum: -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::Reason }

                  # @!method initialize(reason: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions}
                  #   for more details.
                  #
                  #   Included in the response when a content restriction is applied.
                  #
                  #   @param reason [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions::Reason] The reason for the restriction. Albums may be restricted if the content is not a

                  # The reason for the restriction. Albums may be restricted if the content is not
                  # available in a given market, to the user's subscription type, or when the user's
                  # account is set to not play explicit content. Additional reasons may be added in
                  # the future.
                  #
                  # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Album::Restrictions#reason
                  module Reason
                    extend Spotted::Internal::Type::Enum

                    MARKET = :market
                    PRODUCT = :product
                    EXPLICIT = :explicit

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end
              end

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
                #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::ExternalURLs, nil]
                optional :external_urls,
                         -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::ExternalURLs }

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
                #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::Type, nil]
                optional :type, enum: -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::Type }

                # @!attribute uri
                #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   artist.
                #
                #   @return [String, nil]
                optional :uri, String

                # @!method initialize(id: nil, external_urls: nil, href: nil, name: nil, type: nil, uri: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist} for more
                #   details.
                #
                #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
                #
                #   @param external_urls [Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::ExternalURLs] Known external URLs for this artist.
                #
                #   @param href [String] A link to the Web API endpoint providing full details of the artist.
                #
                #   @param name [String] The name of the artist.
                #
                #   @param type [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::Type] The object type.
                #
                #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

                # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist#external_urls
                class ExternalURLs < Spotted::Internal::Type::BaseModel
                  # @!attribute spotify
                  #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   object.
                  #
                  #   @return [String, nil]
                  optional :spotify, String

                  # @!method initialize(spotify: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist::ExternalURLs}
                  #   for more details.
                  #
                  #   Known external URLs for this artist.
                  #
                  #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
                end

                # The object type.
                #
                # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Artist#type
                module Type
                  extend Spotted::Internal::Type::Enum

                  ARTIST = :artist

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track#external_ids
              class ExternalIDs < Spotted::Internal::Type::BaseModel
                # @!attribute ean
                #   [International Article Number](http://en.wikipedia.org/wiki/International_Article_Number_%28EAN%29)
                #
                #   @return [String, nil]
                optional :ean, String

                # @!attribute isrc
                #   [International Standard Recording Code](http://en.wikipedia.org/wiki/International_Standard_Recording_Code)
                #
                #   @return [String, nil]
                optional :isrc, String

                # @!attribute upc
                #   [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
                #
                #   @return [String, nil]
                optional :upc, String

                # @!method initialize(ean: nil, isrc: nil, upc: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalIDs} for
                #   more details.
                #
                #   Known external IDs for the track.
                #
                #   @param ean [String] [International Article Number](http://en.wikipedia.org/wiki/International_Articl
                #
                #   @param isrc [String] [International Standard Recording Code](http://en.wikipedia.org/wiki/Internation
                #
                #   @param upc [String] [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
              end

              # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track#external_urls
              class ExternalURLs < Spotted::Internal::Type::BaseModel
                # @!attribute spotify
                #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   object.
                #
                #   @return [String, nil]
                optional :spotify, String

                # @!method initialize(spotify: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::ExternalURLs} for
                #   more details.
                #
                #   Known external URLs for this track.
                #
                #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
              end

              # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track#restrictions
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
                #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Track::Restrictions} for
                #   more details.
                #
                #   Included in the response when a content restriction is applied.
                #
                #   @param reason [String] The reason for the restriction. Supported values:
              end

              # The object type: "track".
              #
              # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Track#type
              module Type
                extend Spotted::Internal::Type::Enum

                TRACK = :track

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Episode < Spotted::Internal::Type::BaseModel
              # @!attribute id
              #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   episode.
              #
              #   @return [String]
              required :id, String

              # @!attribute audio_preview_url
              #   @deprecated
              #
              #   A URL to a 30 second preview (MP3 format) of the episode. `null` if not
              #   available.
              #
              #   @return [String, nil]
              required :audio_preview_url, String, nil?: true

              # @!attribute description
              #   A description of the episode. HTML tags are stripped away from this field, use
              #   `html_description` field in case HTML tags are needed.
              #
              #   @return [String]
              required :description, String

              # @!attribute duration_ms
              #   The episode length in milliseconds.
              #
              #   @return [Integer]
              required :duration_ms, Integer

              # @!attribute explicit
              #   Whether or not the episode has explicit content (true = yes it does; false = no
              #   it does not OR unknown).
              #
              #   @return [Boolean]
              required :explicit, Spotted::Internal::Type::Boolean

              # @!attribute external_urls
              #   External URLs for this episode.
              #
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ExternalURLs]
              required :external_urls,
                       -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ExternalURLs }

              # @!attribute href
              #   A link to the Web API endpoint providing full details of the episode.
              #
              #   @return [String]
              required :href, String

              # @!attribute html_description
              #   A description of the episode. This field may contain HTML tags.
              #
              #   @return [String]
              required :html_description, String

              # @!attribute images
              #   The cover art for the episode in various sizes, widest first.
              #
              #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Image>]
              required :images,
                       -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Image] }

              # @!attribute is_externally_hosted
              #   True if the episode is hosted outside of Spotify's CDN.
              #
              #   @return [Boolean]
              required :is_externally_hosted, Spotted::Internal::Type::Boolean

              # @!attribute is_playable
              #   True if the episode is playable in the given market. Otherwise false.
              #
              #   @return [Boolean]
              required :is_playable, Spotted::Internal::Type::Boolean

              # @!attribute languages
              #   A list of the languages used in the episode, identified by their
              #   [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
              #
              #   @return [Array<String>]
              required :languages, Spotted::Internal::Type::ArrayOf[String]

              # @!attribute name
              #   The name of the episode.
              #
              #   @return [String]
              required :name, String

              # @!attribute release_date
              #   The date the episode was first released, for example `"1981-12-15"`. Depending
              #   on the precision, it might be shown as `"1981"` or `"1981-12"`.
              #
              #   @return [String]
              required :release_date, String

              # @!attribute release_date_precision
              #   The precision with which `release_date` value is known.
              #
              #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ReleaseDatePrecision]
              required :release_date_precision,
                       enum: -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ReleaseDatePrecision }

              # @!attribute show
              #   The show on which the episode belongs.
              #
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show]
              required :show, -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show }

              # @!attribute type
              #   The object type.
              #
              #   @return [Symbol, :episode]
              required :type, const: :episode

              # @!attribute uri
              #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   episode.
              #
              #   @return [String]
              required :uri, String

              # @!attribute language
              #   @deprecated
              #
              #   The language used in the episode, identified by a
              #   [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
              #   and might be removed in the future. Please use the `languages` field instead.
              #
              #   @return [String, nil]
              optional :language, String

              # @!attribute restrictions
              #   Included in the response when a content restriction is applied.
              #
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Restrictions, nil]
              optional :restrictions, -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Restrictions }

              # @!attribute resume_point
              #   The user's most recent position in the episode. Set if the supplied access token
              #   is a user token and has the scope 'user-read-playback-position'.
              #
              #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ResumePoint, nil]
              optional :resume_point, -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ResumePoint }

              # @!method initialize(id:, audio_preview_url:, description:, duration_ms:, explicit:, external_urls:, href:, html_description:, images:, is_externally_hosted:, is_playable:, languages:, name:, release_date:, release_date_precision:, show:, uri:, language: nil, restrictions: nil, resume_point: nil, type: :episode)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode} for more
              #   details.
              #
              #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the episo
              #
              #   @param audio_preview_url [String, nil] A URL to a 30 second preview (MP3 format) of the episode. `null` if not availabl
              #
              #   @param description [String] A description of the episode. HTML tags are stripped away from this field, use `
              #
              #   @param duration_ms [Integer] The episode length in milliseconds.
              #
              #   @param explicit [Boolean] Whether or not the episode has explicit content (true = yes it does; false = no
              #
              #   @param external_urls [Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ExternalURLs] External URLs for this episode.
              #
              #   @param href [String] A link to the Web API endpoint providing full details of the episode.
              #
              #   @param html_description [String] A description of the episode. This field may contain HTML tags.
              #
              #   @param images [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Image>] The cover art for the episode in various sizes, widest first.
              #
              #   @param is_externally_hosted [Boolean] True if the episode is hosted outside of Spotify's CDN.
              #
              #   @param is_playable [Boolean] True if the episode is playable in the given market. Otherwise false.
              #
              #   @param languages [Array<String>] A list of the languages used in the episode, identified by their [ISO 639-1](htt
              #
              #   @param name [String] The name of the episode.
              #
              #   @param release_date [String] The date the episode was first released, for example `"1981-12-15"`. Depending o
              #
              #   @param release_date_precision [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ReleaseDatePrecision] The precision with which `release_date` value is known.
              #
              #   @param show [Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show] The show on which the episode belongs.
              #
              #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the epis
              #
              #   @param language [String] The language used in the episode, identified by a [ISO 639](https://en.wikipedia
              #
              #   @param restrictions [Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Restrictions] Included in the response when a content restriction is applied.
              #
              #   @param resume_point [Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ResumePoint] The user's most recent position in the episode. Set if the supplied access token
              #
              #   @param type [Symbol, :episode] The object type.

              # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode#external_urls
              class ExternalURLs < Spotted::Internal::Type::BaseModel
                # @!attribute spotify
                #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   object.
                #
                #   @return [String, nil]
                optional :spotify, String

                # @!method initialize(spotify: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ExternalURLs}
                #   for more details.
                #
                #   External URLs for this episode.
                #
                #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
              end

              class Image < Spotted::Internal::Type::BaseModel
                # @!attribute height
                #   The image height in pixels.
                #
                #   @return [Integer, nil]
                required :height, Integer, nil?: true

                # @!attribute url
                #   The source URL of the image.
                #
                #   @return [String]
                required :url, String

                # @!attribute width
                #   The image width in pixels.
                #
                #   @return [Integer, nil]
                required :width, Integer, nil?: true

                # @!method initialize(height:, url:, width:)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Image} for more
                #   details.
                #
                #   @param height [Integer, nil] The image height in pixels.
                #
                #   @param url [String] The source URL of the image.
                #
                #   @param width [Integer, nil] The image width in pixels.
              end

              # The precision with which `release_date` value is known.
              #
              # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode#release_date_precision
              module ReleaseDatePrecision
                extend Spotted::Internal::Type::Enum

                YEAR = :year
                MONTH = :month
                DAY = :day

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode#show
              class Show < Spotted::Internal::Type::BaseModel
                # @!attribute id
                #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
                #
                #   @return [String]
                required :id, String

                # @!attribute available_markets
                #   A list of the countries in which the show can be played, identified by their
                #   [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
                #
                #   @return [Array<String>]
                required :available_markets, Spotted::Internal::Type::ArrayOf[String]

                # @!attribute copyrights
                #   The copyright statements of the show.
                #
                #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Copyright>]
                required :copyrights,
                         -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Copyright] }

                # @!attribute description
                #   A description of the show. HTML tags are stripped away from this field, use
                #   `html_description` field in case HTML tags are needed.
                #
                #   @return [String]
                required :description, String

                # @!attribute explicit
                #   Whether or not the show has explicit content (true = yes it does; false = no it
                #   does not OR unknown).
                #
                #   @return [Boolean]
                required :explicit, Spotted::Internal::Type::Boolean

                # @!attribute external_urls
                #   External URLs for this show.
                #
                #   @return [Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::ExternalURLs]
                required :external_urls,
                         -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::ExternalURLs }

                # @!attribute href
                #   A link to the Web API endpoint providing full details of the show.
                #
                #   @return [String]
                required :href, String

                # @!attribute html_description
                #   A description of the show. This field may contain HTML tags.
                #
                #   @return [String]
                required :html_description, String

                # @!attribute images
                #   The cover art for the show in various sizes, widest first.
                #
                #   @return [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Image>]
                required :images,
                         -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Image] }

                # @!attribute is_externally_hosted
                #   True if all of the shows episodes are hosted outside of Spotify's CDN. This
                #   field might be `null` in some cases.
                #
                #   @return [Boolean]
                required :is_externally_hosted, Spotted::Internal::Type::Boolean

                # @!attribute languages
                #   A list of the languages used in the show, identified by their
                #   [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
                #
                #   @return [Array<String>]
                required :languages, Spotted::Internal::Type::ArrayOf[String]

                # @!attribute media_type
                #   The media type of the show.
                #
                #   @return [String]
                required :media_type, String

                # @!attribute name
                #   The name of the episode.
                #
                #   @return [String]
                required :name, String

                # @!attribute publisher
                #   The publisher of the show.
                #
                #   @return [String]
                required :publisher, String

                # @!attribute total_episodes
                #   The total number of episodes in the show.
                #
                #   @return [Integer]
                required :total_episodes, Integer

                # @!attribute type
                #   The object type.
                #
                #   @return [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Type]
                required :type, enum: -> { Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Type }

                # @!attribute uri
                #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   show.
                #
                #   @return [String]
                required :uri, String

                # @!method initialize(id:, available_markets:, copyrights:, description:, explicit:, external_urls:, href:, html_description:, images:, is_externally_hosted:, languages:, media_type:, name:, publisher:, total_episodes:, type:, uri:)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show} for more
                #   details.
                #
                #   The show on which the episode belongs.
                #
                #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
                #
                #   @param available_markets [Array<String>] A list of the countries in which the show can be played, identified by their [IS
                #
                #   @param copyrights [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Copyright>] The copyright statements of the show.
                #
                #   @param description [String] A description of the show. HTML tags are stripped away from this field, use `htm
                #
                #   @param explicit [Boolean] Whether or not the show has explicit content (true = yes it does; false = no it
                #
                #   @param external_urls [Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::ExternalURLs] External URLs for this show.
                #
                #   @param href [String] A link to the Web API endpoint providing full details of the show.
                #
                #   @param html_description [String] A description of the show. This field may contain HTML tags.
                #
                #   @param images [Array<Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Image>] The cover art for the show in various sizes, widest first.
                #
                #   @param is_externally_hosted [Boolean] True if all of the shows episodes are hosted outside of Spotify's CDN. This fiel
                #
                #   @param languages [Array<String>] A list of the languages used in the show, identified by their [ISO 639](https://
                #
                #   @param media_type [String] The media type of the show.
                #
                #   @param name [String] The name of the episode.
                #
                #   @param publisher [String] The publisher of the show.
                #
                #   @param total_episodes [Integer] The total number of episodes in the show.
                #
                #   @param type [Symbol, Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Type] The object type.
                #
                #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the show

                class Copyright < Spotted::Internal::Type::BaseModel
                  # @!attribute text
                  #   The copyright text for this content.
                  #
                  #   @return [String, nil]
                  optional :text, String

                  # @!attribute type
                  #   The type of copyright: `C` = the copyright, `P` = the sound recording
                  #   (performance) copyright.
                  #
                  #   @return [String, nil]
                  optional :type, String

                  # @!method initialize(text: nil, type: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Copyright}
                  #   for more details.
                  #
                  #   @param text [String] The copyright text for this content.
                  #
                  #   @param type [String] The type of copyright: `C` = the copyright, `P` = the sound recording (performan
                end

                # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show#external_urls
                class ExternalURLs < Spotted::Internal::Type::BaseModel
                  # @!attribute spotify
                  #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  #   object.
                  #
                  #   @return [String, nil]
                  optional :spotify, String

                  # @!method initialize(spotify: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::ExternalURLs}
                  #   for more details.
                  #
                  #   External URLs for this show.
                  #
                  #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
                end

                class Image < Spotted::Internal::Type::BaseModel
                  # @!attribute height
                  #   The image height in pixels.
                  #
                  #   @return [Integer, nil]
                  required :height, Integer, nil?: true

                  # @!attribute url
                  #   The source URL of the image.
                  #
                  #   @return [String]
                  required :url, String

                  # @!attribute width
                  #   The image width in pixels.
                  #
                  #   @return [Integer, nil]
                  required :width, Integer, nil?: true

                  # @!method initialize(height:, url:, width:)
                  #   Some parameter documentations has been truncated, see
                  #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show::Image} for
                  #   more details.
                  #
                  #   @param height [Integer, nil] The image height in pixels.
                  #
                  #   @param url [String] The source URL of the image.
                  #
                  #   @param width [Integer, nil] The image width in pixels.
                end

                # The object type.
                #
                # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Show#type
                module Type
                  extend Spotted::Internal::Type::Enum

                  SHOW = :show

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode#restrictions
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
                #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::Restrictions}
                #   for more details.
                #
                #   Included in the response when a content restriction is applied.
                #
                #   @param reason [String] The reason for the restriction. Supported values:
              end

              # @see Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode#resume_point
              class ResumePoint < Spotted::Internal::Type::BaseModel
                # @!attribute fully_played
                #   Whether or not the episode has been fully played by the user.
                #
                #   @return [Boolean, nil]
                optional :fully_played, Spotted::Internal::Type::Boolean

                # @!attribute resume_position_ms
                #   The user's most recent position in the episode in milliseconds.
                #
                #   @return [Integer, nil]
                optional :resume_position_ms, Integer

                # @!method initialize(fully_played: nil, resume_position_ms: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode::ResumePoint} for
                #   more details.
                #
                #   The user's most recent position in the episode. Set if the supplied access token
                #   is a user token and has the scope 'user-read-playback-position'.
                #
                #   @param fully_played [Boolean] Whether or not the episode has been fully played by the user.
                #
                #   @param resume_position_ms [Integer] The user's most recent position in the episode in milliseconds.
              end
            end

            # @!method self.variants
            #   @return [Array(Spotted::Models::Me::Player::QueueGetResponse::Queue::Track, Spotted::Models::Me::Player::QueueGetResponse::Queue::Episode)]
          end
        end
      end
    end
  end
end
