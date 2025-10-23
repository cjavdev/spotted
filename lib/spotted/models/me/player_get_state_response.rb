# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Player#get_state
      class PlayerGetStateResponse < Spotted::Internal::Type::BaseModel
        # @!attribute actions
        #   Allows to update the user interface based on which playback actions are
        #   available within the current context.
        #
        #   @return [Spotted::Models::Me::PlayerGetStateResponse::Actions, nil]
        optional :actions, -> { Spotted::Models::Me::PlayerGetStateResponse::Actions }

        # @!attribute context
        #   A Context Object. Can be `null`.
        #
        #   @return [Spotted::Models::Me::ContextObject, nil]
        optional :context, -> { Spotted::Me::ContextObject }

        # @!attribute currently_playing_type
        #   The object type of the currently playing item. Can be one of `track`, `episode`,
        #   `ad` or `unknown`.
        #
        #   @return [String, nil]
        optional :currently_playing_type, String

        # @!attribute device
        #   The device that is currently active.
        #
        #   @return [Spotted::Models::Me::DeviceObject, nil]
        optional :device, -> { Spotted::Me::DeviceObject }

        # @!attribute is_playing
        #   If something is currently playing, return `true`.
        #
        #   @return [Boolean, nil]
        optional :is_playing, Spotted::Internal::Type::Boolean

        # @!attribute item
        #   The currently playing track or episode. Can be `null`.
        #
        #   @return [Spotted::Models::TrackObject, Spotted::Models::EpisodeObject, nil]
        optional :item, union: -> { Spotted::Models::Me::PlayerGetStateResponse::Item }

        # @!attribute progress_ms
        #   Progress into the currently playing track or episode. Can be `null`.
        #
        #   @return [Integer, nil]
        optional :progress_ms, Integer

        # @!attribute repeat_state
        #   off, track, context
        #
        #   @return [String, nil]
        optional :repeat_state, String

        # @!attribute shuffle_state
        #   If shuffle is on or off.
        #
        #   @return [Boolean, nil]
        optional :shuffle_state, Spotted::Internal::Type::Boolean

        # @!attribute timestamp
        #   Unix Millisecond Timestamp when playback state was last changed (play, pause,
        #   skip, scrub, new song, etc.).
        #
        #   @return [Integer, nil]
        optional :timestamp, Integer

        # @!method initialize(actions: nil, context: nil, currently_playing_type: nil, device: nil, is_playing: nil, item: nil, progress_ms: nil, repeat_state: nil, shuffle_state: nil, timestamp: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::PlayerGetStateResponse} for more details.
        #
        #   @param actions [Spotted::Models::Me::PlayerGetStateResponse::Actions] Allows to update the user interface based on which playback actions are availabl
        #
        #   @param context [Spotted::Models::Me::ContextObject] A Context Object. Can be `null`.
        #
        #   @param currently_playing_type [String] The object type of the currently playing item. Can be one of `track`, `episode`,
        #
        #   @param device [Spotted::Models::Me::DeviceObject] The device that is currently active.
        #
        #   @param is_playing [Boolean] If something is currently playing, return `true`.
        #
        #   @param item [Spotted::Models::TrackObject, Spotted::Models::EpisodeObject] The currently playing track or episode. Can be `null`.
        #
        #   @param progress_ms [Integer] Progress into the currently playing track or episode. Can be `null`.
        #
        #   @param repeat_state [String] off, track, context
        #
        #   @param shuffle_state [Boolean] If shuffle is on or off.
        #
        #   @param timestamp [Integer] Unix Millisecond Timestamp when playback state was last changed (play, pause, sk

        # @see Spotted::Models::Me::PlayerGetStateResponse#actions
        class Actions < Spotted::Internal::Type::BaseModel
          # @!attribute interrupting_playback
          #   Interrupting playback. Optional field.
          #
          #   @return [Boolean, nil]
          optional :interrupting_playback, Spotted::Internal::Type::Boolean

          # @!attribute pausing
          #   Pausing. Optional field.
          #
          #   @return [Boolean, nil]
          optional :pausing, Spotted::Internal::Type::Boolean

          # @!attribute resuming
          #   Resuming. Optional field.
          #
          #   @return [Boolean, nil]
          optional :resuming, Spotted::Internal::Type::Boolean

          # @!attribute seeking
          #   Seeking playback location. Optional field.
          #
          #   @return [Boolean, nil]
          optional :seeking, Spotted::Internal::Type::Boolean

          # @!attribute skipping_next
          #   Skipping to the next context. Optional field.
          #
          #   @return [Boolean, nil]
          optional :skipping_next, Spotted::Internal::Type::Boolean

          # @!attribute skipping_prev
          #   Skipping to the previous context. Optional field.
          #
          #   @return [Boolean, nil]
          optional :skipping_prev, Spotted::Internal::Type::Boolean

          # @!attribute toggling_repeat_context
          #   Toggling repeat context flag. Optional field.
          #
          #   @return [Boolean, nil]
          optional :toggling_repeat_context, Spotted::Internal::Type::Boolean

          # @!attribute toggling_repeat_track
          #   Toggling repeat track flag. Optional field.
          #
          #   @return [Boolean, nil]
          optional :toggling_repeat_track, Spotted::Internal::Type::Boolean

          # @!attribute toggling_shuffle
          #   Toggling shuffle flag. Optional field.
          #
          #   @return [Boolean, nil]
          optional :toggling_shuffle, Spotted::Internal::Type::Boolean

          # @!attribute transferring_playback
          #   Transfering playback between devices. Optional field.
          #
          #   @return [Boolean, nil]
          optional :transferring_playback, Spotted::Internal::Type::Boolean

          # @!method initialize(interrupting_playback: nil, pausing: nil, resuming: nil, seeking: nil, skipping_next: nil, skipping_prev: nil, toggling_repeat_context: nil, toggling_repeat_track: nil, toggling_shuffle: nil, transferring_playback: nil)
          #   Allows to update the user interface based on which playback actions are
          #   available within the current context.
          #
          #   @param interrupting_playback [Boolean] Interrupting playback. Optional field.
          #
          #   @param pausing [Boolean] Pausing. Optional field.
          #
          #   @param resuming [Boolean] Resuming. Optional field.
          #
          #   @param seeking [Boolean] Seeking playback location. Optional field.
          #
          #   @param skipping_next [Boolean] Skipping to the next context. Optional field.
          #
          #   @param skipping_prev [Boolean] Skipping to the previous context. Optional field.
          #
          #   @param toggling_repeat_context [Boolean] Toggling repeat context flag. Optional field.
          #
          #   @param toggling_repeat_track [Boolean] Toggling repeat track flag. Optional field.
          #
          #   @param toggling_shuffle [Boolean] Toggling shuffle flag. Optional field.
          #
          #   @param transferring_playback [Boolean] Transfering playback between devices. Optional field.
        end

        # The currently playing track or episode. Can be `null`.
        #
        # @see Spotted::Models::Me::PlayerGetStateResponse#item
        module Item
          extend Spotted::Internal::Type::Union

          discriminator :type

          variant :track, -> { Spotted::TrackObject }

          variant :episode, -> { Spotted::EpisodeObject }

          # @!method self.variants
          #   @return [Array(Spotted::Models::TrackObject, Spotted::Models::EpisodeObject)]
        end
      end
    end
  end
end
