# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Player#set_volume
      class PlayerSetVolumeParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute volume_percent
        #   The volume to set. Must be a value from 0 to 100 inclusive.
        #
        #   @return [Integer]
        required :volume_percent, Integer

        # @!attribute device_id
        #   The id of the device this command is targeting. If not supplied, the user's
        #   currently active device is the target.
        #
        #   @return [String, nil]
        optional :device_id, String

        # @!method initialize(volume_percent:, device_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::PlayerSetVolumeParams} for more details.
        #
        #   @param volume_percent [Integer] The volume to set. Must be a value from 0 to 100 inclusive.
        #
        #   @param device_id [String] The id of the device this command is targeting. If not supplied, the user's curr
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
