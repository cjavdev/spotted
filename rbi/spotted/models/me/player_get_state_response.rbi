# typed: strong

module Spotted
  module Models
    module Me
      class PlayerGetStateResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::PlayerGetStateResponse,
              Spotted::Internal::AnyHash
            )
          end

        # Allows to update the user interface based on which playback actions are
        # available within the current context.
        sig do
          returns(
            T.nilable(Spotted::Models::Me::PlayerGetStateResponse::Actions)
          )
        end
        attr_reader :actions

        sig do
          params(
            actions:
              Spotted::Models::Me::PlayerGetStateResponse::Actions::OrHash
          ).void
        end
        attr_writer :actions

        # A Context Object. Can be `null`.
        sig { returns(T.nilable(Spotted::Me::ContextObject)) }
        attr_reader :context

        sig { params(context: Spotted::Me::ContextObject::OrHash).void }
        attr_writer :context

        # The object type of the currently playing item. Can be one of `track`, `episode`,
        # `ad` or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :currently_playing_type

        sig { params(currently_playing_type: String).void }
        attr_writer :currently_playing_type

        # The device that is currently active.
        sig { returns(T.nilable(Spotted::Me::DeviceObject)) }
        attr_reader :device

        sig { params(device: Spotted::Me::DeviceObject::OrHash).void }
        attr_writer :device

        # If something is currently playing, return `true`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_playing

        sig { params(is_playing: T::Boolean).void }
        attr_writer :is_playing

        # The currently playing track or episode. Can be `null`.
        sig do
          returns(
            T.nilable(
              Spotted::Models::Me::PlayerGetStateResponse::Item::Variants
            )
          )
        end
        attr_reader :item

        sig do
          params(
            item:
              T.any(
                Spotted::TrackObject::OrHash,
                Spotted::EpisodeObject::OrHash
              )
          ).void
        end
        attr_writer :item

        # Progress into the currently playing track or episode. Can be `null`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :progress_ms

        sig { params(progress_ms: Integer).void }
        attr_writer :progress_ms

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        # off, track, context
        sig { returns(T.nilable(String)) }
        attr_reader :repeat_state

        sig { params(repeat_state: String).void }
        attr_writer :repeat_state

        # If shuffle is on or off.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :shuffle_state

        sig { params(shuffle_state: T::Boolean).void }
        attr_writer :shuffle_state

        # Unix Millisecond Timestamp when playback state was last changed (play, pause,
        # skip, scrub, new song, etc.).
        sig { returns(T.nilable(Integer)) }
        attr_reader :timestamp

        sig { params(timestamp: Integer).void }
        attr_writer :timestamp

        sig do
          params(
            actions:
              Spotted::Models::Me::PlayerGetStateResponse::Actions::OrHash,
            context: Spotted::Me::ContextObject::OrHash,
            currently_playing_type: String,
            device: Spotted::Me::DeviceObject::OrHash,
            is_playing: T::Boolean,
            item:
              T.any(
                Spotted::TrackObject::OrHash,
                Spotted::EpisodeObject::OrHash
              ),
            progress_ms: Integer,
            published: T::Boolean,
            repeat_state: String,
            shuffle_state: T::Boolean,
            timestamp: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Allows to update the user interface based on which playback actions are
          # available within the current context.
          actions: nil,
          # A Context Object. Can be `null`.
          context: nil,
          # The object type of the currently playing item. Can be one of `track`, `episode`,
          # `ad` or `unknown`.
          currently_playing_type: nil,
          # The device that is currently active.
          device: nil,
          # If something is currently playing, return `true`.
          is_playing: nil,
          # The currently playing track or episode. Can be `null`.
          item: nil,
          # Progress into the currently playing track or episode. Can be `null`.
          progress_ms: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # off, track, context
          repeat_state: nil,
          # If shuffle is on or off.
          shuffle_state: nil,
          # Unix Millisecond Timestamp when playback state was last changed (play, pause,
          # skip, scrub, new song, etc.).
          timestamp: nil
        )
        end

        sig do
          override.returns(
            {
              actions: Spotted::Models::Me::PlayerGetStateResponse::Actions,
              context: Spotted::Me::ContextObject,
              currently_playing_type: String,
              device: Spotted::Me::DeviceObject,
              is_playing: T::Boolean,
              item: Spotted::Models::Me::PlayerGetStateResponse::Item::Variants,
              progress_ms: Integer,
              published: T::Boolean,
              repeat_state: String,
              shuffle_state: T::Boolean,
              timestamp: Integer
            }
          )
        end
        def to_hash
        end

        class Actions < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Me::PlayerGetStateResponse::Actions,
                Spotted::Internal::AnyHash
              )
            end

          # Interrupting playback. Optional field.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :interrupting_playback

          sig { params(interrupting_playback: T::Boolean).void }
          attr_writer :interrupting_playback

          # Pausing. Optional field.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :pausing

          sig { params(pausing: T::Boolean).void }
          attr_writer :pausing

          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :published

          sig { params(published: T::Boolean).void }
          attr_writer :published

          # Resuming. Optional field.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :resuming

          sig { params(resuming: T::Boolean).void }
          attr_writer :resuming

          # Seeking playback location. Optional field.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :seeking

          sig { params(seeking: T::Boolean).void }
          attr_writer :seeking

          # Skipping to the next context. Optional field.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :skipping_next

          sig { params(skipping_next: T::Boolean).void }
          attr_writer :skipping_next

          # Skipping to the previous context. Optional field.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :skipping_prev

          sig { params(skipping_prev: T::Boolean).void }
          attr_writer :skipping_prev

          # Toggling repeat context flag. Optional field.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :toggling_repeat_context

          sig { params(toggling_repeat_context: T::Boolean).void }
          attr_writer :toggling_repeat_context

          # Toggling repeat track flag. Optional field.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :toggling_repeat_track

          sig { params(toggling_repeat_track: T::Boolean).void }
          attr_writer :toggling_repeat_track

          # Toggling shuffle flag. Optional field.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :toggling_shuffle

          sig { params(toggling_shuffle: T::Boolean).void }
          attr_writer :toggling_shuffle

          # Transfering playback between devices. Optional field.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :transferring_playback

          sig { params(transferring_playback: T::Boolean).void }
          attr_writer :transferring_playback

          # Allows to update the user interface based on which playback actions are
          # available within the current context.
          sig do
            params(
              interrupting_playback: T::Boolean,
              pausing: T::Boolean,
              published: T::Boolean,
              resuming: T::Boolean,
              seeking: T::Boolean,
              skipping_next: T::Boolean,
              skipping_prev: T::Boolean,
              toggling_repeat_context: T::Boolean,
              toggling_repeat_track: T::Boolean,
              toggling_shuffle: T::Boolean,
              transferring_playback: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Interrupting playback. Optional field.
            interrupting_playback: nil,
            # Pausing. Optional field.
            pausing: nil,
            # The playlist's public/private status (if it should be added to the user's
            # profile or not): `true` the playlist will be public, `false` the playlist will
            # be private, `null` the playlist status is not relevant. For more about
            # public/private status, see
            # [Working with Playlists](/documentation/web-api/concepts/playlists)
            published: nil,
            # Resuming. Optional field.
            resuming: nil,
            # Seeking playback location. Optional field.
            seeking: nil,
            # Skipping to the next context. Optional field.
            skipping_next: nil,
            # Skipping to the previous context. Optional field.
            skipping_prev: nil,
            # Toggling repeat context flag. Optional field.
            toggling_repeat_context: nil,
            # Toggling repeat track flag. Optional field.
            toggling_repeat_track: nil,
            # Toggling shuffle flag. Optional field.
            toggling_shuffle: nil,
            # Transfering playback between devices. Optional field.
            transferring_playback: nil
          )
          end

          sig do
            override.returns(
              {
                interrupting_playback: T::Boolean,
                pausing: T::Boolean,
                published: T::Boolean,
                resuming: T::Boolean,
                seeking: T::Boolean,
                skipping_next: T::Boolean,
                skipping_prev: T::Boolean,
                toggling_repeat_context: T::Boolean,
                toggling_repeat_track: T::Boolean,
                toggling_shuffle: T::Boolean,
                transferring_playback: T::Boolean
              }
            )
          end
          def to_hash
          end
        end

        # The currently playing track or episode. Can be `null`.
        module Item
          extend Spotted::Internal::Type::Union

          Variants =
            T.type_alias { T.any(Spotted::TrackObject, Spotted::EpisodeObject) }

          sig do
            override.returns(
              T::Array[
                Spotted::Models::Me::PlayerGetStateResponse::Item::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
