# typed: strong

module Spotted
  module Resources
    class Playlists
      class Tracks
        # Either reorder or replace items in a playlist depending on the request's
        # parameters. To reorder items, include `range_start`, `insert_before`,
        # `range_length` and `snapshot_id` in the request's body. To replace items,
        # include `uris` as either a query parameter or in the request's body. Replacing
        # items in a playlist will overwrite its existing items. This operation can be
        # used for replacing or clearing items in a playlist. <br/> **Note**: Replace and
        # reorder are mutually exclusive operations which share the same endpoint, but
        # have different parameters. These operations can't be applied together in a
        # single request.
        sig do
          params(
            playlist_id: String,
            insert_before: Integer,
            published: T::Boolean,
            range_length: Integer,
            range_start: Integer,
            snapshot_id: String,
            uris: T::Array[String],
            request_options: Spotted::RequestOptions::OrHash
          ).returns(Spotted::Models::Playlists::TrackUpdateResponse)
        end
        def update(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
          # playlist.
          playlist_id,
          # The position where the items should be inserted.<br/>To reorder the items to the
          # end of the playlist, simply set _insert_before_ to the position after the last
          # item.<br/>Examples:<br/>To reorder the first item to the last position in a
          # playlist with 10 items, set _range_start_ to 0, and _insert_before_
          # to 10.<br/>To reorder the last item in a playlist with 10 items to the start of
          # the playlist, set _range_start_ to 9, and _insert_before_ to 0.
          insert_before: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # The amount of items to be reordered. Defaults to 1 if not set.<br/>The range of
          # items to be reordered begins from the _range_start_ position, and includes the
          # _range_length_ subsequent items.<br/>Example:<br/>To move the items at index
          # 9-10 to the start of the playlist, _range_start_ is set to 9, and _range_length_
          # is set to 2.
          range_length: nil,
          # The position of the first item to be reordered.
          range_start: nil,
          # The playlist's snapshot ID against which you want to make the changes.
          snapshot_id: nil,
          uris: nil,
          request_options: {}
        )
        end

        # Get full details of the items of a playlist owned by a Spotify user.
        sig do
          params(
            playlist_id: String,
            additional_types: String,
            fields: String,
            limit: Integer,
            market: String,
            offset: Integer,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(
            Spotted::Internal::CursorURLPage[Spotted::PlaylistTrackObject]
          )
        end
        def list(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
          # playlist.
          playlist_id,
          # A comma-separated list of item types that your client supports besides the
          # default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**:
          # This parameter was introduced to allow existing clients to maintain their
          # current behaviour and might be deprecated in the future._<br/> In addition to
          # providing this parameter, make sure that your client properly handles cases of
          # new types in the future by checking against the `type` field of each object.
          additional_types: nil,
          # Filters for the query: a comma-separated list of the fields to return. If
          # omitted, all fields are returned. For example, to get just the total number of
          # items and the request limit:<br/>`fields=total,limit`<br/>A dot separator can be
          # used to specify non-reoccurring fields, while parentheses can be used to specify
          # reoccurring fields within objects. For example, to get just the added date and
          # user ID of the adder:<br/>`fields=items(added_at,added_by.id)`<br/>Use multiple
          # parentheses to drill down into nested objects, for
          # example:<br/>`fields=items(track(name,href,album(name,href)))`<br/>Fields can be
          # excluded by prefixing them with an exclamation mark, for
          # example:<br/>`fields=items.track.album(!external_urls,images)`
          fields: nil,
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 100.
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

        # Add one or more items to a user's playlist.
        sig do
          params(
            playlist_id: String,
            position: Integer,
            published: T::Boolean,
            uris: T::Array[String],
            request_options: Spotted::RequestOptions::OrHash
          ).returns(Spotted::Models::Playlists::TrackAddResponse)
        end
        def add(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
          # playlist.
          playlist_id,
          # The position to insert the items, a zero-based index. For example, to insert the
          # items in the first position: `position=0` ; to insert the items in the third
          # position: `position=2`. If omitted, the items will be appended to the playlist.
          # Items are added in the order they appear in the uris array. For example:
          # `{"uris": ["spotify:track:4iV5W9uYEdYUVa79Axb7Rh","spotify:track:1301WleyT98MSxVHPZCA6M"], "position": 3}`
          position: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # A JSON array of the
          # [Spotify URIs](/documentation/web-api/concepts/spotify-uris-ids) to add. For
          # example:
          # `{"uris": ["spotify:track:4iV5W9uYEdYUVa79Axb7Rh","spotify:track:1301WleyT98MSxVHPZCA6M", "spotify:episode:512ojhOuo1ktJprKbVcKyQ"]}`<br/>A
          # maximum of 100 items can be added in one request. _**Note**: if the `uris`
          # parameter is present in the query string, any URIs listed here in the body will
          # be ignored._
          uris: nil,
          request_options: {}
        )
        end

        # Remove one or more items from a user's playlist.
        sig do
          params(
            playlist_id: String,
            tracks:
              T::Array[Spotted::Playlists::TrackRemoveParams::Track::OrHash],
            published: T::Boolean,
            snapshot_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(Spotted::Models::Playlists::TrackRemoveResponse)
        end
        def remove(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
          # playlist.
          playlist_id,
          # An array of objects containing
          # [Spotify URIs](/documentation/web-api/concepts/spotify-uris-ids) of the tracks
          # or episodes to remove. For example:
          # `{ "tracks": [{ "uri": "spotify:track:4iV5W9uYEdYUVa79Axb7Rh" },{ "uri": "spotify:track:1301WleyT98MSxVHPZCA6M" }] }`.
          # A maximum of 100 objects can be sent at once.
          tracks:,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # The playlist's snapshot ID against which you want to make the changes. The API
          # will validate that the specified items exist and in the specified positions and
          # make the changes, even if more recent changes have been made to the playlist.
          snapshot_id: nil,
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
