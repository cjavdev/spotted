# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Player#pause_playback
      class PlayerPausePlaybackParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute device_id
        #   The id of the device this command is targeting. If not supplied, the user's
        #   currently active device is the target.
        #
        #   @return [String, nil]
        optional :device_id, String

        # @!method initialize(device_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::PlayerPausePlaybackParams} for more details.
        #
        #   @param device_id [String] The id of the device this command is targeting. If not supplied, the user's curr
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
