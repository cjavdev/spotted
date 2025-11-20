# frozen_string_literal: true

module Spotted
  module Models
    class SimplifiedPlaylistObject < Spotted::Internal::Type::BaseModel
      # @!attribute id
      #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   playlist.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute components_schemas_properties_is_public
      #   The playlist's public/private status (if it is added to the user's profile):
      #   `true` the playlist is public, `false` the playlist is private, `null` the
      #   playlist status is not relevant. For more about public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :components_schemas_properties_is_public,
               Spotted::Internal::Type::Boolean,
               api_name: :"$.components.schemas.*.properties.is_public"

      # @!attribute collaborative
      #   `true` if the owner allows other users to modify the playlist.
      #
      #   @return [Boolean, nil]
      optional :collaborative, Spotted::Internal::Type::Boolean

      # @!attribute description
      #   The playlist description. _Only returned for modified, verified playlists,
      #   otherwise_ `null`.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute external_urls
      #   Known external URLs for this playlist.
      #
      #   @return [Spotted::Models::ExternalURLObject, nil]
      optional :external_urls, -> { Spotted::ExternalURLObject }

      # @!attribute href
      #   A link to the Web API endpoint providing full details of the playlist.
      #
      #   @return [String, nil]
      optional :href, String

      # @!attribute images
      #   Images for the playlist. The array may be empty or contain up to three images.
      #   The images are returned by size in descending order. See
      #   [Working with Playlists](/documentation/web-api/concepts/playlists). _**Note**:
      #   If returned, the source URL for the image (`url`) is temporary and will expire
      #   in less than a day._
      #
      #   @return [Array<Spotted::Models::ImageObject>, nil]
      optional :images, -> { Spotted::Internal::Type::ArrayOf[Spotted::ImageObject] }

      # @!attribute name
      #   The name of the playlist.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute owner
      #   The user who owns the playlist
      #
      #   @return [Spotted::Models::SimplifiedPlaylistObject::Owner, nil]
      optional :owner, -> { Spotted::SimplifiedPlaylistObject::Owner }

      # @!attribute snapshot_id
      #   The version identifier for the current playlist. Can be supplied in other
      #   requests to target a specific playlist version
      #
      #   @return [String, nil]
      optional :snapshot_id, String

      # @!attribute tracks
      #   A collection containing a link ( `href` ) to the Web API endpoint where full
      #   details of the playlist's tracks can be retrieved, along with the `total` number
      #   of tracks in the playlist. Note, a track object may be `null`. This can happen
      #   if a track is no longer available.
      #
      #   @return [Spotted::Models::PlaylistTracksRefObject, nil]
      optional :tracks, -> { Spotted::PlaylistTracksRefObject }

      # @!attribute type
      #   The object type: "playlist"
      #
      #   @return [String, nil]
      optional :type, String

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   playlist.
      #
      #   @return [String, nil]
      optional :uri, String

      # @!method initialize(id: nil, components_schemas_properties_is_public: nil, collaborative: nil, description: nil, external_urls: nil, href: nil, images: nil, name: nil, owner: nil, snapshot_id: nil, tracks: nil, type: nil, uri: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::SimplifiedPlaylistObject} for more details.
      #
      #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the playl
      #
      #   @param components_schemas_properties_is_public [Boolean] The playlist's public/private status (if it is added to the user's profile): `tr
      #
      #   @param collaborative [Boolean] `true` if the owner allows other users to modify the playlist.
      #
      #   @param description [String] The playlist description. \_Only returned for modified, verified playlists,
      #   other
      #
      #   @param external_urls [Spotted::Models::ExternalURLObject] Known external URLs for this playlist.
      #
      #   @param href [String] A link to the Web API endpoint providing full details of the playlist.
      #
      #   @param images [Array<Spotted::Models::ImageObject>] Images for the playlist. The array may be empty or contain up to three images. T
      #
      #   @param name [String] The name of the playlist.
      #
      #   @param owner [Spotted::Models::SimplifiedPlaylistObject::Owner] The user who owns the playlist
      #
      #   @param snapshot_id [String] The version identifier for the current playlist. Can be supplied in other reques
      #
      #   @param tracks [Spotted::Models::PlaylistTracksRefObject] A collection containing a link ( `href` ) to the Web API endpoint where full det
      #
      #   @param type [String] The object type: "playlist"
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the play

      # @see Spotted::Models::SimplifiedPlaylistObject#owner
      class Owner < Spotted::Models::PlaylistUserObject
        # @!attribute display_name
        #   The name displayed on the user's profile. `null` if not available.
        #
        #   @return [String, nil]
        optional :display_name, String, nil?: true

        # @!method initialize(display_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::SimplifiedPlaylistObject::Owner} for more details.
        #
        #   The user who owns the playlist
        #
        #   @param display_name [String, nil] The name displayed on the user's profile. `null` if not available.
      end
    end
  end
end
