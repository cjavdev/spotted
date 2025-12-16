# typed: strong

module Spotted
  module Models
    module Me
      class EpisodeListResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::EpisodeListResponse,
              Spotted::Internal::AnyHash
            )
          end

        # The date and time the episode was saved. Timestamps are returned in ISO 8601
        # format as Coordinated Universal Time (UTC) with a zero offset:
        # YYYY-MM-DDTHH:MM:SSZ.
        sig { returns(T.nilable(Time)) }
        attr_reader :added_at

        sig { params(added_at: Time).void }
        attr_writer :added_at

        # Information about the episode.
        sig { returns(T.nilable(Spotted::EpisodeObject)) }
        attr_reader :episode

        sig { params(episode: Spotted::EpisodeObject::OrHash).void }
        attr_writer :episode

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        sig do
          params(
            added_at: Time,
            episode: Spotted::EpisodeObject::OrHash,
            published: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time the episode was saved. Timestamps are returned in ISO 8601
          # format as Coordinated Universal Time (UTC) with a zero offset:
          # YYYY-MM-DDTHH:MM:SSZ.
          added_at: nil,
          # Information about the episode.
          episode: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil
        )
        end

        sig do
          override.returns(
            {
              added_at: Time,
              episode: Spotted::EpisodeObject,
              published: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
