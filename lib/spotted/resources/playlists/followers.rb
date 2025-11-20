# frozen_string_literal: true

module Spotted
  module Resources
    class Playlists
      class Followers
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Playlists::FollowerCheckParams} for more details.
        #
        # Check to see if the current user is following a specified playlist.
        #
        # @overload check(playlist_id, ids: nil, request_options: {})
        #
        # @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
        #
        # @param ids [String] **Deprecated** A single item list containing current user's [Spotify Username](/
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Boolean>]
        #
        # @see Spotted::Models::Playlists::FollowerCheckParams
        def check(playlist_id, params = {})
          parsed, options = Spotted::Playlists::FollowerCheckParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["playlists/%1$s/followers/contains", playlist_id],
            query: parsed,
            model: Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean],
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Playlists::FollowerFollowParams} for more details.
        #
        # Add the current user as a follower of a playlist.
        #
        # @overload follow(playlist_id, paths_request_body_content_application_json_schema_properties_published: nil, request_options: {})
        #
        # @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
        #
        # @param paths_request_body_content_application_json_schema_properties_published [Boolean] Defaults to `true`. If `true` the playlist will be included in user's public pla
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Playlists::FollowerFollowParams
        def follow(playlist_id, params = {})
          parsed, options = Spotted::Playlists::FollowerFollowParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["playlists/%1$s/followers", playlist_id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Playlists::FollowerUnfollowParams} for more details.
        #
        # Remove the current user as a follower of a playlist.
        #
        # @overload unfollow(playlist_id, request_options: {})
        #
        # @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Playlists::FollowerUnfollowParams
        def unfollow(playlist_id, params = {})
          @client.request(
            method: :delete,
            path: ["playlists/%1$s/followers", playlist_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Spotted::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
