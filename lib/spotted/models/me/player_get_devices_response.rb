# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Player#get_devices
      class PlayerGetDevicesResponse < Spotted::Internal::Type::BaseModel
        # @!attribute devices
        #
        #   @return [Array<Spotted::Models::Me::DeviceObject>]
        required :devices, -> { Spotted::Internal::Type::ArrayOf[Spotted::Me::DeviceObject] }

        # @!method initialize(devices:)
        #   @param devices [Array<Spotted::Models::Me::DeviceObject>]
      end
    end
  end
end
