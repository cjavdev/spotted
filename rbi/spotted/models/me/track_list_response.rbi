# typed: strong

module Spotted
  module Models
    module Me
      class TrackListResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::TrackListResponse,
              Spotted::Internal::AnyHash
            )
          end

        # The date and time the track was saved. Timestamps are returned in ISO 8601
        # format as Coordinated Universal Time (UTC) with a zero offset:
        # YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example, the date/time of an
        # album release), an additional field indicates the precision; see for example,
        # release_date in an album object.
        sig { returns(T.nilable(Time)) }
        attr_reader :added_at

        sig { params(added_at: Time).void }
        attr_writer :added_at

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        # Information about the track.
        sig { returns(T.nilable(Spotted::TrackObject)) }
        attr_reader :track

        sig { params(track: Spotted::TrackObject::OrHash).void }
        attr_writer :track

        sig do
          params(
            added_at: Time,
            published: T::Boolean,
            track: Spotted::TrackObject::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time the track was saved. Timestamps are returned in ISO 8601
          # format as Coordinated Universal Time (UTC) with a zero offset:
          # YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example, the date/time of an
          # album release), an additional field indicates the precision; see for example,
          # release_date in an album object.
          added_at: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # Information about the track.
          track: nil
        )
        end

        sig do
          override.returns(
            {
              added_at: Time,
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
