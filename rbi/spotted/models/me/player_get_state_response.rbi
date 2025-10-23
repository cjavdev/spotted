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
        sig do
          returns(
            T.nilable(Spotted::Models::Me::PlayerGetStateResponse::Context)
          )
        end
        attr_reader :context

        sig do
          params(
            context:
              Spotted::Models::Me::PlayerGetStateResponse::Context::OrHash
          ).void
        end
        attr_writer :context

        # The object type of the currently playing item. Can be one of `track`, `episode`,
        # `ad` or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :currently_playing_type

        sig { params(currently_playing_type: String).void }
        attr_writer :currently_playing_type

        # The device that is currently active.
        sig do
          returns(
            T.nilable(Spotted::Models::Me::PlayerGetStateResponse::Device)
          )
        end
        attr_reader :device

        sig do
          params(
            device: Spotted::Models::Me::PlayerGetStateResponse::Device::OrHash
          ).void
        end
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
                Spotted::Models::Me::PlayerGetStateResponse::Item::Track::OrHash,
                Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::OrHash
              )
          ).void
        end
        attr_writer :item

        # Progress into the currently playing track or episode. Can be `null`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :progress_ms

        sig { params(progress_ms: Integer).void }
        attr_writer :progress_ms

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
            context:
              Spotted::Models::Me::PlayerGetStateResponse::Context::OrHash,
            currently_playing_type: String,
            device: Spotted::Models::Me::PlayerGetStateResponse::Device::OrHash,
            is_playing: T::Boolean,
            item:
              T.any(
                Spotted::Models::Me::PlayerGetStateResponse::Item::Track::OrHash,
                Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::OrHash
              ),
            progress_ms: Integer,
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
              context: Spotted::Models::Me::PlayerGetStateResponse::Context,
              currently_playing_type: String,
              device: Spotted::Models::Me::PlayerGetStateResponse::Device,
              is_playing: T::Boolean,
              item: Spotted::Models::Me::PlayerGetStateResponse::Item::Variants,
              progress_ms: Integer,
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

        class Context < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Me::PlayerGetStateResponse::Context,
                Spotted::Internal::AnyHash
              )
            end

          # External URLs for this context.
          sig do
            returns(
              T.nilable(
                Spotted::Models::Me::PlayerGetStateResponse::Context::ExternalURLs
              )
            )
          end
          attr_reader :external_urls

          sig do
            params(
              external_urls:
                Spotted::Models::Me::PlayerGetStateResponse::Context::ExternalURLs::OrHash
            ).void
          end
          attr_writer :external_urls

          # A link to the Web API endpoint providing full details of the track.
          sig { returns(T.nilable(String)) }
          attr_reader :href

          sig { params(href: String).void }
          attr_writer :href

          # The object type, e.g. "artist", "playlist", "album", "show".
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # context.
          sig { returns(T.nilable(String)) }
          attr_reader :uri

          sig { params(uri: String).void }
          attr_writer :uri

          # A Context Object. Can be `null`.
          sig do
            params(
              external_urls:
                Spotted::Models::Me::PlayerGetStateResponse::Context::ExternalURLs::OrHash,
              href: String,
              type: String,
              uri: String
            ).returns(T.attached_class)
          end
          def self.new(
            # External URLs for this context.
            external_urls: nil,
            # A link to the Web API endpoint providing full details of the track.
            href: nil,
            # The object type, e.g. "artist", "playlist", "album", "show".
            type: nil,
            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # context.
            uri: nil
          )
          end

          sig do
            override.returns(
              {
                external_urls:
                  Spotted::Models::Me::PlayerGetStateResponse::Context::ExternalURLs,
                href: String,
                type: String,
                uri: String
              }
            )
          end
          def to_hash
          end

          class ExternalURLs < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::PlayerGetStateResponse::Context::ExternalURLs,
                  Spotted::Internal::AnyHash
                )
              end

            # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            # object.
            sig { returns(T.nilable(String)) }
            attr_reader :spotify

            sig { params(spotify: String).void }
            attr_writer :spotify

            # External URLs for this context.
            sig { params(spotify: String).returns(T.attached_class) }
            def self.new(
              # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              # object.
              spotify: nil
            )
            end

            sig { override.returns({ spotify: String }) }
            def to_hash
            end
          end
        end

        class Device < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Me::PlayerGetStateResponse::Device,
                Spotted::Internal::AnyHash
              )
            end

          # The device ID. This ID is unique and persistent to some extent. However, this is
          # not guaranteed and any cached `device_id` should periodically be cleared out and
          # refetched as necessary.
          sig { returns(T.nilable(String)) }
          attr_accessor :id

          # If this device is the currently active device.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_active

          sig { params(is_active: T::Boolean).void }
          attr_writer :is_active

          # If this device is currently in a private session.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_private_session

          sig { params(is_private_session: T::Boolean).void }
          attr_writer :is_private_session

          # Whether controlling this device is restricted. At present if this is "true" then
          # no Web API commands will be accepted by this device.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_restricted

          sig { params(is_restricted: T::Boolean).void }
          attr_writer :is_restricted

          # A human-readable name for the device. Some devices have a name that the user can
          # configure (e.g. \"Loudest speaker\") and some devices have a generic name
          # associated with the manufacturer or device model.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # If this device can be used to set the volume.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :supports_volume

          sig { params(supports_volume: T::Boolean).void }
          attr_writer :supports_volume

          # Device type, such as "computer", "smartphone" or "speaker".
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # The current volume in percent.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :volume_percent

          # The device that is currently active.
          sig do
            params(
              id: T.nilable(String),
              is_active: T::Boolean,
              is_private_session: T::Boolean,
              is_restricted: T::Boolean,
              name: String,
              supports_volume: T::Boolean,
              type: String,
              volume_percent: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # The device ID. This ID is unique and persistent to some extent. However, this is
            # not guaranteed and any cached `device_id` should periodically be cleared out and
            # refetched as necessary.
            id: nil,
            # If this device is the currently active device.
            is_active: nil,
            # If this device is currently in a private session.
            is_private_session: nil,
            # Whether controlling this device is restricted. At present if this is "true" then
            # no Web API commands will be accepted by this device.
            is_restricted: nil,
            # A human-readable name for the device. Some devices have a name that the user can
            # configure (e.g. \"Loudest speaker\") and some devices have a generic name
            # associated with the manufacturer or device model.
            name: nil,
            # If this device can be used to set the volume.
            supports_volume: nil,
            # Device type, such as "computer", "smartphone" or "speaker".
            type: nil,
            # The current volume in percent.
            volume_percent: nil
          )
          end

          sig do
            override.returns(
              {
                id: T.nilable(String),
                is_active: T::Boolean,
                is_private_session: T::Boolean,
                is_restricted: T::Boolean,
                name: String,
                supports_volume: T::Boolean,
                type: String,
                volume_percent: T.nilable(Integer)
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
            T.type_alias do
              T.any(
                Spotted::Models::Me::PlayerGetStateResponse::Item::Track,
                Spotted::Models::Me::PlayerGetStateResponse::Item::Episode
              )
            end

          class Track < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track,
                  Spotted::Internal::AnyHash
                )
              end

            # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            # track.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # The album on which the track appears. The album object includes a link in `href`
            # to full information about the album.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album
                )
              )
            end
            attr_reader :album

            sig do
              params(
                album:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::OrHash
              ).void
            end
            attr_writer :album

            # The artists who performed the track. Each artist object includes a link in
            # `href` to more detailed information about the artist.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist
                  ]
                )
              )
            end
            attr_reader :artists

            sig do
              params(
                artists:
                  T::Array[
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::OrHash
                  ]
              ).void
            end
            attr_writer :artists

            # A list of the countries in which the track can be played, identified by their
            # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :available_markets

            sig { params(available_markets: T::Array[String]).void }
            attr_writer :available_markets

            # The disc number (usually `1` unless the album consists of more than one disc).
            sig { returns(T.nilable(Integer)) }
            attr_reader :disc_number

            sig { params(disc_number: Integer).void }
            attr_writer :disc_number

            # The track length in milliseconds.
            sig { returns(T.nilable(Integer)) }
            attr_reader :duration_ms

            sig { params(duration_ms: Integer).void }
            attr_writer :duration_ms

            # Whether or not the track has explicit lyrics ( `true` = yes it does; `false` =
            # no it does not OR unknown).
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :explicit

            sig { params(explicit: T::Boolean).void }
            attr_writer :explicit

            # Known external IDs for the track.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::ExternalIDs
                )
              )
            end
            attr_reader :external_ids

            sig do
              params(
                external_ids:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::ExternalIDs::OrHash
              ).void
            end
            attr_writer :external_ids

            # Known external URLs for this track.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::ExternalURLs
                )
              )
            end
            attr_reader :external_urls

            sig do
              params(
                external_urls:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::ExternalURLs::OrHash
              ).void
            end
            attr_writer :external_urls

            # A link to the Web API endpoint providing full details of the track.
            sig { returns(T.nilable(String)) }
            attr_reader :href

            sig { params(href: String).void }
            attr_writer :href

            # Whether or not the track is from a local file.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_local

            sig { params(is_local: T::Boolean).void }
            attr_writer :is_local

            # Part of the response when
            # [Track Relinking](/documentation/web-api/concepts/track-relinking) is applied.
            # If `true`, the track is playable in the given market. Otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_playable

            sig { params(is_playable: T::Boolean).void }
            attr_writer :is_playable

            # Part of the response when
            # [Track Relinking](/documentation/web-api/concepts/track-relinking) is applied,
            # and the requested track has been replaced with different track. The track in the
            # `linked_from` object contains information about the originally requested track.
            sig { returns(T.nilable(T.anything)) }
            attr_reader :linked_from

            sig { params(linked_from: T.anything).void }
            attr_writer :linked_from

            # The name of the track.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # The popularity of the track. The value will be between 0 and 100, with 100 being
            # the most popular.<br/>The popularity of a track is a value between 0 and 100,
            # with 100 being the most popular. The popularity is calculated by algorithm and
            # is based, in the most part, on the total number of plays the track has had and
            # how recent those plays are.<br/>Generally speaking, songs that are being played
            # a lot now will have a higher popularity than songs that were played a lot in the
            # past. Duplicate tracks (e.g. the same track from a single and an album) are
            # rated independently. Artist and album popularity is derived mathematically from
            # track popularity. _**Note**: the popularity value may lag actual popularity by a
            # few days: the value is not updated in real time._
            sig { returns(T.nilable(Integer)) }
            attr_reader :popularity

            sig { params(popularity: Integer).void }
            attr_writer :popularity

            # A link to a 30 second preview (MP3 format) of the track. Can be `null`
            sig { returns(T.nilable(String)) }
            attr_accessor :preview_url

            # Included in the response when a content restriction is applied.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Restrictions
                )
              )
            end
            attr_reader :restrictions

            sig do
              params(
                restrictions:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Restrictions::OrHash
              ).void
            end
            attr_writer :restrictions

            # The number of the track. If an album has several discs, the track number is the
            # number on the specified disc.
            sig { returns(T.nilable(Integer)) }
            attr_reader :track_number

            sig { params(track_number: Integer).void }
            attr_writer :track_number

            # The object type: "track".
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Type::TaggedSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Type::OrSymbol
              ).void
            end
            attr_writer :type

            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # track.
            sig { returns(T.nilable(String)) }
            attr_reader :uri

            sig { params(uri: String).void }
            attr_writer :uri

            sig do
              params(
                id: String,
                album:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::OrHash,
                artists:
                  T::Array[
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::OrHash
                  ],
                available_markets: T::Array[String],
                disc_number: Integer,
                duration_ms: Integer,
                explicit: T::Boolean,
                external_ids:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::ExternalIDs::OrHash,
                external_urls:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::ExternalURLs::OrHash,
                href: String,
                is_local: T::Boolean,
                is_playable: T::Boolean,
                linked_from: T.anything,
                name: String,
                popularity: Integer,
                preview_url: T.nilable(String),
                restrictions:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Restrictions::OrHash,
                track_number: Integer,
                type:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Type::OrSymbol,
                uri: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
              # track.
              id: nil,
              # The album on which the track appears. The album object includes a link in `href`
              # to full information about the album.
              album: nil,
              # The artists who performed the track. Each artist object includes a link in
              # `href` to more detailed information about the artist.
              artists: nil,
              # A list of the countries in which the track can be played, identified by their
              # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
              available_markets: nil,
              # The disc number (usually `1` unless the album consists of more than one disc).
              disc_number: nil,
              # The track length in milliseconds.
              duration_ms: nil,
              # Whether or not the track has explicit lyrics ( `true` = yes it does; `false` =
              # no it does not OR unknown).
              explicit: nil,
              # Known external IDs for the track.
              external_ids: nil,
              # Known external URLs for this track.
              external_urls: nil,
              # A link to the Web API endpoint providing full details of the track.
              href: nil,
              # Whether or not the track is from a local file.
              is_local: nil,
              # Part of the response when
              # [Track Relinking](/documentation/web-api/concepts/track-relinking) is applied.
              # If `true`, the track is playable in the given market. Otherwise `false`.
              is_playable: nil,
              # Part of the response when
              # [Track Relinking](/documentation/web-api/concepts/track-relinking) is applied,
              # and the requested track has been replaced with different track. The track in the
              # `linked_from` object contains information about the originally requested track.
              linked_from: nil,
              # The name of the track.
              name: nil,
              # The popularity of the track. The value will be between 0 and 100, with 100 being
              # the most popular.<br/>The popularity of a track is a value between 0 and 100,
              # with 100 being the most popular. The popularity is calculated by algorithm and
              # is based, in the most part, on the total number of plays the track has had and
              # how recent those plays are.<br/>Generally speaking, songs that are being played
              # a lot now will have a higher popularity than songs that were played a lot in the
              # past. Duplicate tracks (e.g. the same track from a single and an album) are
              # rated independently. Artist and album popularity is derived mathematically from
              # track popularity. _**Note**: the popularity value may lag actual popularity by a
              # few days: the value is not updated in real time._
              popularity: nil,
              # A link to a 30 second preview (MP3 format) of the track. Can be `null`
              preview_url: nil,
              # Included in the response when a content restriction is applied.
              restrictions: nil,
              # The number of the track. If an album has several discs, the track number is the
              # number on the specified disc.
              track_number: nil,
              # The object type: "track".
              type: nil,
              # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              # track.
              uri: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  album:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album,
                  artists:
                    T::Array[
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist
                    ],
                  available_markets: T::Array[String],
                  disc_number: Integer,
                  duration_ms: Integer,
                  explicit: T::Boolean,
                  external_ids:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::ExternalIDs,
                  external_urls:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::ExternalURLs,
                  href: String,
                  is_local: T::Boolean,
                  is_playable: T::Boolean,
                  linked_from: T.anything,
                  name: String,
                  popularity: Integer,
                  preview_url: T.nilable(String),
                  restrictions:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Restrictions,
                  track_number: Integer,
                  type:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Type::TaggedSymbol,
                  uri: String
                }
              )
            end
            def to_hash
            end

            class Album < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album,
                    Spotted::Internal::AnyHash
                  )
                end

              # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
              # album.
              sig { returns(String) }
              attr_accessor :id

              # The type of the album.
              sig do
                returns(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::AlbumType::TaggedSymbol
                )
              end
              attr_accessor :album_type

              # The artists of the album. Each artist object includes a link in `href` to more
              # detailed information about the artist.
              sig do
                returns(
                  T::Array[
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist
                  ]
                )
              end
              attr_accessor :artists

              # The markets in which the album is available:
              # [ISO 3166-1 alpha-2 country codes](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
              # _**NOTE**: an album is considered available in a market when at least 1 of its
              # tracks is available in that market._
              sig { returns(T::Array[String]) }
              attr_accessor :available_markets

              # Known external URLs for this album.
              sig do
                returns(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ExternalURLs
                )
              end
              attr_reader :external_urls

              sig do
                params(
                  external_urls:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ExternalURLs::OrHash
                ).void
              end
              attr_writer :external_urls

              # A link to the Web API endpoint providing full details of the album.
              sig { returns(String) }
              attr_accessor :href

              # The cover art for the album in various sizes, widest first.
              sig do
                returns(
                  T::Array[
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Image
                  ]
                )
              end
              attr_accessor :images

              # The name of the album. In case of an album takedown, the value may be an empty
              # string.
              sig { returns(String) }
              attr_accessor :name

              # The date the album was first released.
              sig { returns(String) }
              attr_accessor :release_date

              # The precision with which `release_date` value is known.
              sig do
                returns(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ReleaseDatePrecision::TaggedSymbol
                )
              end
              attr_accessor :release_date_precision

              # The number of tracks in the album.
              sig { returns(Integer) }
              attr_accessor :total_tracks

              # The object type.
              sig do
                returns(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              # album.
              sig { returns(String) }
              attr_accessor :uri

              # Included in the response when a content restriction is applied.
              sig do
                returns(
                  T.nilable(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions
                  )
                )
              end
              attr_reader :restrictions

              sig do
                params(
                  restrictions:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions::OrHash
                ).void
              end
              attr_writer :restrictions

              # The album on which the track appears. The album object includes a link in `href`
              # to full information about the album.
              sig do
                params(
                  id: String,
                  album_type:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::AlbumType::OrSymbol,
                  artists:
                    T::Array[
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::OrHash
                    ],
                  available_markets: T::Array[String],
                  external_urls:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ExternalURLs::OrHash,
                  href: String,
                  images:
                    T::Array[
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Image::OrHash
                    ],
                  name: String,
                  release_date: String,
                  release_date_precision:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ReleaseDatePrecision::OrSymbol,
                  total_tracks: Integer,
                  type:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Type::OrSymbol,
                  uri: String,
                  restrictions:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
                # album.
                id:,
                # The type of the album.
                album_type:,
                # The artists of the album. Each artist object includes a link in `href` to more
                # detailed information about the artist.
                artists:,
                # The markets in which the album is available:
                # [ISO 3166-1 alpha-2 country codes](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
                # _**NOTE**: an album is considered available in a market when at least 1 of its
                # tracks is available in that market._
                available_markets:,
                # Known external URLs for this album.
                external_urls:,
                # A link to the Web API endpoint providing full details of the album.
                href:,
                # The cover art for the album in various sizes, widest first.
                images:,
                # The name of the album. In case of an album takedown, the value may be an empty
                # string.
                name:,
                # The date the album was first released.
                release_date:,
                # The precision with which `release_date` value is known.
                release_date_precision:,
                # The number of tracks in the album.
                total_tracks:,
                # The object type.
                type:,
                # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                # album.
                uri:,
                # Included in the response when a content restriction is applied.
                restrictions: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    album_type:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::AlbumType::TaggedSymbol,
                    artists:
                      T::Array[
                        Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist
                      ],
                    available_markets: T::Array[String],
                    external_urls:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ExternalURLs,
                    href: String,
                    images:
                      T::Array[
                        Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Image
                      ],
                    name: String,
                    release_date: String,
                    release_date_precision:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ReleaseDatePrecision::TaggedSymbol,
                    total_tracks: Integer,
                    type:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Type::TaggedSymbol,
                    uri: String,
                    restrictions:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions
                  }
                )
              end
              def to_hash
              end

              # The type of the album.
              module AlbumType
                extend Spotted::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::AlbumType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ALBUM =
                  T.let(
                    :album,
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::AlbumType::TaggedSymbol
                  )
                SINGLE =
                  T.let(
                    :single,
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::AlbumType::TaggedSymbol
                  )
                COMPILATION =
                  T.let(
                    :compilation,
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::AlbumType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::AlbumType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Artist < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
                # artist.
                sig { returns(T.nilable(String)) }
                attr_reader :id

                sig { params(id: String).void }
                attr_writer :id

                # Known external URLs for this artist.
                sig do
                  returns(
                    T.nilable(
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::ExternalURLs
                    )
                  )
                end
                attr_reader :external_urls

                sig do
                  params(
                    external_urls:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::ExternalURLs::OrHash
                  ).void
                end
                attr_writer :external_urls

                # A link to the Web API endpoint providing full details of the artist.
                sig { returns(T.nilable(String)) }
                attr_reader :href

                sig { params(href: String).void }
                attr_writer :href

                # The name of the artist.
                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                # The object type.
                sig do
                  returns(
                    T.nilable(
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::Type::TaggedSymbol
                    )
                  )
                end
                attr_reader :type

                sig do
                  params(
                    type:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::Type::OrSymbol
                  ).void
                end
                attr_writer :type

                # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                # artist.
                sig { returns(T.nilable(String)) }
                attr_reader :uri

                sig { params(uri: String).void }
                attr_writer :uri

                sig do
                  params(
                    id: String,
                    external_urls:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::ExternalURLs::OrHash,
                    href: String,
                    name: String,
                    type:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::Type::OrSymbol,
                    uri: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # artist.
                  id: nil,
                  # Known external URLs for this artist.
                  external_urls: nil,
                  # A link to the Web API endpoint providing full details of the artist.
                  href: nil,
                  # The name of the artist.
                  name: nil,
                  # The object type.
                  type: nil,
                  # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # artist.
                  uri: nil
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      external_urls:
                        Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::ExternalURLs,
                      href: String,
                      name: String,
                      type:
                        Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::Type::TaggedSymbol,
                      uri: String
                    }
                  )
                end
                def to_hash
                end

                class ExternalURLs < Spotted::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::ExternalURLs,
                        Spotted::Internal::AnyHash
                      )
                    end

                  # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # object.
                  sig { returns(T.nilable(String)) }
                  attr_reader :spotify

                  sig { params(spotify: String).void }
                  attr_writer :spotify

                  # Known external URLs for this artist.
                  sig { params(spotify: String).returns(T.attached_class) }
                  def self.new(
                    # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                    # object.
                    spotify: nil
                  )
                  end

                  sig { override.returns({ spotify: String }) }
                  def to_hash
                  end
                end

                # The object type.
                module Type
                  extend Spotted::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ARTIST =
                    T.let(
                      :artist,
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Artist::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class ExternalURLs < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ExternalURLs,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                # object.
                sig { returns(T.nilable(String)) }
                attr_reader :spotify

                sig { params(spotify: String).void }
                attr_writer :spotify

                # Known external URLs for this album.
                sig { params(spotify: String).returns(T.attached_class) }
                def self.new(
                  # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # object.
                  spotify: nil
                )
                end

                sig { override.returns({ spotify: String }) }
                def to_hash
                end
              end

              class Image < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Image,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The image height in pixels.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :height

                # The source URL of the image.
                sig { returns(String) }
                attr_accessor :url

                # The image width in pixels.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :width

                sig do
                  params(
                    height: T.nilable(Integer),
                    url: String,
                    width: T.nilable(Integer)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The image height in pixels.
                  height:,
                  # The source URL of the image.
                  url:,
                  # The image width in pixels.
                  width:
                )
                end

                sig do
                  override.returns(
                    {
                      height: T.nilable(Integer),
                      url: String,
                      width: T.nilable(Integer)
                    }
                  )
                end
                def to_hash
                end
              end

              # The precision with which `release_date` value is known.
              module ReleaseDatePrecision
                extend Spotted::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ReleaseDatePrecision
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                YEAR =
                  T.let(
                    :year,
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ReleaseDatePrecision::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ReleaseDatePrecision::TaggedSymbol
                  )
                DAY =
                  T.let(
                    :day,
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ReleaseDatePrecision::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::ReleaseDatePrecision::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # The object type.
              module Type
                extend Spotted::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ALBUM =
                  T.let(
                    :album,
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Restrictions < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The reason for the restriction. Albums may be restricted if the content is not
                # available in a given market, to the user's subscription type, or when the user's
                # account is set to not play explicit content. Additional reasons may be added in
                # the future.
                sig do
                  returns(
                    T.nilable(
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions::Reason::TaggedSymbol
                    )
                  )
                end
                attr_reader :reason

                sig do
                  params(
                    reason:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions::Reason::OrSymbol
                  ).void
                end
                attr_writer :reason

                # Included in the response when a content restriction is applied.
                sig do
                  params(
                    reason:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions::Reason::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The reason for the restriction. Albums may be restricted if the content is not
                  # available in a given market, to the user's subscription type, or when the user's
                  # account is set to not play explicit content. Additional reasons may be added in
                  # the future.
                  reason: nil
                )
                end

                sig do
                  override.returns(
                    {
                      reason:
                        Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions::Reason::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # The reason for the restriction. Albums may be restricted if the content is not
                # available in a given market, to the user's subscription type, or when the user's
                # account is set to not play explicit content. Additional reasons may be added in
                # the future.
                module Reason
                  extend Spotted::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions::Reason
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  MARKET =
                    T.let(
                      :market,
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions::Reason::TaggedSymbol
                    )
                  PRODUCT =
                    T.let(
                      :product,
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions::Reason::TaggedSymbol
                    )
                  EXPLICIT =
                    T.let(
                      :explicit,
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions::Reason::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Album::Restrictions::Reason::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class Artist < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist,
                    Spotted::Internal::AnyHash
                  )
                end

              # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
              # artist.
              sig { returns(T.nilable(String)) }
              attr_reader :id

              sig { params(id: String).void }
              attr_writer :id

              # Known external URLs for this artist.
              sig do
                returns(
                  T.nilable(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::ExternalURLs
                  )
                )
              end
              attr_reader :external_urls

              sig do
                params(
                  external_urls:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::ExternalURLs::OrHash
                ).void
              end
              attr_writer :external_urls

              # A link to the Web API endpoint providing full details of the artist.
              sig { returns(T.nilable(String)) }
              attr_reader :href

              sig { params(href: String).void }
              attr_writer :href

              # The name of the artist.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # The object type.
              sig do
                returns(
                  T.nilable(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::Type::TaggedSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::Type::OrSymbol
                ).void
              end
              attr_writer :type

              # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              # artist.
              sig { returns(T.nilable(String)) }
              attr_reader :uri

              sig { params(uri: String).void }
              attr_writer :uri

              sig do
                params(
                  id: String,
                  external_urls:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::ExternalURLs::OrHash,
                  href: String,
                  name: String,
                  type:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::Type::OrSymbol,
                  uri: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
                # artist.
                id: nil,
                # Known external URLs for this artist.
                external_urls: nil,
                # A link to the Web API endpoint providing full details of the artist.
                href: nil,
                # The name of the artist.
                name: nil,
                # The object type.
                type: nil,
                # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                # artist.
                uri: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    external_urls:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::ExternalURLs,
                    href: String,
                    name: String,
                    type:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::Type::TaggedSymbol,
                    uri: String
                  }
                )
              end
              def to_hash
              end

              class ExternalURLs < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::ExternalURLs,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                # object.
                sig { returns(T.nilable(String)) }
                attr_reader :spotify

                sig { params(spotify: String).void }
                attr_writer :spotify

                # Known external URLs for this artist.
                sig { params(spotify: String).returns(T.attached_class) }
                def self.new(
                  # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # object.
                  spotify: nil
                )
                end

                sig { override.returns({ spotify: String }) }
                def to_hash
                end
              end

              # The object type.
              module Type
                extend Spotted::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ARTIST =
                  T.let(
                    :artist,
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Artist::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ExternalIDs < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::ExternalIDs,
                    Spotted::Internal::AnyHash
                  )
                end

              # [International Article Number](http://en.wikipedia.org/wiki/International_Article_Number_%28EAN%29)
              sig { returns(T.nilable(String)) }
              attr_reader :ean

              sig { params(ean: String).void }
              attr_writer :ean

              # [International Standard Recording Code](http://en.wikipedia.org/wiki/International_Standard_Recording_Code)
              sig { returns(T.nilable(String)) }
              attr_reader :isrc

              sig { params(isrc: String).void }
              attr_writer :isrc

              # [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
              sig { returns(T.nilable(String)) }
              attr_reader :upc

              sig { params(upc: String).void }
              attr_writer :upc

              # Known external IDs for the track.
              sig do
                params(ean: String, isrc: String, upc: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # [International Article Number](http://en.wikipedia.org/wiki/International_Article_Number_%28EAN%29)
                ean: nil,
                # [International Standard Recording Code](http://en.wikipedia.org/wiki/International_Standard_Recording_Code)
                isrc: nil,
                # [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
                upc: nil
              )
              end

              sig do
                override.returns({ ean: String, isrc: String, upc: String })
              end
              def to_hash
              end
            end

            class ExternalURLs < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::ExternalURLs,
                    Spotted::Internal::AnyHash
                  )
                end

              # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              # object.
              sig { returns(T.nilable(String)) }
              attr_reader :spotify

              sig { params(spotify: String).void }
              attr_writer :spotify

              # Known external URLs for this track.
              sig { params(spotify: String).returns(T.attached_class) }
              def self.new(
                # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                # object.
                spotify: nil
              )
              end

              sig { override.returns({ spotify: String }) }
              def to_hash
              end
            end

            class Restrictions < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Restrictions,
                    Spotted::Internal::AnyHash
                  )
                end

              # The reason for the restriction. Supported values:
              #
              # - `market` - The content item is not available in the given market.
              # - `product` - The content item is not available for the user's subscription
              #   type.
              # - `explicit` - The content item is explicit and the user's account is set to not
              #   play explicit content.
              #
              # Additional reasons may be added in the future. **Note**: If you use this field,
              # make sure that your application safely handles unknown values.
              sig { returns(T.nilable(String)) }
              attr_reader :reason

              sig { params(reason: String).void }
              attr_writer :reason

              # Included in the response when a content restriction is applied.
              sig { params(reason: String).returns(T.attached_class) }
              def self.new(
                # The reason for the restriction. Supported values:
                #
                # - `market` - The content item is not available in the given market.
                # - `product` - The content item is not available for the user's subscription
                #   type.
                # - `explicit` - The content item is explicit and the user's account is set to not
                #   play explicit content.
                #
                # Additional reasons may be added in the future. **Note**: If you use this field,
                # make sure that your application safely handles unknown values.
                reason: nil
              )
              end

              sig { override.returns({ reason: String }) }
              def to_hash
              end
            end

            # The object type: "track".
            module Type
              extend Spotted::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TRACK =
                T.let(
                  :track,
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Track::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Episode < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode,
                  Spotted::Internal::AnyHash
                )
              end

            # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            # episode.
            sig { returns(String) }
            attr_accessor :id

            # A URL to a 30 second preview (MP3 format) of the episode. `null` if not
            # available.
            sig { returns(T.nilable(String)) }
            attr_accessor :audio_preview_url

            # A description of the episode. HTML tags are stripped away from this field, use
            # `html_description` field in case HTML tags are needed.
            sig { returns(String) }
            attr_accessor :description

            # The episode length in milliseconds.
            sig { returns(Integer) }
            attr_accessor :duration_ms

            # Whether or not the episode has explicit content (true = yes it does; false = no
            # it does not OR unknown).
            sig { returns(T::Boolean) }
            attr_accessor :explicit

            # External URLs for this episode.
            sig do
              returns(
                Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ExternalURLs
              )
            end
            attr_reader :external_urls

            sig do
              params(
                external_urls:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ExternalURLs::OrHash
              ).void
            end
            attr_writer :external_urls

            # A link to the Web API endpoint providing full details of the episode.
            sig { returns(String) }
            attr_accessor :href

            # A description of the episode. This field may contain HTML tags.
            sig { returns(String) }
            attr_accessor :html_description

            # The cover art for the episode in various sizes, widest first.
            sig do
              returns(
                T::Array[
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Image
                ]
              )
            end
            attr_accessor :images

            # True if the episode is hosted outside of Spotify's CDN.
            sig { returns(T::Boolean) }
            attr_accessor :is_externally_hosted

            # True if the episode is playable in the given market. Otherwise false.
            sig { returns(T::Boolean) }
            attr_accessor :is_playable

            # A list of the languages used in the episode, identified by their
            # [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
            sig { returns(T::Array[String]) }
            attr_accessor :languages

            # The name of the episode.
            sig { returns(String) }
            attr_accessor :name

            # The date the episode was first released, for example `"1981-12-15"`. Depending
            # on the precision, it might be shown as `"1981"` or `"1981-12"`.
            sig { returns(String) }
            attr_accessor :release_date

            # The precision with which `release_date` value is known.
            sig do
              returns(
                Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ReleaseDatePrecision::TaggedSymbol
              )
            end
            attr_accessor :release_date_precision

            # The show on which the episode belongs.
            sig do
              returns(
                Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show
              )
            end
            attr_reader :show

            sig do
              params(
                show:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::OrHash
              ).void
            end
            attr_writer :show

            # The object type.
            sig { returns(Symbol) }
            attr_accessor :type

            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # episode.
            sig { returns(String) }
            attr_accessor :uri

            # The language used in the episode, identified by a
            # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
            # and might be removed in the future. Please use the `languages` field instead.
            sig { returns(T.nilable(String)) }
            attr_reader :language

            sig { params(language: String).void }
            attr_writer :language

            # Included in the response when a content restriction is applied.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Restrictions
                )
              )
            end
            attr_reader :restrictions

            sig do
              params(
                restrictions:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Restrictions::OrHash
              ).void
            end
            attr_writer :restrictions

            # The user's most recent position in the episode. Set if the supplied access token
            # is a user token and has the scope 'user-read-playback-position'.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ResumePoint
                )
              )
            end
            attr_reader :resume_point

            sig do
              params(
                resume_point:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ResumePoint::OrHash
              ).void
            end
            attr_writer :resume_point

            sig do
              params(
                id: String,
                audio_preview_url: T.nilable(String),
                description: String,
                duration_ms: Integer,
                explicit: T::Boolean,
                external_urls:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ExternalURLs::OrHash,
                href: String,
                html_description: String,
                images:
                  T::Array[
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Image::OrHash
                  ],
                is_externally_hosted: T::Boolean,
                is_playable: T::Boolean,
                languages: T::Array[String],
                name: String,
                release_date: String,
                release_date_precision:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ReleaseDatePrecision::OrSymbol,
                show:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::OrHash,
                uri: String,
                language: String,
                restrictions:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Restrictions::OrHash,
                resume_point:
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ResumePoint::OrHash,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
              # episode.
              id:,
              # A URL to a 30 second preview (MP3 format) of the episode. `null` if not
              # available.
              audio_preview_url:,
              # A description of the episode. HTML tags are stripped away from this field, use
              # `html_description` field in case HTML tags are needed.
              description:,
              # The episode length in milliseconds.
              duration_ms:,
              # Whether or not the episode has explicit content (true = yes it does; false = no
              # it does not OR unknown).
              explicit:,
              # External URLs for this episode.
              external_urls:,
              # A link to the Web API endpoint providing full details of the episode.
              href:,
              # A description of the episode. This field may contain HTML tags.
              html_description:,
              # The cover art for the episode in various sizes, widest first.
              images:,
              # True if the episode is hosted outside of Spotify's CDN.
              is_externally_hosted:,
              # True if the episode is playable in the given market. Otherwise false.
              is_playable:,
              # A list of the languages used in the episode, identified by their
              # [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
              languages:,
              # The name of the episode.
              name:,
              # The date the episode was first released, for example `"1981-12-15"`. Depending
              # on the precision, it might be shown as `"1981"` or `"1981-12"`.
              release_date:,
              # The precision with which `release_date` value is known.
              release_date_precision:,
              # The show on which the episode belongs.
              show:,
              # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              # episode.
              uri:,
              # The language used in the episode, identified by a
              # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
              # and might be removed in the future. Please use the `languages` field instead.
              language: nil,
              # Included in the response when a content restriction is applied.
              restrictions: nil,
              # The user's most recent position in the episode. Set if the supplied access token
              # is a user token and has the scope 'user-read-playback-position'.
              resume_point: nil,
              # The object type.
              type: :episode
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  audio_preview_url: T.nilable(String),
                  description: String,
                  duration_ms: Integer,
                  explicit: T::Boolean,
                  external_urls:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ExternalURLs,
                  href: String,
                  html_description: String,
                  images:
                    T::Array[
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Image
                    ],
                  is_externally_hosted: T::Boolean,
                  is_playable: T::Boolean,
                  languages: T::Array[String],
                  name: String,
                  release_date: String,
                  release_date_precision:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ReleaseDatePrecision::TaggedSymbol,
                  show:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show,
                  type: Symbol,
                  uri: String,
                  language: String,
                  restrictions:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Restrictions,
                  resume_point:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ResumePoint
                }
              )
            end
            def to_hash
            end

            class ExternalURLs < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ExternalURLs,
                    Spotted::Internal::AnyHash
                  )
                end

              # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              # object.
              sig { returns(T.nilable(String)) }
              attr_reader :spotify

              sig { params(spotify: String).void }
              attr_writer :spotify

              # External URLs for this episode.
              sig { params(spotify: String).returns(T.attached_class) }
              def self.new(
                # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                # object.
                spotify: nil
              )
              end

              sig { override.returns({ spotify: String }) }
              def to_hash
              end
            end

            class Image < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Image,
                    Spotted::Internal::AnyHash
                  )
                end

              # The image height in pixels.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :height

              # The source URL of the image.
              sig { returns(String) }
              attr_accessor :url

              # The image width in pixels.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :width

              sig do
                params(
                  height: T.nilable(Integer),
                  url: String,
                  width: T.nilable(Integer)
                ).returns(T.attached_class)
              end
              def self.new(
                # The image height in pixels.
                height:,
                # The source URL of the image.
                url:,
                # The image width in pixels.
                width:
              )
              end

              sig do
                override.returns(
                  {
                    height: T.nilable(Integer),
                    url: String,
                    width: T.nilable(Integer)
                  }
                )
              end
              def to_hash
              end
            end

            # The precision with which `release_date` value is known.
            module ReleaseDatePrecision
              extend Spotted::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ReleaseDatePrecision
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              YEAR =
                T.let(
                  :year,
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ReleaseDatePrecision::TaggedSymbol
                )
              MONTH =
                T.let(
                  :month,
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ReleaseDatePrecision::TaggedSymbol
                )
              DAY =
                T.let(
                  :day,
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ReleaseDatePrecision::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ReleaseDatePrecision::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Show < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show,
                    Spotted::Internal::AnyHash
                  )
                end

              # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
              sig { returns(String) }
              attr_accessor :id

              # A list of the countries in which the show can be played, identified by their
              # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
              sig { returns(T::Array[String]) }
              attr_accessor :available_markets

              # The copyright statements of the show.
              sig do
                returns(
                  T::Array[
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Copyright
                  ]
                )
              end
              attr_accessor :copyrights

              # A description of the show. HTML tags are stripped away from this field, use
              # `html_description` field in case HTML tags are needed.
              sig { returns(String) }
              attr_accessor :description

              # Whether or not the show has explicit content (true = yes it does; false = no it
              # does not OR unknown).
              sig { returns(T::Boolean) }
              attr_accessor :explicit

              # External URLs for this show.
              sig do
                returns(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::ExternalURLs
                )
              end
              attr_reader :external_urls

              sig do
                params(
                  external_urls:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::ExternalURLs::OrHash
                ).void
              end
              attr_writer :external_urls

              # A link to the Web API endpoint providing full details of the show.
              sig { returns(String) }
              attr_accessor :href

              # A description of the show. This field may contain HTML tags.
              sig { returns(String) }
              attr_accessor :html_description

              # The cover art for the show in various sizes, widest first.
              sig do
                returns(
                  T::Array[
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Image
                  ]
                )
              end
              attr_accessor :images

              # True if all of the shows episodes are hosted outside of Spotify's CDN. This
              # field might be `null` in some cases.
              sig { returns(T::Boolean) }
              attr_accessor :is_externally_hosted

              # A list of the languages used in the show, identified by their
              # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
              sig { returns(T::Array[String]) }
              attr_accessor :languages

              # The media type of the show.
              sig { returns(String) }
              attr_accessor :media_type

              # The name of the episode.
              sig { returns(String) }
              attr_accessor :name

              # The publisher of the show.
              sig { returns(String) }
              attr_accessor :publisher

              # The total number of episodes in the show.
              sig { returns(Integer) }
              attr_accessor :total_episodes

              # The object type.
              sig do
                returns(
                  Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
              # show.
              sig { returns(String) }
              attr_accessor :uri

              # The show on which the episode belongs.
              sig do
                params(
                  id: String,
                  available_markets: T::Array[String],
                  copyrights:
                    T::Array[
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Copyright::OrHash
                    ],
                  description: String,
                  explicit: T::Boolean,
                  external_urls:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::ExternalURLs::OrHash,
                  href: String,
                  html_description: String,
                  images:
                    T::Array[
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Image::OrHash
                    ],
                  is_externally_hosted: T::Boolean,
                  languages: T::Array[String],
                  media_type: String,
                  name: String,
                  publisher: String,
                  total_episodes: Integer,
                  type:
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Type::OrSymbol,
                  uri: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
                id:,
                # A list of the countries in which the show can be played, identified by their
                # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
                available_markets:,
                # The copyright statements of the show.
                copyrights:,
                # A description of the show. HTML tags are stripped away from this field, use
                # `html_description` field in case HTML tags are needed.
                description:,
                # Whether or not the show has explicit content (true = yes it does; false = no it
                # does not OR unknown).
                explicit:,
                # External URLs for this show.
                external_urls:,
                # A link to the Web API endpoint providing full details of the show.
                href:,
                # A description of the show. This field may contain HTML tags.
                html_description:,
                # The cover art for the show in various sizes, widest first.
                images:,
                # True if all of the shows episodes are hosted outside of Spotify's CDN. This
                # field might be `null` in some cases.
                is_externally_hosted:,
                # A list of the languages used in the show, identified by their
                # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
                languages:,
                # The media type of the show.
                media_type:,
                # The name of the episode.
                name:,
                # The publisher of the show.
                publisher:,
                # The total number of episodes in the show.
                total_episodes:,
                # The object type.
                type:,
                # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
                # show.
                uri:
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    available_markets: T::Array[String],
                    copyrights:
                      T::Array[
                        Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Copyright
                      ],
                    description: String,
                    explicit: T::Boolean,
                    external_urls:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::ExternalURLs,
                    href: String,
                    html_description: String,
                    images:
                      T::Array[
                        Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Image
                      ],
                    is_externally_hosted: T::Boolean,
                    languages: T::Array[String],
                    media_type: String,
                    name: String,
                    publisher: String,
                    total_episodes: Integer,
                    type:
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Type::TaggedSymbol,
                    uri: String
                  }
                )
              end
              def to_hash
              end

              class Copyright < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Copyright,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The copyright text for this content.
                sig { returns(T.nilable(String)) }
                attr_reader :text

                sig { params(text: String).void }
                attr_writer :text

                # The type of copyright: `C` = the copyright, `P` = the sound recording
                # (performance) copyright.
                sig { returns(T.nilable(String)) }
                attr_reader :type

                sig { params(type: String).void }
                attr_writer :type

                sig do
                  params(text: String, type: String).returns(T.attached_class)
                end
                def self.new(
                  # The copyright text for this content.
                  text: nil,
                  # The type of copyright: `C` = the copyright, `P` = the sound recording
                  # (performance) copyright.
                  type: nil
                )
                end

                sig { override.returns({ text: String, type: String }) }
                def to_hash
                end
              end

              class ExternalURLs < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::ExternalURLs,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                # object.
                sig { returns(T.nilable(String)) }
                attr_reader :spotify

                sig { params(spotify: String).void }
                attr_writer :spotify

                # External URLs for this show.
                sig { params(spotify: String).returns(T.attached_class) }
                def self.new(
                  # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
                  # object.
                  spotify: nil
                )
                end

                sig { override.returns({ spotify: String }) }
                def to_hash
                end
              end

              class Image < Spotted::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Image,
                      Spotted::Internal::AnyHash
                    )
                  end

                # The image height in pixels.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :height

                # The source URL of the image.
                sig { returns(String) }
                attr_accessor :url

                # The image width in pixels.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :width

                sig do
                  params(
                    height: T.nilable(Integer),
                    url: String,
                    width: T.nilable(Integer)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The image height in pixels.
                  height:,
                  # The source URL of the image.
                  url:,
                  # The image width in pixels.
                  width:
                )
                end

                sig do
                  override.returns(
                    {
                      height: T.nilable(Integer),
                      url: String,
                      width: T.nilable(Integer)
                    }
                  )
                end
                def to_hash
                end
              end

              # The object type.
              module Type
                extend Spotted::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SHOW =
                  T.let(
                    :show,
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Show::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Restrictions < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::Restrictions,
                    Spotted::Internal::AnyHash
                  )
                end

              # The reason for the restriction. Supported values:
              #
              # - `market` - The content item is not available in the given market.
              # - `product` - The content item is not available for the user's subscription
              #   type.
              # - `explicit` - The content item is explicit and the user's account is set to not
              #   play explicit content.
              #
              # Additional reasons may be added in the future. **Note**: If you use this field,
              # make sure that your application safely handles unknown values.
              sig { returns(T.nilable(String)) }
              attr_reader :reason

              sig { params(reason: String).void }
              attr_writer :reason

              # Included in the response when a content restriction is applied.
              sig { params(reason: String).returns(T.attached_class) }
              def self.new(
                # The reason for the restriction. Supported values:
                #
                # - `market` - The content item is not available in the given market.
                # - `product` - The content item is not available for the user's subscription
                #   type.
                # - `explicit` - The content item is explicit and the user's account is set to not
                #   play explicit content.
                #
                # Additional reasons may be added in the future. **Note**: If you use this field,
                # make sure that your application safely handles unknown values.
                reason: nil
              )
              end

              sig { override.returns({ reason: String }) }
              def to_hash
              end
            end

            class ResumePoint < Spotted::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Spotted::Models::Me::PlayerGetStateResponse::Item::Episode::ResumePoint,
                    Spotted::Internal::AnyHash
                  )
                end

              # Whether or not the episode has been fully played by the user.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :fully_played

              sig { params(fully_played: T::Boolean).void }
              attr_writer :fully_played

              # The user's most recent position in the episode in milliseconds.
              sig { returns(T.nilable(Integer)) }
              attr_reader :resume_position_ms

              sig { params(resume_position_ms: Integer).void }
              attr_writer :resume_position_ms

              # The user's most recent position in the episode. Set if the supplied access token
              # is a user token and has the scope 'user-read-playback-position'.
              sig do
                params(
                  fully_played: T::Boolean,
                  resume_position_ms: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # Whether or not the episode has been fully played by the user.
                fully_played: nil,
                # The user's most recent position in the episode in milliseconds.
                resume_position_ms: nil
              )
              end

              sig do
                override.returns(
                  { fully_played: T::Boolean, resume_position_ms: Integer }
                )
              end
              def to_hash
              end
            end
          end

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
