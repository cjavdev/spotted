# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      class Following
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::FollowingBulkRetrieveParams} for more details.
        #
        # Get the current user's followed artists.
        #
        # @overload bulk_retrieve(after: nil, limit: nil, type: :artist, request_options: {})
        #
        # @param after [String] The last artist ID retrieved from the previous request.
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param type [Symbol, :artist] The ID type: currently only `artist` is supported.
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Models::Me::FollowingBulkRetrieveResponse]
        #
        # @see Spotted::Models::Me::FollowingBulkRetrieveParams
        def bulk_retrieve(params)
          parsed, options = Spotted::Me::FollowingBulkRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/following",
            query: parsed,
            model: Spotted::Models::Me::FollowingBulkRetrieveResponse,
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
        # @overload follow(ids:, request_options: {})
        #
        # @param ids [Array<String>] A JSON array of the artist or user [Spotify IDs](/documentation/web-api/concepts
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::FollowingFollowParams
        def follow(params)
          parsed, options = Spotted::Me::FollowingFollowParams.dump_request(params)
          @client.request(method: :put, path: "me/following", body: parsed, model: NilClass, options: options)
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::FollowingUnfollowParams} for more details.
        #
        # Remove the current user as a follower of one or more artists or other Spotify
        # users.
        #
        # @overload unfollow(ids: nil, request_options: {})
        #
        # @param ids [Array<String>] A JSON array of the artist or user [Spotify IDs](/documentation/web-api/concepts
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::FollowingUnfollowParams
        def unfollow(params = {})
          parsed, options = Spotted::Me::FollowingUnfollowParams.dump_request(params)
          @client.request(
            method: :delete,
            path: "me/following",
            body: parsed,
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
