# frozen_string_literal: true

module Spotted
  module Resources
    class Webhooks
      # @param payload [String] The raw webhook payload as a string
      #
      # @return [Object]
      def unwrap(payload)
        parsed = JSON.parse(payload, symbolize_names: true)
        Spotted::Internal::Type::Converter.coerce(Spotted::Models::UnwrapWebhookEvent, parsed)
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
