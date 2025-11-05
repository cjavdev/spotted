# typed: strong

module Spotted
  module Resources
    class Me
      class Tracks
        # Get a list of the songs saved in the current Spotify user's 'Your Music'
        # library.
        sig do
          params(
            limit: Integer,
            market: String,
            offset: Integer,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(
            Spotted::Internal::CursorURLPage[
              Spotted::Models::Me::TrackListResponse
            ]
          )
        end
        def list(
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          # An
          # [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
          # If a country code is specified, only content that is available in that market
          # will be returned.<br/> If a valid user access token is specified in the request
          # header, the country associated with the user account will take priority over
          # this parameter.<br/> _**Note**: If neither market or user country are provided,
          # the content is considered unavailable for the client._<br/> Users can view the
          # country that is associated with their account in the
          # [account settings](https://www.spotify.com/account/overview/).
          market: nil,
          # The index of the first item to return. Default: 0 (the first item). Use with
          # limit to get the next set of items.
          offset: nil,
          request_options: {}
        )
        end

        # Check if one or more tracks is already saved in the current Spotify user's 'Your
        # Music' library.
        sig do
          params(
            ids: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T::Array[T::Boolean])
        end
        def check(
          # A comma-separated list of the
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `ids=4iV5W9uYEdYUVa79Axb7Rh,1301WleyT98MSxVHPZCA6M`. Maximum: 50 IDs.
          ids:,
          request_options: {}
        )
        end

        # Remove one or more tracks from the current user's 'Your Music' library.
        sig do
          params(
            ids: T::Array[String],
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def remove(
          # A JSON array of the
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `["4iV5W9uYEdYUVa79Axb7Rh", "1301WleyT98MSxVHPZCA6M"]`<br/>A maximum of 50 items
          # can be specified in one request. _**Note**: if the `ids` parameter is present in
          # the query string, any IDs listed here in the body will be ignored._
          ids: nil,
          request_options: {}
        )
        end

        # Save one or more tracks to the current user's 'Your Music' library.
        sig do
          params(
            ids: T::Array[String],
            timestamped_ids:
              T::Array[Spotted::Me::TrackSaveParams::TimestampedID::OrHash],
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def save(
          # A JSON array of the
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `["4iV5W9uYEdYUVa79Axb7Rh", "1301WleyT98MSxVHPZCA6M"]`<br/>A maximum of 50 items
          # can be specified in one request. _**Note**: if the `timestamped_ids` is present
          # in the body, any IDs listed in the query parameters (deprecated) or the `ids`
          # field in the body will be ignored._
          ids:,
          # A JSON array of objects containing track IDs with their corresponding
          # timestamps. Each object must include a track ID and an `added_at` timestamp.
          # This allows you to specify when tracks were added to maintain a specific
          # chronological order in the user's library.<br/>A maximum of 50 items can be
          # specified in one request. _**Note**: if the `timestamped_ids` is present in the
          # body, any IDs listed in the query parameters (deprecated) or the `ids` field in
          # the body will be ignored._
          timestamped_ids: nil,
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
