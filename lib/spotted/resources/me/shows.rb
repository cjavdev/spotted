# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      class Shows
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::ShowListParams} for more details.
        #
        # Get a list of shows saved in the current Spotify user's library. Optional
        # parameters can be used to limit the number of shows returned.
        #
        # @overload list(limit: nil, offset: nil, request_options: {})
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Internal::CursorURLPage<Spotted::Models::Me::ShowListResponse>]
        #
        # @see Spotted::Models::Me::ShowListParams
        def list(params = {})
          parsed, options = Spotted::Me::ShowListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/shows",
            query: parsed,
            page: Spotted::Internal::CursorURLPage,
            model: Spotted::Models::Me::ShowListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::ShowCheckParams} for more details.
        #
        # Check if one or more shows is already saved in the current Spotify user's
        # library.
        #
        # @overload check(ids:, request_options: {})
        #
        # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Boolean>]
        #
        # @see Spotted::Models::Me::ShowCheckParams
        def check(params)
          parsed, options = Spotted::Me::ShowCheckParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/shows/contains",
            query: parsed,
            model: Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean],
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::ShowRemoveParams} for more details.
        #
        # Delete one or more shows from current Spotify user's library.
        #
        # @overload remove(ids: nil, request_options: {})
        #
        # @param ids [Array<String>] A JSON array of the [Spotify IDs](https://developer.spotify.com/documentation/we
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::ShowRemoveParams
        def remove(params = {})
          parsed, options = Spotted::Me::ShowRemoveParams.dump_request(params)
          @client.request(method: :delete, path: "me/shows", body: parsed, model: NilClass, options: options)
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::ShowSaveParams} for more details.
        #
        # Save one or more shows to current Spotify user's library.
        #
        # @overload save(ids: nil, request_options: {})
        #
        # @param ids [Array<String>] A JSON array of the [Spotify IDs](https://developer.spotify.com/documentation/we
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::ShowSaveParams
        def save(params = {})
          parsed, options = Spotted::Me::ShowSaveParams.dump_request(params)
          @client.request(method: :put, path: "me/shows", body: parsed, model: NilClass, options: options)
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
