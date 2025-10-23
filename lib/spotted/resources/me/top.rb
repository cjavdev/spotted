# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      class Top
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::TopRetrieveParams} for more details.
        #
        # Get the current user's top artists or tracks based on calculated affinity.
        #
        # @overload retrieve(type, limit: nil, offset: nil, time_range: nil, request_options: {})
        #
        # @param type [Symbol, Spotted::Models::Me::TopRetrieveParams::Type] The type of entity to return. Valid values: `artists` or `tracks`
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
        #
        # @param time_range [String] Over what time frame the affinities are computed. Valid values: `long_term` (cal
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Me::TopRetrieveResponse]
        #
        # @see Spotted::Models::Me::TopRetrieveParams
        def retrieve(type, params = {})
          parsed, options = Spotted::Me::TopRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["me/top/%1$s", type],
            query: parsed,
            model: Spotted::Models::Me::TopRetrieveResponse,
            options: options
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
