# typed: strong

module Spotted
  module Resources
    class Me
      class Shows
        # Get a list of shows saved in the current Spotify user's library. Optional
        # parameters can be used to limit the number of shows returned.
        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(
            Spotted::Internal::CursorURLPage[
              Spotted::Models::Me::ShowListResponse
            ]
          )
        end
        def list(
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          # The index of the first item to return. Default: 0 (the first item). Use with
          # limit to get the next set of items.
          offset: nil,
          request_options: {}
        )
        end

        # Check if one or more shows is already saved in the current Spotify user's
        # library.
        sig do
          params(
            ids: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T::Array[T::Boolean])
        end
        def check(
          # A comma-separated list of the
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the shows.
          # Maximum: 50 IDs.
          ids:,
          request_options: {}
        )
        end

        # Delete one or more shows from current Spotify user's library.
        sig do
          params(
            ids: T::Array[String],
            published: T::Boolean,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def remove(
          # A JSON array of the
          # [Spotify IDs](https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids).
          # A maximum of 50 items can be specified in one request. _Note: if the `ids`
          # parameter is present in the query string, any IDs listed here in the body will
          # be ignored._
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

        # Save one or more shows to current Spotify user's library.
        sig do
          params(
            ids: T::Array[String],
            published: T::Boolean,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def save(
          # A JSON array of the
          # [Spotify IDs](https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids).
          # A maximum of 50 items can be specified in one request. _Note: if the `ids`
          # parameter is present in the query string, any IDs listed here in the body will
          # be ignored._
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
