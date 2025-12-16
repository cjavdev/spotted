# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      class Player
        # @return [Spotted::Resources::Me::Player::Queue]
        attr_reader :queue

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlayerGetCurrentlyPlayingParams} for more details.
        #
        # Get the object currently being played on the user's Spotify account.
        #
        # @overload get_currently_playing(additional_types: nil, market: nil, request_options: {})
        #
        # @param additional_types [String] A comma-separated list of item types that your client supports besides the defau
        #
        # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Me::PlayerGetCurrentlyPlayingResponse]
        #
        # @see Spotted::Models::Me::PlayerGetCurrentlyPlayingParams
        def get_currently_playing(params = {})
          parsed, options = Spotted::Me::PlayerGetCurrentlyPlayingParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/player/currently-playing",
            query: parsed,
            model: Spotted::Models::Me::PlayerGetCurrentlyPlayingResponse,
            options: options
          )
        end

        # Get information about a user’s available Spotify Connect devices. Some device
        # models are not supported and will not be listed in the API response.
        #
        # @overload get_devices(request_options: {})
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Me::PlayerGetDevicesResponse]
        #
        # @see Spotted::Models::Me::PlayerGetDevicesParams
        def get_devices(params = {})
          @client.request(
            method: :get,
            path: "me/player/devices",
            model: Spotted::Models::Me::PlayerGetDevicesResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlayerGetStateParams} for more details.
        #
        # Get information about the user’s current playback state, including track or
        # episode, progress, and active device.
        #
        # @overload get_state(additional_types: nil, market: nil, request_options: {})
        #
        # @param additional_types [String] A comma-separated list of item types that your client supports besides the defau
        #
        # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Me::PlayerGetStateResponse]
        #
        # @see Spotted::Models::Me::PlayerGetStateParams
        def get_state(params = {})
          parsed, options = Spotted::Me::PlayerGetStateParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/player",
            query: parsed,
            model: Spotted::Models::Me::PlayerGetStateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlayerListRecentlyPlayedParams} for more details.
        #
        # Get tracks from the current user's recently played tracks. _**Note**: Currently
        # doesn't support podcast episodes._
        #
        # @overload list_recently_played(after: nil, before: nil, limit: nil, request_options: {})
        #
        # @param after [Integer] A Unix timestamp in milliseconds. Returns all items
        #
        # @param before [Integer] A Unix timestamp in milliseconds. Returns all items
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Internal::CursorURLPage<Spotted::Models::Me::PlayerListRecentlyPlayedResponse>]
        #
        # @see Spotted::Models::Me::PlayerListRecentlyPlayedParams
        def list_recently_played(params = {})
          parsed, options = Spotted::Me::PlayerListRecentlyPlayedParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/player/recently-played",
            query: parsed,
            page: Spotted::Internal::CursorURLPage,
            model: Spotted::Models::Me::PlayerListRecentlyPlayedResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlayerPausePlaybackParams} for more details.
        #
        # Pause playback on the user's account. This API only works for users who have
        # Spotify Premium. The order of execution is not guaranteed when you use this API
        # with other Player API endpoints.
        #
        # @overload pause_playback(device_id: nil, request_options: {})
        #
        # @param device_id [String] The id of the device this command is targeting. If not supplied, the user's curr
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::PlayerPausePlaybackParams
        def pause_playback(params = {})
          parsed, options = Spotted::Me::PlayerPausePlaybackParams.dump_request(params)
          @client.request(
            method: :put,
            path: "me/player/pause",
            query: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlayerSeekToPositionParams} for more details.
        #
        # Seeks to the given position in the user’s currently playing track. This API only
        # works for users who have Spotify Premium. The order of execution is not
        # guaranteed when you use this API with other Player API endpoints.
        #
        # @overload seek_to_position(position_ms:, device_id: nil, request_options: {})
        #
        # @param position_ms [Integer] The position in milliseconds to seek to. Must be a
        #
        # @param device_id [String] The id of the device this command is targeting. If
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::PlayerSeekToPositionParams
        def seek_to_position(params)
          parsed, options = Spotted::Me::PlayerSeekToPositionParams.dump_request(params)
          @client.request(
            method: :put,
            path: "me/player/seek",
            query: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlayerSetRepeatModeParams} for more details.
        #
        # Set the repeat mode for the user's playback. This API only works for users who
        # have Spotify Premium. The order of execution is not guaranteed when you use this
        # API with other Player API endpoints.
        #
        # @overload set_repeat_mode(state:, device_id: nil, request_options: {})
        #
        # @param state [String] **track**, **context** or **off**.<br/>
        #
        # @param device_id [String] The id of the device this command is targeting. If
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::PlayerSetRepeatModeParams
        def set_repeat_mode(params)
          parsed, options = Spotted::Me::PlayerSetRepeatModeParams.dump_request(params)
          @client.request(
            method: :put,
            path: "me/player/repeat",
            query: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlayerSetVolumeParams} for more details.
        #
        # Set the volume for the user’s current playback device. This API only works for
        # users who have Spotify Premium. The order of execution is not guaranteed when
        # you use this API with other Player API endpoints.
        #
        # @overload set_volume(volume_percent:, device_id: nil, request_options: {})
        #
        # @param volume_percent [Integer] The volume to set. Must be a value from 0 to 100 inclusive.
        #
        # @param device_id [String] The id of the device this command is targeting. If not supplied, the user's curr
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::PlayerSetVolumeParams
        def set_volume(params)
          parsed, options = Spotted::Me::PlayerSetVolumeParams.dump_request(params)
          @client.request(
            method: :put,
            path: "me/player/volume",
            query: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlayerSkipNextParams} for more details.
        #
        # Skips to next track in the user’s queue. This API only works for users who have
        # Spotify Premium. The order of execution is not guaranteed when you use this API
        # with other Player API endpoints.
        #
        # @overload skip_next(device_id: nil, request_options: {})
        #
        # @param device_id [String] The id of the device this command is targeting. If not supplied, the user's curr
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::PlayerSkipNextParams
        def skip_next(params = {})
          parsed, options = Spotted::Me::PlayerSkipNextParams.dump_request(params)
          @client.request(
            method: :post,
            path: "me/player/next",
            query: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlayerSkipPreviousParams} for more details.
        #
        # Skips to previous track in the user’s queue. This API only works for users who
        # have Spotify Premium. The order of execution is not guaranteed when you use this
        # API with other Player API endpoints.
        #
        # @overload skip_previous(device_id: nil, request_options: {})
        #
        # @param device_id [String] The id of the device this command is targeting. If
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::PlayerSkipPreviousParams
        def skip_previous(params = {})
          parsed, options = Spotted::Me::PlayerSkipPreviousParams.dump_request(params)
          @client.request(
            method: :post,
            path: "me/player/previous",
            query: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlayerStartPlaybackParams} for more details.
        #
        # Start a new context or resume current playback on the user's active device. This
        # API only works for users who have Spotify Premium. The order of execution is not
        # guaranteed when you use this API with other Player API endpoints.
        #
        # @overload start_playback(device_id: nil, context_uri: nil, offset: nil, position_ms: nil, published: nil, uris: nil, request_options: {})
        #
        # @param device_id [String] Query param: The id of the device this command is targeting. If not supplied, th
        #
        # @param context_uri [String] Body param: Optional. Spotify URI of the context to play.
        #
        # @param offset [Hash{Symbol=>Object}] Body param: Optional. Indicates from where in the context playback should start.
        #
        # @param position_ms [Integer] Body param: Indicates from what position to start playback. Must be a positive n
        #
        # @param published [Boolean] Body param: The playlist's public/private status (if it should be added to the u
        #
        # @param uris [Array<String>] Body param: Optional. A JSON array of the Spotify track URIs to play.
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::PlayerStartPlaybackParams
        def start_playback(params = {})
          parsed, options = Spotted::Me::PlayerStartPlaybackParams.dump_request(params)
          query_params = [:device_id]
          @client.request(
            method: :put,
            path: "me/player/play",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlayerToggleShuffleParams} for more details.
        #
        # Toggle shuffle on or off for user’s playback. This API only works for users who
        # have Spotify Premium. The order of execution is not guaranteed when you use this
        # API with other Player API endpoints.
        #
        # @overload toggle_shuffle(state:, device_id: nil, request_options: {})
        #
        # @param state [Boolean] **true** : Shuffle user's playback.<br/>
        #
        # @param device_id [String] The id of the device this command is targeting. If
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::PlayerToggleShuffleParams
        def toggle_shuffle(params)
          parsed, options = Spotted::Me::PlayerToggleShuffleParams.dump_request(params)
          @client.request(
            method: :put,
            path: "me/player/shuffle",
            query: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::PlayerTransferParams} for more details.
        #
        # Transfer playback to a new device and optionally begin playback. This API only
        # works for users who have Spotify Premium. The order of execution is not
        # guaranteed when you use this API with other Player API endpoints.
        #
        # @overload transfer(device_ids:, play: nil, published: nil, request_options: {})
        #
        # @param device_ids [Array<String>] A JSON array containing the ID of the device on which playback should be started
        #
        # @param play [Boolean] **true**: ensure playback happens on new device.<br/>**false** or not provided:
        #
        # @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::PlayerTransferParams
        def transfer(params)
          parsed, options = Spotted::Me::PlayerTransferParams.dump_request(params)
          @client.request(method: :put, path: "me/player", body: parsed, model: NilClass, options: options)
        end

        # @api private
        #
        # @param client [Spotted::Client]
        def initialize(client:)
          @client = client
          @queue = Spotted::Resources::Me::Player::Queue.new(client: client)
        end
      end
    end
  end
end
