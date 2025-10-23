# typed: strong

module Spotted
  module Models
    module Me
      class PlayerGetDevicesResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::PlayerGetDevicesResponse,
              Spotted::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[Spotted::Models::Me::PlayerGetDevicesResponse::Device]
          )
        end
        attr_accessor :devices

        sig do
          params(
            devices:
              T::Array[
                Spotted::Models::Me::PlayerGetDevicesResponse::Device::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(devices:)
        end

        sig do
          override.returns(
            {
              devices:
                T::Array[Spotted::Models::Me::PlayerGetDevicesResponse::Device]
            }
          )
        end
        def to_hash
        end

        class Device < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Me::PlayerGetDevicesResponse::Device,
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
      end
    end
  end
end
