# frozen_string_literal: true

module Spotted
  module Resources
    class Playlists
      class Tracks
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Playlists::TrackUpdateParams} for more details.
        #
        # Either reorder or replace items in a playlist depending on the request's
        # parameters. To reorder items, include `range_start`, `insert_before`,
        # `range_length` and `snapshot_id` in the request's body. To replace items,
        # include `uris` as either a query parameter or in the request's body. Replacing
        # items in a playlist will overwrite its existing items. This operation can be
        # used for replacing or clearing items in a playlist. <br/> **Note**: Replace and
        # reorder are mutually exclusive operations which share the same endpoint, but
        # have different parameters. These operations can't be applied together in a
        # single request.
        #
        # @overload update(playlist_id, body_uris: nil, insert_before: nil, range_length: nil, range_start: nil, snapshot_id: nil, request_options: {})
        #
        # @param playlist_id [String] Path param: The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) o
        #
        # @param body_uris [Array<String>] Body param:
        #
        # @param insert_before [Integer] Body param: The position where the items should be inserted.<br/>To reorder the
        #
        # @param range_length [Integer] Body param: The amount of items to be reordered. Defaults to 1 if not set.<br/>T
        #
        # @param range_start [Integer] Body param: The position of the first item to be reordered.
        #
        # @param snapshot_id [String] Body param: The playlist's snapshot ID against which you want to make the change
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Playlists::TrackUpdateResponse]
        #
        # @see Spotted::Models::Playlists::TrackUpdateParams
        def update(playlist_id, params = {})
          parsed, options = Spotted::Playlists::TrackUpdateParams.dump_request(params)
          query_params = [:query_uris]
          @client.request(
            method: :put,
            path: ["playlists/%1$s/tracks", playlist_id],
            query: parsed.slice(*query_params).transform_keys(query_uris: "uris"),
            body: parsed.except(*query_params),
            model: Spotted::Models::Playlists::TrackUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Playlists::TrackListParams} for more details.
        #
        # Get full details of the items of a playlist owned by a Spotify user.
        #
        # @overload list(playlist_id, additional_types: nil, fields: nil, limit: nil, market: nil, offset: nil, request_options: {})
        #
        # @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
        #
        # @param additional_types [String] A comma-separated list of item types that your client supports besides the defau
        #
        # @param fields [String] Filters for the query: a comma-separated list of the
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
        #
        # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Playlists::TrackListResponse]
        #
        # @see Spotted::Models::Playlists::TrackListParams
        def list(playlist_id, params = {})
          parsed, options = Spotted::Playlists::TrackListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["playlists/%1$s/tracks", playlist_id],
            query: parsed,
            model: Spotted::Models::Playlists::TrackListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Playlists::TrackAddParams} for more details.
        #
        # Add one or more items to a user's playlist.
        #
        # @overload add(playlist_id, body_position: nil, body_uris: nil, request_options: {})
        #
        # @param playlist_id [String] Path param: The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) o
        #
        # @param body_position [Integer] Body param: The position to insert the items, a zero-based index. For example, t
        #
        # @param body_uris [Array<String>] Body param: A JSON array of the [Spotify URIs](/documentation/web-api/concepts/s
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Playlists::TrackAddResponse]
        #
        # @see Spotted::Models::Playlists::TrackAddParams
        def add(playlist_id, params = {})
          parsed, options = Spotted::Playlists::TrackAddParams.dump_request(params)
          query_params = [:query_position, :query_uris]
          @client.request(
            method: :post,
            path: ["playlists/%1$s/tracks", playlist_id],
            query: parsed.slice(*query_params).transform_keys(query_position: "position", query_uris: "uris"),
            body: parsed.except(*query_params),
            model: Spotted::Models::Playlists::TrackAddResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Playlists::TrackRemoveParams} for more details.
        #
        # Remove one or more items from a user's playlist.
        #
        # @overload remove(playlist_id, tracks:, snapshot_id: nil, request_options: {})
        #
        # @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
        #
        # @param tracks [Array<Spotted::Models::Playlists::TrackRemoveParams::Track>] An array of objects containing [Spotify URIs](/documentation/web-api/concepts/sp
        #
        # @param snapshot_id [String] The playlist's snapshot ID against which you want to make the changes.
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Playlists::TrackRemoveResponse]
        #
        # @see Spotted::Models::Playlists::TrackRemoveParams
        def remove(playlist_id, params)
          parsed, options = Spotted::Playlists::TrackRemoveParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["playlists/%1$s/tracks", playlist_id],
            body: parsed,
            model: Spotted::Models::Playlists::TrackRemoveResponse,
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
