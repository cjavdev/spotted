# typed: strong

module Spotted
  module Models
    module Me
      class PlayerToggleShuffleParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Me::PlayerToggleShuffleParams,
              Spotted::Internal::AnyHash
            )
          end

        # **true** : Shuffle user's playback.<br/> **false** : Do not shuffle user's
        # playback.
        sig { returns(T::Boolean) }
        attr_accessor :state

        # The id of the device this command is targeting. If not supplied, the user's
        # currently active device is the target.
        sig { returns(T.nilable(String)) }
        attr_reader :device_id

        sig { params(device_id: String).void }
        attr_writer :device_id

        sig do
          params(
            state: T::Boolean,
            device_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # **true** : Shuffle user's playback.<br/> **false** : Do not shuffle user's
          # playback.
          state:,
          # The id of the device this command is targeting. If not supplied, the user's
          # currently active device is the target.
          device_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              state: T::Boolean,
              device_id: String,
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
