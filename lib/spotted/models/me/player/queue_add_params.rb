# frozen_string_literal: true

module Spotted
  module Models
    module Me
      module Player
        # @see Spotted::Resources::Me::Player::Queue#add
        class QueueAddParams < Spotted::Internal::Type::BaseModel
          extend Spotted::Internal::Type::RequestParameters::Converter
          include Spotted::Internal::Type::RequestParameters

          # @!attribute uri
          #   The uri of the item to add to the queue. Must be a track or an episode uri.
          #
          #   @return [String]
          required :uri, String

          # @!attribute device_id
          #   The id of the device this command is targeting. If not supplied, the user's
          #   currently active device is the target.
          #
          #   @return [String, nil]
          optional :device_id, String

          # @!method initialize(uri:, device_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Me::Player::QueueAddParams} for more details.
          #
          #   @param uri [String] The uri of the item to add to the queue. Must be a track or an episode uri.
          #
          #   @param device_id [String] The id of the device this command is targeting. If
          #
          #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
