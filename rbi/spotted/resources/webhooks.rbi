# typed: strong

module Spotted
  module Resources
    class Webhooks
      sig { params(payload: String).returns(T.anything) }
      def unwrap(
        # The raw webhook payload as a string
        payload
      )
      end

      # @api private
      sig { params(client: Spotted::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
