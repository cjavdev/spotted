# frozen_string_literal: true

module Spotted
  module Models
    module Users
      # @see Spotted::Resources::Users::Playlists#create
      class PlaylistCreateResponse < Spotted::Internal::Type::BaseModel
        # @!attribute id
        #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        #   playlist.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute components_schemas_properties_published
        #   The playlist's public/private status (if it is added to the user's profile):
        #   `true` the playlist is public, `false` the playlist is private, `null` the
        #   playlist status is not relevant. For more about public/private status, see
        #   [Working with Playlists](/documentation/web-api/concepts/playlists)
        #
        #   @return [Boolean, nil]
        optional :components_schemas_properties_published,
                 Spotted::Internal::Type::Boolean,
                 api_name: :"$.components.schemas.*.properties.published"

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
        optional :description, String, nil?: true

        # @!attribute external_urls
        #   Known external URLs for this playlist.
        #
        #   @return [Spotted::Models::ExternalURLObject, nil]
        optional :external_urls, -> { Spotted::ExternalURLObject }

        # @!attribute followers
        #   Information about the followers of the playlist.
        #
        #   @return [Spotted::Models::FollowersObject, nil]
        optional :followers, -> { Spotted::FollowersObject }

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
        #   @return [Spotted::Models::Users::PlaylistCreateResponse::Owner, nil]
        optional :owner, -> { Spotted::Models::Users::PlaylistCreateResponse::Owner }

        # @!attribute snapshot_id
        #   The version identifier for the current playlist. Can be supplied in other
        #   requests to target a specific playlist version
        #
        #   @return [String, nil]
        optional :snapshot_id, String

        # @!attribute tracks
        #   The tracks of the playlist.
        #
        #   @return [Spotted::Models::Users::PlaylistCreateResponse::Tracks, nil]
        optional :tracks, -> { Spotted::Models::Users::PlaylistCreateResponse::Tracks }

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

        # @!method initialize(id: nil, components_schemas_properties_published: nil, collaborative: nil, description: nil, external_urls: nil, followers: nil, href: nil, images: nil, name: nil, owner: nil, snapshot_id: nil, tracks: nil, type: nil, uri: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Users::PlaylistCreateResponse} for more details.
        #
        #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the playl
        #
        #   @param components_schemas_properties_published [Boolean] The playlist's public/private status (if it is added to the user's profile): `tr
        #
        #   @param collaborative [Boolean] `true` if the owner allows other users to modify the playlist.
        #
        #   @param description [String, nil] The playlist description. \_Only returned for modified, verified playlists,
        #   other
        #
        #   @param external_urls [Spotted::Models::ExternalURLObject] Known external URLs for this playlist.
        #
        #   @param followers [Spotted::Models::FollowersObject] Information about the followers of the playlist.
        #
        #   @param href [String] A link to the Web API endpoint providing full details of the playlist.
        #
        #   @param images [Array<Spotted::Models::ImageObject>] Images for the playlist. The array may be empty or contain up to three images. T
        #
        #   @param name [String] The name of the playlist.
        #
        #   @param owner [Spotted::Models::Users::PlaylistCreateResponse::Owner] The user who owns the playlist
        #
        #   @param snapshot_id [String] The version identifier for the current playlist. Can be supplied in other reques
        #
        #   @param tracks [Spotted::Models::Users::PlaylistCreateResponse::Tracks] The tracks of the playlist.
        #
        #   @param type [String] The object type: "playlist"
        #
        #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the play

        # @see Spotted::Models::Users::PlaylistCreateResponse#owner
        class Owner < Spotted::Models::PlaylistUserObject
          # @!attribute display_name
          #   The name displayed on the user's profile. `null` if not available.
          #
          #   @return [String, nil]
          optional :display_name, String, nil?: true

          # @!method initialize(display_name: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Users::PlaylistCreateResponse::Owner} for more details.
          #
          #   The user who owns the playlist
          #
          #   @param display_name [String, nil] The name displayed on the user's profile. `null` if not available.
        end

        # @see Spotted::Models::Users::PlaylistCreateResponse#tracks
        class Tracks < Spotted::Internal::Type::BaseModel
          # @!attribute href
          #   A link to the Web API endpoint returning the full result of the request
          #
          #   @return [String]
          required :href, String

          # @!attribute limit
          #   The maximum number of items in the response (as set in the query or by default).
          #
          #   @return [Integer]
          required :limit, Integer

          # @!attribute next_
          #   URL to the next page of items. ( `null` if none)
          #
          #   @return [String, nil]
          required :next_, String, api_name: :next, nil?: true

          # @!attribute offset
          #   The offset of the items returned (as set in the query or by default)
          #
          #   @return [Integer]
          required :offset, Integer

          # @!attribute previous
          #   URL to the previous page of items. ( `null` if none)
          #
          #   @return [String, nil]
          required :previous, String, nil?: true

          # @!attribute total
          #   The total number of items available to return.
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute items
          #
          #   @return [Array<Spotted::Models::PlaylistTrackObject>, nil]
          optional :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::PlaylistTrackObject] }

          # @!method initialize(href:, limit:, next_:, offset:, previous:, total:, items: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Users::PlaylistCreateResponse::Tracks} for more details.
          #
          #   The tracks of the playlist.
          #
          #   @param href [String] A link to the Web API endpoint returning the full result of the request
          #
          #   @param limit [Integer] The maximum number of items in the response (as set in the query or by default).
          #
          #   @param next_ [String, nil] URL to the next page of items. ( `null` if none)
          #
          #   @param offset [Integer] The offset of the items returned (as set in the query or by default)
          #
          #   @param previous [String, nil] URL to the previous page of items. ( `null` if none)
          #
          #   @param total [Integer] The total number of items available to return.
          #
          #   @param items [Array<Spotted::Models::PlaylistTrackObject>]
        end
      end
    end
  end
end
