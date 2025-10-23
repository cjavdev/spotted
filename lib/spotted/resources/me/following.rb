# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      class Following
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::FollowingListParams} for more details.
        #
        # Get the current user's followed artists.
        #
        # @overload list(type:, after: nil, limit: nil, request_options: {})
        #
        # @param type [Symbol, Spotted::Models::Me::FollowingListParams::Type] The ID type: currently only `artist` is supported.
        #
        # @param after [String] The last artist ID retrieved from the previous request.
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20\. Minimum: 1\. Maximum: 50\.
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Me::FollowingListResponse]
        #
        # @see Spotted::Models::Me::FollowingListParams
        def list(params)
          parsed, options = Spotted::Me::FollowingListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/following",
            query: parsed,
            model: Spotted::Models::Me::FollowingListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::FollowingCheckParams} for more details.
        #
        # Check to see if the current user is following one or more artists or other
        # Spotify users.
        #
        # @overload check(ids:, type:, request_options: {})
        #
        # @param ids [String] A comma-separated list of the artist or the user [Spotify IDs](/documentation/we
        #
        # @param type [Symbol, Spotted::Models::Me::FollowingCheckParams::Type] The ID type: either `artist` or `user`.
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Boolean>]
        #
        # @see Spotted::Models::Me::FollowingCheckParams
        def check(params)
          parsed, options = Spotted::Me::FollowingCheckParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/following/contains",
            query: parsed,
            model: Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean],
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::FollowingFollowParams} for more details.
        #
        # Add the current user as a follower of one or more artists or other Spotify
        # users.
        #
        # @overload follow(body_ids:, type:, request_options: {})
        #
        # @param body_ids [Array<String>] Body param: A JSON array of the artist or user [Spotify IDs](/documentation/web-
        #
        # @param type [Symbol, Spotted::Models::Me::FollowingFollowParams::Type] Query param: The ID type.
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::FollowingFollowParams
        def follow(params)
          parsed, options = Spotted::Me::FollowingFollowParams.dump_request(params)
          query_params = [:query_ids, :type]
          @client.request(
            method: :put,
            path: "me/following",
            query: parsed.slice(*query_params).transform_keys(query_ids: "ids"),
            body: parsed.except(*query_params),
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::FollowingUnfollowParams} for more details.
        #
        # Remove the current user as a follower of one or more artists or other Spotify
        # users.
        #
        # @overload unfollow(type:, body_ids: nil, request_options: {})
        #
        # @param type [Symbol, Spotted::Models::Me::FollowingUnfollowParams::Type] Query param: The ID type: either `artist` or `user`.
        #
        # @param body_ids [Array<String>] Body param: A JSON array of the artist or user [Spotify IDs](/documentation/web-
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::FollowingUnfollowParams
        def unfollow(params)
          parsed, options = Spotted::Me::FollowingUnfollowParams.dump_request(params)
          query_params = [:query_ids, :type]
          @client.request(
            method: :delete,
            path: "me/following",
            query: parsed.slice(*query_params).transform_keys(query_ids: "ids"),
            body: parsed.except(*query_params),
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
