# typed: strong

module Spotted
  module Models
    module Me
      class PlayerListRecentlyPlayedResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::PlayerListRecentlyPlayedResponse,
              Spotted::Internal::AnyHash
            )
          end

        # The context the track was played from.
        sig { returns(T.nilable(Spotted::Me::ContextObject)) }
        attr_reader :context

        sig { params(context: Spotted::Me::ContextObject::OrHash).void }
        attr_writer :context

        # The date and time the track was played.
        sig { returns(T.nilable(Time)) }
        attr_reader :played_at

        sig { params(played_at: Time).void }
        attr_writer :played_at

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        # The track the user listened to.
        sig { returns(T.nilable(Spotted::TrackObject)) }
        attr_reader :track

        sig { params(track: Spotted::TrackObject::OrHash).void }
        attr_writer :track

        sig do
          params(
            context: Spotted::Me::ContextObject::OrHash,
            played_at: Time,
            published: T::Boolean,
            track: Spotted::TrackObject::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The context the track was played from.
          context: nil,
          # The date and time the track was played.
          played_at: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # The track the user listened to.
          track: nil
        )
        end

        sig do
          override.returns(
            {
              context: Spotted::Me::ContextObject,
              played_at: Time,
              published: T::Boolean,
              track: Spotted::TrackObject
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
