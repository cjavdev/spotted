# typed: strong

module Spotted
  module Resources
    class Me
      class Player
        sig { returns(Spotted::Resources::Me::Player::Queue) }
        attr_reader :queue

        # Get the object currently being played on the user's Spotify account.
        sig do
          params(
            additional_types: String,
            market: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(Spotted::Models::Me::PlayerGetCurrentlyPlayingResponse)
        end
        def get_currently_playing(
          # A comma-separated list of item types that your client supports besides the
          # default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**:
          # This parameter was introduced to allow existing clients to maintain their
          # current behaviour and might be deprecated in the future._<br/> In addition to
          # providing this parameter, make sure that your client properly handles cases of
          # new types in the future by checking against the `type` field of each object.
          additional_types: nil,
          # An
          # [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
          # If a country code is specified, only content that is available in that market
          # will be returned.<br/> If a valid user access token is specified in the request
          # header, the country associated with the user account will take priority over
          # this parameter.<br/> _**Note**: If neither market or user country are provided,
          # the content is considered unavailable for the client._<br/> Users can view the
          # country that is associated with their account in the
          # [account settings](https://www.spotify.com/account/overview/).
          market: nil,
          request_options: {}
        )
        end

        # Get information about a user’s available Spotify Connect devices. Some device
        # models are not supported and will not be listed in the API response.
        sig do
          params(request_options: Spotted::RequestOptions::OrHash).returns(
            Spotted::Models::Me::PlayerGetDevicesResponse
          )
        end
        def get_devices(request_options: {})
        end

        # Get information about the user’s current playback state, including track or
        # episode, progress, and active device.
        sig do
          params(
            additional_types: String,
            market: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(Spotted::Models::Me::PlayerGetStateResponse)
        end
        def get_state(
          # A comma-separated list of item types that your client supports besides the
          # default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**:
          # This parameter was introduced to allow existing clients to maintain their
          # current behaviour and might be deprecated in the future._<br/> In addition to
          # providing this parameter, make sure that your client properly handles cases of
          # new types in the future by checking against the `type` field of each object.
          additional_types: nil,
          # An
          # [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
          # If a country code is specified, only content that is available in that market
          # will be returned.<br/> If a valid user access token is specified in the request
          # header, the country associated with the user account will take priority over
          # this parameter.<br/> _**Note**: If neither market or user country are provided,
          # the content is considered unavailable for the client._<br/> Users can view the
          # country that is associated with their account in the
          # [account settings](https://www.spotify.com/account/overview/).
          market: nil,
          request_options: {}
        )
        end

        # Get tracks from the current user's recently played tracks. _**Note**: Currently
        # doesn't support podcast episodes._
        sig do
          params(
            after: Integer,
            before: Integer,
            limit: Integer,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(
            Spotted::Internal::CursorURLPage[
              Spotted::Models::Me::PlayerListRecentlyPlayedResponse
            ]
          )
        end
        def list_recently_played(
          # A Unix timestamp in milliseconds. Returns all items after (but not including)
          # this cursor position. If `after` is specified, `before` must not be specified.
          after: nil,
          # A Unix timestamp in milliseconds. Returns all items before (but not including)
          # this cursor position. If `before` is specified, `after` must not be specified.
          before: nil,
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          request_options: {}
        )
        end

        # Pause playback on the user's account. This API only works for users who have
        # Spotify Premium. The order of execution is not guaranteed when you use this API
        # with other Player API endpoints.
        sig do
          params(
            device_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def pause_playback(
          # The id of the device this command is targeting. If not supplied, the user's
          # currently active device is the target.
          device_id: nil,
          request_options: {}
        )
        end

        # Seeks to the given position in the user’s currently playing track. This API only
        # works for users who have Spotify Premium. The order of execution is not
        # guaranteed when you use this API with other Player API endpoints.
        sig do
          params(
            position_ms: Integer,
            device_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def seek_to_position(
          # The position in milliseconds to seek to. Must be a positive number. Passing in a
          # position that is greater than the length of the track will cause the player to
          # start playing the next song.
          position_ms:,
          # The id of the device this command is targeting. If not supplied, the user's
          # currently active device is the target.
          device_id: nil,
          request_options: {}
        )
        end

        # Set the repeat mode for the user's playback. This API only works for users who
        # have Spotify Premium. The order of execution is not guaranteed when you use this
        # API with other Player API endpoints.
        sig do
          params(
            state: String,
            device_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def set_repeat_mode(
          # **track**, **context** or **off**.<br/> **track** will repeat the current
          # track.<br/> **context** will repeat the current context.<br/> **off** will turn
          # repeat off.
          state:,
          # The id of the device this command is targeting. If not supplied, the user's
          # currently active device is the target.
          device_id: nil,
          request_options: {}
        )
        end

        # Set the volume for the user’s current playback device. This API only works for
        # users who have Spotify Premium. The order of execution is not guaranteed when
        # you use this API with other Player API endpoints.
        sig do
          params(
            volume_percent: Integer,
            device_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def set_volume(
          # The volume to set. Must be a value from 0 to 100 inclusive.
          volume_percent:,
          # The id of the device this command is targeting. If not supplied, the user's
          # currently active device is the target.
          device_id: nil,
          request_options: {}
        )
        end

        # Skips to next track in the user’s queue. This API only works for users who have
        # Spotify Premium. The order of execution is not guaranteed when you use this API
        # with other Player API endpoints.
        sig do
          params(
            device_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def skip_next(
          # The id of the device this command is targeting. If not supplied, the user's
          # currently active device is the target.
          device_id: nil,
          request_options: {}
        )
        end

        # Skips to previous track in the user’s queue. This API only works for users who
        # have Spotify Premium. The order of execution is not guaranteed when you use this
        # API with other Player API endpoints.
        sig do
          params(
            device_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def skip_previous(
          # The id of the device this command is targeting. If not supplied, the user's
          # currently active device is the target.
          device_id: nil,
          request_options: {}
        )
        end

        # Start a new context or resume current playback on the user's active device. This
        # API only works for users who have Spotify Premium. The order of execution is not
        # guaranteed when you use this API with other Player API endpoints.
        sig do
          params(
            device_id: String,
            context_uri: String,
            offset: T::Hash[Symbol, T.anything],
            position_ms: Integer,
            uris: T::Array[String],
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def start_playback(
          # Query param: The id of the device this command is targeting. If not supplied,
          # the user's currently active device is the target.
          device_id: nil,
          # Body param: Optional. Spotify URI of the context to play. Valid contexts are
          # albums, artists & playlists.
          # `{context_uri:"spotify:album:1Je1IMUlBXcx1Fz0WE7oPT"}`
          context_uri: nil,
          # Body param: Optional. Indicates from where in the context playback should start.
          # Only available when context_uri corresponds to an album or playlist object
          # "position" is zero based and can’t be negative. Example:
          # `"offset": {"position": 5}` "uri" is a string representing the uri of the item
          # to start at. Example:
          # `"offset": {"uri": "spotify:track:1301WleyT98MSxVHPZCA6M"}`
          offset: nil,
          # Body param: Indicates from what position to start playback. Must be a positive
          # number. Passing in a position that is greater than the length of the track will
          # cause the player to start playing the next song.
          position_ms: nil,
          # Body param: Optional. A JSON array of the Spotify track URIs to play. For
          # example:
          # `{"uris": ["spotify:track:4iV5W9uYEdYUVa79Axb7Rh", "spotify:track:1301WleyT98MSxVHPZCA6M"]}`
          uris: nil,
          request_options: {}
        )
        end

        # Toggle shuffle on or off for user’s playback. This API only works for users who
        # have Spotify Premium. The order of execution is not guaranteed when you use this
        # API with other Player API endpoints.
        sig do
          params(
            state: T::Boolean,
            device_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def toggle_shuffle(
          # **true** : Shuffle user's playback.<br/> **false** : Do not shuffle user's
          # playback.
          state:,
          # The id of the device this command is targeting. If not supplied, the user's
          # currently active device is the target.
          device_id: nil,
          request_options: {}
        )
        end

        # Transfer playback to a new device and optionally begin playback. This API only
        # works for users who have Spotify Premium. The order of execution is not
        # guaranteed when you use this API with other Player API endpoints.
        sig do
          params(
            device_ids: T::Array[String],
            play: T::Boolean,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def transfer(
          # A JSON array containing the ID of the device on which playback should be
          # started/transferred.<br/>For
          # example:`{device_ids:["74ASZWbe4lXaubB36ztrGX"]}`<br/>_**Note**: Although an
          # array is accepted, only a single device_id is currently supported. Supplying
          # more than one will return `400 Bad Request`_
          device_ids:,
          # **true**: ensure playback happens on new device.<br/>**false** or not provided:
          # keep the current playback state.
          play: nil,
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
