# typed: strong

module Spotted
  module Resources
    class Me
      class Following
        # Get the current user's followed artists.
        sig do
          params(
            after: String,
            limit: Integer,
            type: Symbol,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(Spotted::Models::Me::FollowingBulkRetrieveResponse)
        end
        def bulk_retrieve(
          # The last artist ID retrieved from the previous request.
          after: nil,
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          # The ID type: currently only `artist` is supported.
          type: :artist,
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
            ids: T::Array[String],
            published: T::Boolean,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def follow(
          # A JSON array of the artist or user
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `{ids:["74ASZWbe4lXaubB36ztrGX", "08td7MxkoHQkXnWAYD8d6Q"]}`. A maximum of 50
          # IDs can be sent in one request. _**Note**: if the `ids` parameter is present in
          # the query string, any IDs listed here in the body will be ignored._
          ids:,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          request_options: {}
        )
        end

        # Remove the current user as a follower of one or more artists or other Spotify
        # users.
        sig do
          params(
            ids: T::Array[String],
            published: T::Boolean,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def unfollow(
          # A JSON array of the artist or user
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `{ids:["74ASZWbe4lXaubB36ztrGX", "08td7MxkoHQkXnWAYD8d6Q"]}`. A maximum of 50
          # IDs can be sent in one request. _**Note**: if the `ids` parameter is present in
          # the query string, any IDs listed here in the body will be ignored._
          ids: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
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
