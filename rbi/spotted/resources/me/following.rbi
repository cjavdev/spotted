# typed: strong

module Spotted
  module Resources
    class Me
      class Following
        # Get the current user's followed artists.
        sig do
          params(
            type: Spotted::Me::FollowingListParams::Type::OrSymbol,
            after: String,
            limit: Integer,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(Spotted::Models::Me::FollowingListResponse)
        end
        def list(
          # The ID type: currently only `artist` is supported.
          type:,
          # The last artist ID retrieved from the previous request.
          after: nil,
          # The maximum number of items to return. Default: 20\. Minimum: 1\. Maximum: 50\.
          limit: nil,
          request_options: {}
        )
        end

        # Check to see if the current user is following one or more artists or other
        # Spotify users.
        sig do
          params(
            ids: String,
            type: Spotted::Me::FollowingCheckParams::Type::OrSymbol,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T::Array[T::Boolean])
        end
        def check(
          # A comma-separated list of the artist or the user
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) to check. For
          # example: `ids=74ASZWbe4lXaubB36ztrGX,08td7MxkoHQkXnWAYD8d6Q`. A maximum of 50
          # IDs can be sent in one request.
          ids:,
          # The ID type: either `artist` or `user`.
          type:,
          request_options: {}
        )
        end

        # Add the current user as a follower of one or more artists or other Spotify
        # users.
        sig do
          params(
            body_ids: T::Array[String],
            type: Spotted::Me::FollowingFollowParams::Type::OrSymbol,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def follow(
          # Body param: A JSON array of the artist or user
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `{ids:["74ASZWbe4lXaubB36ztrGX", "08td7MxkoHQkXnWAYD8d6Q"]}`. A maximum of 50
          # IDs can be sent in one request. _**Note**: if the `ids` parameter is present in
          # the query string, any IDs listed here in the body will be ignored._
          body_ids:,
          # Query param: The ID type.
          type:,
          request_options: {}
        )
        end

        # Remove the current user as a follower of one or more artists or other Spotify
        # users.
        sig do
          params(
            type: Spotted::Me::FollowingUnfollowParams::Type::OrSymbol,
            body_ids: T::Array[String],
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def unfollow(
          # Query param: The ID type: either `artist` or `user`.
          type:,
          # Body param: A JSON array of the artist or user
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `{ids:["74ASZWbe4lXaubB36ztrGX", "08td7MxkoHQkXnWAYD8d6Q"]}`. A maximum of 50
          # IDs can be sent in one request. _**Note**: if the `ids` parameter is present in
          # the query string, any IDs listed here in the body will be ignored._
          body_ids: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Spotted::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
