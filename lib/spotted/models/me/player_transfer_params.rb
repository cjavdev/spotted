# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Player#transfer
      class PlayerTransferParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute device_ids
        #   A JSON array containing the ID of the device on which playback should be
        #   started/transferred.<br/>For
        #   example:`{device_ids:["74ASZWbe4lXaubB36ztrGX"]}`<br/>_**Note**: Although an
        #   array is accepted, only a single device_id is currently supported. Supplying
        #   more than one will return `400 Bad Request`_
        #
        #   @return [Array<String>]
        required :device_ids, Spotted::Internal::Type::ArrayOf[String]

        # @!attribute play
        #   **true**: ensure playback happens on new device.<br/>**false** or not provided:
        #   keep the current playback state.
        #
        #   @return [Boolean, nil]
        optional :play, Spotted::Internal::Type::Boolean

        # @!method initialize(device_ids:, play: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::PlayerTransferParams} for more details.
        #
        #   @param device_ids [Array<String>] A JSON array containing the ID of the device on which playback should be started
        #
        #   @param play [Boolean] **true**: ensure playback happens on new device.<br/>**false** or not provided:
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
