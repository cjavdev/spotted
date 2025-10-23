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

        sig { returns(T::Array[Spotted::Me::DeviceObject]) }
        attr_accessor :devices

        sig do
          params(devices: T::Array[Spotted::Me::DeviceObject::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(devices:)
        end

        sig do
          override.returns({ devices: T::Array[Spotted::Me::DeviceObject] })
        end
        def to_hash
        end
      end
    end
  end
end
