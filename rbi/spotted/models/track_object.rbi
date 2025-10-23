# typed: strong

module Spotted
  module Models
    class TrackObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Spotted::TrackObject, Spotted::Internal::AnyHash) }

      # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      # track.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The album on which the track appears. The album object includes a link in `href`
      # to full information about the album.
      sig { returns(T.nilable(Spotted::TrackObject::Album)) }
      attr_reader :album

      sig { params(album: Spotted::TrackObject::Album::OrHash).void }
      attr_writer :album

      # The artists who performed the track. Each artist object includes a link in
      # `href` to more detailed information about the artist.
      sig { returns(T.nilable(T::Array[Spotted::SimplifiedArtistObject])) }
      attr_reader :artists

      sig do
        params(artists: T::Array[Spotted::SimplifiedArtistObject::OrHash]).void
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
      sig { returns(T.nilable(Spotted::ExternalIDObject)) }
      attr_reader :external_ids

      sig { params(external_ids: Spotted::ExternalIDObject::OrHash).void }
      attr_writer :external_ids

      # Known external URLs for this track.
      sig { returns(T.nilable(Spotted::ExternalURLObject)) }
      attr_reader :external_urls

      sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
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
      sig { returns(T.nilable(Spotted::TrackRestrictionObject)) }
      attr_reader :restrictions

      sig { params(restrictions: Spotted::TrackRestrictionObject::OrHash).void }
      attr_writer :restrictions

      # The number of the track. If an album has several discs, the track number is the
      # number on the specified disc.
      sig { returns(T.nilable(Integer)) }
      attr_reader :track_number

      sig { params(track_number: Integer).void }
      attr_writer :track_number

      # The object type: "track".
      sig { returns(T.nilable(Spotted::TrackObject::Type::TaggedSymbol)) }
      attr_reader :type

      sig { params(type: Spotted::TrackObject::Type::OrSymbol).void }
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
          album: Spotted::TrackObject::Album::OrHash,
          artists: T::Array[Spotted::SimplifiedArtistObject::OrHash],
          available_markets: T::Array[String],
          disc_number: Integer,
          duration_ms: Integer,
          explicit: T::Boolean,
          external_ids: Spotted::ExternalIDObject::OrHash,
          external_urls: Spotted::ExternalURLObject::OrHash,
          href: String,
          is_local: T::Boolean,
          is_playable: T::Boolean,
          linked_from: T.anything,
          name: String,
          popularity: Integer,
          preview_url: T.nilable(String),
          restrictions: Spotted::TrackRestrictionObject::OrHash,
          track_number: Integer,
          type: Spotted::TrackObject::Type::OrSymbol,
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
            album: Spotted::TrackObject::Album,
            artists: T::Array[Spotted::SimplifiedArtistObject],
            available_markets: T::Array[String],
            disc_number: Integer,
            duration_ms: Integer,
            explicit: T::Boolean,
            external_ids: Spotted::ExternalIDObject,
            external_urls: Spotted::ExternalURLObject,
            href: String,
            is_local: T::Boolean,
            is_playable: T::Boolean,
            linked_from: T.anything,
            name: String,
            popularity: Integer,
            preview_url: T.nilable(String),
            restrictions: Spotted::TrackRestrictionObject,
            track_number: Integer,
            type: Spotted::TrackObject::Type::TaggedSymbol,
            uri: String
          }
        )
      end
      def to_hash
      end

      class Album < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Spotted::TrackObject::Album, Spotted::Internal::AnyHash)
          end

        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # album.
        sig { returns(String) }
        attr_accessor :id

        # The type of the album.
        sig { returns(Spotted::TrackObject::Album::AlbumType::TaggedSymbol) }
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
            Spotted::TrackObject::Album::ReleaseDatePrecision::TaggedSymbol
          )
        end
        attr_accessor :release_date_precision

        # The number of tracks in the album.
        sig { returns(Integer) }
        attr_accessor :total_tracks

        # The object type.
        sig { returns(Spotted::TrackObject::Album::Type::TaggedSymbol) }
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

        # The album on which the track appears. The album object includes a link in `href`
        # to full information about the album.
        sig do
          params(
            id: String,
            album_type: Spotted::TrackObject::Album::AlbumType::OrSymbol,
            artists: T::Array[Spotted::SimplifiedArtistObject::OrHash],
            available_markets: T::Array[String],
            external_urls: Spotted::ExternalURLObject::OrHash,
            href: String,
            images: T::Array[Spotted::ImageObject::OrHash],
            name: String,
            release_date: String,
            release_date_precision:
              Spotted::TrackObject::Album::ReleaseDatePrecision::OrSymbol,
            total_tracks: Integer,
            type: Spotted::TrackObject::Album::Type::OrSymbol,
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
              album_type: Spotted::TrackObject::Album::AlbumType::TaggedSymbol,
              artists: T::Array[Spotted::SimplifiedArtistObject],
              available_markets: T::Array[String],
              external_urls: Spotted::ExternalURLObject,
              href: String,
              images: T::Array[Spotted::ImageObject],
              name: String,
              release_date: String,
              release_date_precision:
                Spotted::TrackObject::Album::ReleaseDatePrecision::TaggedSymbol,
              total_tracks: Integer,
              type: Spotted::TrackObject::Album::Type::TaggedSymbol,
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
              T.all(Symbol, Spotted::TrackObject::Album::AlbumType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALBUM =
            T.let(:album, Spotted::TrackObject::Album::AlbumType::TaggedSymbol)
          SINGLE =
            T.let(:single, Spotted::TrackObject::Album::AlbumType::TaggedSymbol)
          COMPILATION =
            T.let(
              :compilation,
              Spotted::TrackObject::Album::AlbumType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Spotted::TrackObject::Album::AlbumType::TaggedSymbol]
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
              T.all(Symbol, Spotted::TrackObject::Album::ReleaseDatePrecision)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          YEAR =
            T.let(
              :year,
              Spotted::TrackObject::Album::ReleaseDatePrecision::TaggedSymbol
            )
          MONTH =
            T.let(
              :month,
              Spotted::TrackObject::Album::ReleaseDatePrecision::TaggedSymbol
            )
          DAY =
            T.let(
              :day,
              Spotted::TrackObject::Album::ReleaseDatePrecision::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Spotted::TrackObject::Album::ReleaseDatePrecision::TaggedSymbol
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
            T.type_alias { T.all(Symbol, Spotted::TrackObject::Album::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALBUM = T.let(:album, Spotted::TrackObject::Album::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Spotted::TrackObject::Album::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # The object type: "track".
      module Type
        extend Spotted::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Spotted::TrackObject::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRACK = T.let(:track, Spotted::TrackObject::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Spotted::TrackObject::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
