# typed: strong

module Spotted
  module Resources
    class Playlists
      class Followers
        # Check to see if the current user is following a specified playlist.
        sig do
          params(
            playlist_id: String,
            ids: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T::Array[T::Boolean])
        end
        def check(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
          # playlist.
          playlist_id,
          # **Deprecated** A single item list containing current user's
          # [Spotify Username](/documentation/web-api/concepts/spotify-uris-ids). Maximum: 1
          # id.
          ids: nil,
          request_options: {}
        )
        end

        # Add the current user as a follower of a playlist.
        sig do
          params(
            playlist_id: String,
            paths_request_body_content_application_json_schema_properties_published:
              T::Boolean,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def follow(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
          # playlist.
          playlist_id,
          # Defaults to `true`. If `true` the playlist will be included in user's public
          # playlists (added to profile), if `false` it will remain private. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          paths_request_body_content_application_json_schema_properties_published: nil,
          request_options: {}
        )
        end

        # Remove the current user as a follower of a playlist.
        sig do
          params(
            playlist_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def unfollow(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
          # playlist.
          playlist_id,
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
