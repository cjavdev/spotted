# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Player#seek_to_position
      class PlayerSeekToPositionParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute position_ms
        #   The position in milliseconds to seek to. Must be a positive number. Passing in a
        #   position that is greater than the length of the track will cause the player to
        #   start playing the next song.
        #
        #   @return [Integer]
        required :position_ms, Integer

        # @!attribute device_id
        #   The id of the device this command is targeting. If not supplied, the user's
        #   currently active device is the target.
        #
        #   @return [String, nil]
        optional :device_id, String

        # @!method initialize(position_ms:, device_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::PlayerSeekToPositionParams} for more details.
        #
        #   @param position_ms [Integer] The position in milliseconds to seek to. Must be a
        #
        #   @param device_id [String] The id of the device this command is targeting. If
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
