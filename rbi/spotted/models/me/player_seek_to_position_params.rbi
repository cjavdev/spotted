# typed: strong

module Spotted
  module Models
    module Me
      class PlayerSeekToPositionParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Me::PlayerSeekToPositionParams,
              Spotted::Internal::AnyHash
            )
          end

        # The position in milliseconds to seek to. Must be a positive number. Passing in a
        # position that is greater than the length of the track will cause the player to
        # start playing the next song.
        sig { returns(Integer) }
        attr_accessor :position_ms

        # The id of the device this command is targeting. If not supplied, the user's
        # currently active device is the target.
        sig { returns(T.nilable(String)) }
        attr_reader :device_id

        sig { params(device_id: String).void }
        attr_writer :device_id

        sig do
          params(
            position_ms: Integer,
            device_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
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

        sig do
          override.returns(
            {
              position_ms: Integer,
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
