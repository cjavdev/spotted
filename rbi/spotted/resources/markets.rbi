# typed: strong

module Spotted
  module Resources
    class Markets
      # Get the list of markets where Spotify is available.
      sig do
        params(request_options: Spotted::RequestOptions::OrHash).returns(
          Spotted::Models::MarketListResponse
        )
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: Spotted::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
