# frozen_string_literal: true

module Spotted
  module Models
    module Browse
      # @see Spotted::Resources::Browse::Categories#get_playlists
      class CategoryGetPlaylistsResponse < Spotted::Internal::Type::BaseModel
        # @!attribute message
        #   The localized message of a playlist.
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute playlists
        #
        #   @return [Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists, nil]
        optional :playlists, -> { Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists }

        # @!method initialize(message: nil, playlists: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Browse::CategoryGetPlaylistsResponse} for more details.
        #
        #   @param message [String] The localized message of a playlist.
        #
        #   @param playlists [Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists]

        # @see Spotted::Models::Browse::CategoryGetPlaylistsResponse#playlists
        class Playlists < Spotted::Internal::Type::BaseModel
          # @!attribute href
          #   A link to the Web API endpoint returning the full result of the request
          #
          #   @return [String]
          required :href, String

          # @!attribute items
          #
          #   @return [Array<Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item>]
          required :items,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item] }

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

          # @!method initialize(href:, items:, limit:, next_:, offset:, previous:, total:)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists} for more
          #   details.
          #
          #   @param href [String] A link to the Web API endpoint returning the full result of the request
          #
          #   @param items [Array<Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item>]
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

          class Item < Spotted::Internal::Type::BaseModel
            # @!attribute id
            #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   playlist.
            #
            #   @return [String, nil]
            optional :id, String

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
            #   @return [Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::ExternalURLs, nil]
            optional :external_urls,
                     -> { Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::ExternalURLs }

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
            #   @return [Array<Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Image>, nil]
            optional :images,
                     -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Image] }

            # @!attribute name
            #   The name of the playlist.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute owner
            #   The user who owns the playlist
            #
            #   @return [Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner, nil]
            optional :owner, -> { Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner }

            # @!attribute public
            #   The playlist's public/private status (if it is added to the user's profile):
            #   `true` the playlist is public, `false` the playlist is private, `null` the
            #   playlist status is not relevant. For more about public/private status, see
            #   [Working with Playlists](/documentation/web-api/concepts/playlists)
            #
            #   @return [Boolean, nil]
            optional :public, Spotted::Internal::Type::Boolean

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
            #   @return [Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Tracks, nil]
            optional :tracks, -> { Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Tracks }

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

            # @!method initialize(id: nil, collaborative: nil, description: nil, external_urls: nil, href: nil, images: nil, name: nil, owner: nil, public: nil, snapshot_id: nil, tracks: nil, type: nil, uri: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item} for
            #   more details.
            #
            #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the playl
            #
            #   @param collaborative [Boolean] `true` if the owner allows other users to modify the playlist.
            #
            #   @param description [String] The playlist description. \_Only returned for modified, verified playlists,
            #   other
            #
            #   @param external_urls [Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::ExternalURLs] Known external URLs for this playlist.
            #
            #   @param href [String] A link to the Web API endpoint providing full details of the playlist.
            #
            #   @param images [Array<Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Image>] Images for the playlist. The array may be empty or contain up to three images. T
            #
            #   @param name [String] The name of the playlist.
            #
            #   @param owner [Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner] The user who owns the playlist
            #
            #   @param public [Boolean] The playlist's public/private status (if it is added to the user's profile): `tr
            #
            #   @param snapshot_id [String] The version identifier for the current playlist. Can be supplied in other reques
            #
            #   @param tracks [Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Tracks] A collection containing a link ( `href` ) to the Web API endpoint where full det
            #
            #   @param type [String] The object type: "playlist"
            #
            #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the play

            # @see Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item#external_urls
            class ExternalURLs < Spotted::Internal::Type::BaseModel
              # @!attribute spotify
              #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   object.
              #
              #   @return [String, nil]
              optional :spotify, String

              # @!method initialize(spotify: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::ExternalURLs}
              #   for more details.
              #
              #   Known external URLs for this playlist.
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
              #   {Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Image}
              #   for more details.
              #
              #   @param height [Integer, nil] The image height in pixels.
              #
              #   @param url [String] The source URL of the image.
              #
              #   @param width [Integer, nil] The image width in pixels.
            end

            # @see Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item#owner
            class Owner < Spotted::Internal::Type::BaseModel
              # @!attribute id
              #   The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
              #   user.
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute display_name
              #   The name displayed on the user's profile. `null` if not available.
              #
              #   @return [String, nil]
              optional :display_name, String, nil?: true

              # @!attribute external_urls
              #   Known public external URLs for this user.
              #
              #   @return [Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner::ExternalURLs, nil]
              optional :external_urls,
                       -> { Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner::ExternalURLs }

              # @!attribute href
              #   A link to the Web API endpoint for this user.
              #
              #   @return [String, nil]
              optional :href, String

              # @!attribute type
              #   The object type.
              #
              #   @return [Symbol, Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner::Type, nil]
              optional :type,
                       enum: -> { Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner::Type }

              # @!attribute uri
              #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this
              #   user.
              #
              #   @return [String, nil]
              optional :uri, String

              # @!method initialize(id: nil, display_name: nil, external_urls: nil, href: nil, type: nil, uri: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner}
              #   for more details.
              #
              #   The user who owns the playlist
              #
              #   @param id [String] The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
              #
              #   @param display_name [String, nil] The name displayed on the user's profile. `null` if not available.
              #
              #   @param external_urls [Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner::ExternalURLs] Known public external URLs for this user.
              #
              #   @param href [String] A link to the Web API endpoint for this user.
              #
              #   @param type [Symbol, Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner::Type] The object type.
              #
              #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this use

              # @see Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner#external_urls
              class ExternalURLs < Spotted::Internal::Type::BaseModel
                # @!attribute spotify
                #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                #   object.
                #
                #   @return [String, nil]
                optional :spotify, String

                # @!method initialize(spotify: nil)
                #   Some parameter documentations has been truncated, see
                #   {Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner::ExternalURLs}
                #   for more details.
                #
                #   Known public external URLs for this user.
                #
                #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
              end

              # The object type.
              #
              # @see Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Owner#type
              module Type
                extend Spotted::Internal::Type::Enum

                USER = :user

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item#tracks
            class Tracks < Spotted::Internal::Type::BaseModel
              # @!attribute href
              #   A link to the Web API endpoint where full details of the playlist's tracks can
              #   be retrieved.
              #
              #   @return [String, nil]
              optional :href, String

              # @!attribute total
              #   Number of tracks in the playlist.
              #
              #   @return [Integer, nil]
              optional :total, Integer

              # @!method initialize(href: nil, total: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Browse::CategoryGetPlaylistsResponse::Playlists::Item::Tracks}
              #   for more details.
              #
              #   A collection containing a link ( `href` ) to the Web API endpoint where full
              #   details of the playlist's tracks can be retrieved, along with the `total` number
              #   of tracks in the playlist. Note, a track object may be `null`. This can happen
              #   if a track is no longer available.
              #
              #   @param href [String] A link to the Web API endpoint where full details of the playlist's tracks can b
              #
              #   @param total [Integer] Number of tracks in the playlist.
            end
          end
        end
      end
    end
  end
end
