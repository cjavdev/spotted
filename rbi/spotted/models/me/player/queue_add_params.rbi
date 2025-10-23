# typed: strong

module Spotted
  module Models
    module Me
      module Player
        class QueueAddParams < Spotted::Internal::Type::BaseModel
          extend Spotted::Internal::Type::RequestParameters::Converter
          include Spotted::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Spotted::Me::Player::QueueAddParams,
                Spotted::Internal::AnyHash
              )
            end

          # The uri of the item to add to the queue. Must be a track or an episode uri.
          sig { returns(String) }
          attr_accessor :uri

          # The id of the device this command is targeting. If not supplied, the user's
          # currently active device is the target.
          sig { returns(T.nilable(String)) }
          attr_reader :device_id

          sig { params(device_id: String).void }
          attr_writer :device_id

          sig do
            params(
              uri: String,
              device_id: String,
              request_options: Spotted::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The uri of the item to add to the queue. Must be a track or an episode uri.
            uri:,
            # The id of the device this command is targeting. If not supplied, the user's
            # currently active device is the target.
            device_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                uri: String,
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
end
