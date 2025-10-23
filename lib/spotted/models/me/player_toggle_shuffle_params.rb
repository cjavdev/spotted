# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Player#toggle_shuffle
      class PlayerToggleShuffleParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute state
        #   **true** : Shuffle user's playback.<br/> **false** : Do not shuffle user's
        #   playback.
        #
        #   @return [Boolean]
        required :state, Spotted::Internal::Type::Boolean

        # @!attribute device_id
        #   The id of the device this command is targeting. If not supplied, the user's
        #   currently active device is the target.
        #
        #   @return [String, nil]
        optional :device_id, String

        # @!method initialize(state:, device_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::PlayerToggleShuffleParams} for more details.
        #
        #   @param state [Boolean] **true** : Shuffle user's playback.<br/>
        #
        #   @param device_id [String] The id of the device this command is targeting. If
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
