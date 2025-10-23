# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      class Player
        class Queue
          # Some parameter documentations has been truncated, see
          # {Spotted::Models::Me::Player::QueueAddParams} for more details.
          #
          # Add an item to be played next in the user's current playback queue. This API
          # only works for users who have Spotify Premium. The order of execution is not
          # guaranteed when you use this API with other Player API endpoints.
          #
          # @overload add(uri:, device_id: nil, request_options: {})
          #
          # @param uri [String] The uri of the item to add to the queue. Must be a track or an episode uri.
          #
          # @param device_id [String] The id of the device this command is targeting. If
          #
          # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Spotted::Models::Me::Player::QueueAddParams
          def add(params)
            parsed, options = Spotted::Me::Player::QueueAddParams.dump_request(params)
            @client.request(
              method: :post,
              path: "me/player/queue",
              query: parsed,
              model: NilClass,
              options: options
            )
          end

          # Get the list of objects that make up the user's queue.
          #
          # @overload get(request_options: {})
          #
          # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Spotted::Models::Me::Player::QueueGetResponse]
          #
          # @see Spotted::Models::Me::Player::QueueGetParams
          def get(params = {})
            @client.request(
              method: :get,
              path: "me/player/queue",
              model: Spotted::Models::Me::Player::QueueGetResponse,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [Spotted::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
