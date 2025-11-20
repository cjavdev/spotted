# frozen_string_literal: true

module Spotted
  module Resources
    class Users
      class Playlists
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Users::PlaylistCreateParams} for more details.
        #
        # Create a playlist for a Spotify user. (The playlist will be empty until you
        # [add tracks](/documentation/web-api/reference/add-tracks-to-playlist).) Each
        # user is generally limited to a maximum of 11000 playlists.
        #
        # @overload create(user_id, name:, paths_request_body_content_application_json_schema_properties_published: nil, collaborative: nil, description: nil, request_options: {})
        #
        # @param user_id [String] The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
        #
        # @param name [String] The name for the new playlist, for example `"Your Coolest Playlist"`. This name
        #
        # @param paths_request_body_content_application_json_schema_properties_published [Boolean] Defaults to `true`. The playlist's public/private status (if it should be added
        #
        # @param collaborative [Boolean] Defaults to `false`. If `true` the playlist will be collaborative. \_**Note**:
        # to
        #
        # @param description [String] value for playlist description as displayed in Spotify Clients and in the Web AP
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Users::PlaylistCreateResponse]
        #
        # @see Spotted::Models::Users::PlaylistCreateParams
        def create(user_id, params)
          parsed, options = Spotted::Users::PlaylistCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["users/%1$s/playlists", user_id],
            body: parsed,
            model: Spotted::Models::Users::PlaylistCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Users::PlaylistListParams} for more details.
        #
        # Get a list of the playlists owned or followed by a Spotify user.
        #
        # @overload list(user_id, limit: nil, offset: nil, request_options: {})
        #
        # @param user_id [String] The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param offset [Integer] The index of the first playlist to return. Default:
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Internal::CursorURLPage<Spotted::Models::SimplifiedPlaylistObject>]
        #
        # @see Spotted::Models::Users::PlaylistListParams
        def list(user_id, params = {})
          parsed, options = Spotted::Users::PlaylistListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["users/%1$s/playlists", user_id],
            query: parsed,
            page: Spotted::Internal::CursorURLPage,
            model: Spotted::SimplifiedPlaylistObject,
            options: options
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
