# frozen_string_literal: true

module Spotted
  module Models
    class SimplifiedTrackObject < Spotted::Internal::Type::BaseModel
      # @!attribute id
      #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   track.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute artists
      #   The artists who performed the track. Each artist object includes a link in
      #   `href` to more detailed information about the artist.
      #
      #   @return [Array<Spotted::Models::SimplifiedArtistObject>, nil]
      optional :artists, -> { Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedArtistObject] }

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

      # @!attribute external_urls
      #   External URLs for this track.
      #
      #   @return [Spotted::Models::ExternalURLObject, nil]
      optional :external_urls, -> { Spotted::ExternalURLObject }

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
      #   [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied.
      #   If `true`, the track is playable in the given market. Otherwise `false`.
      #
      #   @return [Boolean, nil]
      optional :is_playable, Spotted::Internal::Type::Boolean

      # @!attribute linked_from
      #   Part of the response when
      #   [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied
      #   and is only part of the response if the track linking, in fact, exists. The
      #   requested track has been replaced with a different track. The track in the
      #   `linked_from` object contains information about the originally requested track.
      #
      #   @return [Spotted::Models::LinkedTrackObject, nil]
      optional :linked_from, -> { Spotted::LinkedTrackObject }

      # @!attribute name
      #   The name of the track.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute preview_url
      #   @deprecated
      #
      #   A URL to a 30 second preview (MP3 format) of the track.
      #
      #   @return [String, nil]
      optional :preview_url, String, nil?: true

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
      #   @return [Spotted::Models::TrackRestrictionObject, nil]
      optional :restrictions, -> { Spotted::TrackRestrictionObject }

      # @!attribute track_number
      #   The number of the track. If an album has several discs, the track number is the
      #   number on the specified disc.
      #
      #   @return [Integer, nil]
      optional :track_number, Integer

      # @!attribute type
      #   The object type: "track".
      #
      #   @return [String, nil]
      optional :type, String

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   track.
      #
      #   @return [String, nil]
      optional :uri, String

      # @!method initialize(id: nil, artists: nil, available_markets: nil, disc_number: nil, duration_ms: nil, explicit: nil, external_urls: nil, href: nil, is_local: nil, is_playable: nil, linked_from: nil, name: nil, preview_url: nil, published: nil, restrictions: nil, track_number: nil, type: nil, uri: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::SimplifiedTrackObject} for more details.
      #
      #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track
      #
      #   @param artists [Array<Spotted::Models::SimplifiedArtistObject>] The artists who performed the track. Each artist object includes a link in `href
      #
      #   @param available_markets [Array<String>] A list of the countries in which the track can be played, identified by their [I
      #
      #   @param disc_number [Integer] The disc number (usually `1` unless the album consists of more than one disc).
      #
      #   @param duration_ms [Integer] The track length in milliseconds.
      #
      #   @param explicit [Boolean] Whether or not the track has explicit lyrics ( `true` = yes it does; `false` = n
      #
      #   @param external_urls [Spotted::Models::ExternalURLObject] External URLs for this track.
      #
      #   @param href [String] A link to the Web API endpoint providing full details of the track.
      #
      #   @param is_local [Boolean] Whether or not the track is from a local file.
      #
      #   @param is_playable [Boolean] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
      #
      #   @param linked_from [Spotted::Models::LinkedTrackObject] Part of the response when [Track Relinking](/documentation/web-api/concepts/trac
      #
      #   @param name [String] The name of the track.
      #
      #   @param preview_url [String, nil] A URL to a 30 second preview (MP3 format) of the track.
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param restrictions [Spotted::Models::TrackRestrictionObject] Included in the response when a content restriction is applied.
      #
      #   @param track_number [Integer] The number of the track. If an album has several discs, the track number is the
      #
      #   @param type [String] The object type: "track".
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the trac
    end
  end
end
