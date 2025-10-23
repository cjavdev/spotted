# typed: strong

module Spotted
  module Models
    module Me
      module Player
        class QueueGetResponse < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Me::Player::QueueGetResponse,
                Spotted::Internal::AnyHash
              )
            end

          # The currently playing track or episode. Can be `null`.
          sig do
            returns(
              T.nilable(
                Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Variants
              )
            )
          end
          attr_reader :currently_playing

          sig do
            params(
              currently_playing:
                T.any(
                  Spotted::TrackObject::OrHash,
                  Spotted::EpisodeObject::OrHash
                )
            ).void
          end
          attr_writer :currently_playing

          # The tracks or episodes in the queue. Can be empty.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Spotted::Models::Me::Player::QueueGetResponse::Queue::Variants
                ]
              )
            )
          end
          attr_reader :queue

          sig do
            params(
              queue:
                T::Array[
                  T.any(
                    Spotted::TrackObject::OrHash,
                    Spotted::EpisodeObject::OrHash
                  )
                ]
            ).void
          end
          attr_writer :queue

          sig do
            params(
              currently_playing:
                T.any(
                  Spotted::TrackObject::OrHash,
                  Spotted::EpisodeObject::OrHash
                ),
              queue:
                T::Array[
                  T.any(
                    Spotted::TrackObject::OrHash,
                    Spotted::EpisodeObject::OrHash
                  )
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The currently playing track or episode. Can be `null`.
            currently_playing: nil,
            # The tracks or episodes in the queue. Can be empty.
            queue: nil
          )
          end

          sig do
            override.returns(
              {
                currently_playing:
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Variants,
                queue:
                  T::Array[
                    Spotted::Models::Me::Player::QueueGetResponse::Queue::Variants
                  ]
              }
            )
          end
          def to_hash
          end

          # The currently playing track or episode. Can be `null`.
          module CurrentlyPlaying
            extend Spotted::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(Spotted::TrackObject, Spotted::EpisodeObject)
              end

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying::Variants
                ]
              )
            end
            def self.variants
            end
          end

          module Queue
            extend Spotted::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(Spotted::TrackObject, Spotted::EpisodeObject)
              end

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::Me::Player::QueueGetResponse::Queue::Variants
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
end
