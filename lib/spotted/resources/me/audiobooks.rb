# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      class Audiobooks
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::AudiobookListParams} for more details.
        #
        # Get a list of the audiobooks saved in the current Spotify user's 'Your Music'
        # library.
        #
        # @overload list(limit: nil, offset: nil, request_options: {})
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Internal::CursorURLPage<Spotted::Models::Me::AudiobookListResponse>]
        #
        # @see Spotted::Models::Me::AudiobookListParams
        def list(params = {})
          parsed, options = Spotted::Me::AudiobookListParams.dump_request(params)
          query = Spotted::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "me/audiobooks",
            query: query,
            page: Spotted::Internal::CursorURLPage,
            model: Spotted::Models::Me::AudiobookListResponse,
            options: options
          )
        end

        # @deprecated
        #
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::AudiobookCheckParams} for more details.
        #
        # Check if one or more audiobooks are already saved in the current Spotify user's
        # library.
        #
        # **Note:** This endpoint is deprecated. Use
        # [Check User's Saved Items](/documentation/web-api/reference/check-library-contains)
        # instead.
        #
        # @overload check(ids:, request_options: {})
        #
        # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Boolean>]
        #
        # @see Spotted::Models::Me::AudiobookCheckParams
        def check(params)
          parsed, options = Spotted::Me::AudiobookCheckParams.dump_request(params)
          query = Spotted::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "me/audiobooks/contains",
            query: query,
            model: Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean],
            options: options
          )
        end

        # @deprecated
        #
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::AudiobookRemoveParams} for more details.
        #
        # Remove one or more audiobooks from the Spotify user's library.
        #
        # **Note:** This endpoint is deprecated. Use
        # [Remove Items from Library](/documentation/web-api/reference/remove-library-items)
        # instead.
        #
        # @overload remove(ids:, request_options: {})
        #
        # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::AudiobookRemoveParams
        def remove(params)
          parsed, options = Spotted::Me::AudiobookRemoveParams.dump_request(params)
          query = Spotted::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :delete,
            path: "me/audiobooks",
            query: query,
            model: NilClass,
            options: options
          )
        end

        # @deprecated
        #
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::AudiobookSaveParams} for more details.
        #
        # Save one or more audiobooks to the current Spotify user's library.
        #
        # **Note:** This endpoint is deprecated. Use
        # [Save Items to Library](/documentation/web-api/reference/save-library-items)
        # instead.
        #
        # @overload save(ids:, request_options: {})
        #
        # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::AudiobookSaveParams
        def save(params)
          parsed, options = Spotted::Me::AudiobookSaveParams.dump_request(params)
          query = Spotted::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :put,
            path: "me/audiobooks",
            query: query,
            model: NilClass,
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
