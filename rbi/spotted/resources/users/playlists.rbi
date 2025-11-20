# typed: strong

module Spotted
  module Resources
    class Users
      class Playlists
        # Create a playlist for a Spotify user. (The playlist will be empty until you
        # [add tracks](/documentation/web-api/reference/add-tracks-to-playlist).) Each
        # user is generally limited to a maximum of 11000 playlists.
        sig do
          params(
            user_id: String,
            name: String,
            components_schemas_properties_published: T::Boolean,
            collaborative: T::Boolean,
            description: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(Spotted::Models::Users::PlaylistCreateResponse)
        end
        def create(
          # The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
          user_id,
          # The name for the new playlist, for example `"Your Coolest Playlist"`. This name
          # does not need to be unique; a user may have several playlists with the same
          # name.
          name:,
          # Defaults to `true`. The playlist's public/private status (if it should be added
          # to the user's profile or not): `true` the playlist will be public, `false` the
          # playlist will be private. To be able to create private playlists, the user must
          # have granted the `playlist-modify-private`
          # [scope](/documentation/web-api/concepts/scopes/#list-of-scopes). For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          components_schemas_properties_published: nil,
          # Defaults to `false`. If `true` the playlist will be collaborative. _**Note**: to
          # create a collaborative playlist you must also set `public` to `false`. To create
          # collaborative playlists you must have granted `playlist-modify-private` and
          # `playlist-modify-public`
          # [scopes](/documentation/web-api/concepts/scopes/#list-of-scopes)._
          collaborative: nil,
          # value for playlist description as displayed in Spotify Clients and in the Web
          # API.
          description: nil,
          request_options: {}
        )
        end

        # Get a list of the playlists owned or followed by a Spotify user.
        sig do
          params(
            user_id: String,
            limit: Integer,
            offset: Integer,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(
            Spotted::Internal::CursorURLPage[Spotted::SimplifiedPlaylistObject]
          )
        end
        def list(
          # The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
          user_id,
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          # The index of the first playlist to return. Default: 0 (the first object).
          # Maximum offset: 100.000\. Use with `limit` to get the next set of playlists.
          offset: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Spotted::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
