# typed: strong

module Spotted
  module Resources
    class Me
      class Player
        class Queue
          # Add an item to be played next in the user's current playback queue. This API
          # only works for users who have Spotify Premium. The order of execution is not
          # guaranteed when you use this API with other Player API endpoints.
          sig do
            params(
              uri: String,
              device_id: String,
              request_options: Spotted::RequestOptions::OrHash
            ).void
          end
          def add(
            # The uri of the item to add to the queue. Must be a track or an episode uri.
            uri:,
            # The id of the device this command is targeting. If not supplied, the user's
            # currently active device is the target.
            device_id: nil,
            request_options: {}
          )
          end

          # Get the list of objects that make up the user's queue.
          sig do
            params(request_options: Spotted::RequestOptions::OrHash).returns(
              Spotted::Models::Me::Player::QueueGetResponse
            )
          end
          def get(request_options: {})
          end

          # @api private
          sig { params(client: Spotted::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
