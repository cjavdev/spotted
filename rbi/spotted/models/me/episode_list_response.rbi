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

        sig do
          params(
            added_at: Time,
            episode: Spotted::EpisodeObject::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time the episode was saved. Timestamps are returned in ISO 8601
          # format as Coordinated Universal Time (UTC) with a zero offset:
          # YYYY-MM-DDTHH:MM:SSZ.
          added_at: nil,
          # Information about the episode.
          episode: nil
        )
        end

        sig do
          override.returns({ added_at: Time, episode: Spotted::EpisodeObject })
        end
        def to_hash
        end
      end
    end
  end
end
