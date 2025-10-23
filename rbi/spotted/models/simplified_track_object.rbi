# typed: strong

module Spotted
  module Models
    class SimplifiedTrackObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::SimplifiedTrackObject, Spotted::Internal::AnyHash)
        end

      # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      # track.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

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

      # External URLs for this track.
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
      sig { returns(T.nilable(Spotted::LinkedTrackObject)) }
      attr_reader :linked_from

      sig { params(linked_from: Spotted::LinkedTrackObject::OrHash).void }
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
          artists: T::Array[Spotted::SimplifiedArtistObject::OrHash],
          available_markets: T::Array[String],
          disc_number: Integer,
          duration_ms: Integer,
          explicit: T::Boolean,
          external_urls: Spotted::ExternalURLObject::OrHash,
          href: String,
          is_local: T::Boolean,
          is_playable: T::Boolean,
          linked_from: Spotted::LinkedTrackObject::OrHash,
          name: String,
          preview_url: T.nilable(String),
          restrictions: Spotted::TrackRestrictionObject::OrHash,
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
            artists: T::Array[Spotted::SimplifiedArtistObject],
            available_markets: T::Array[String],
            disc_number: Integer,
            duration_ms: Integer,
            explicit: T::Boolean,
            external_urls: Spotted::ExternalURLObject,
            href: String,
            is_local: T::Boolean,
            is_playable: T::Boolean,
            linked_from: Spotted::LinkedTrackObject,
            name: String,
            preview_url: T.nilable(String),
            restrictions: Spotted::TrackRestrictionObject,
            track_number: Integer,
            type: String,
            uri: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
