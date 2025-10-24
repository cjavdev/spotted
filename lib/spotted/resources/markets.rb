# frozen_string_literal: true

module Spotted
  module Resources
    class Markets
      # Get the list of markets where Spotify is available.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::MarketListResponse]
      #
      # @see Spotted::Models::MarketListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "markets",
          model: Spotted::Models::MarketListResponse,
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
