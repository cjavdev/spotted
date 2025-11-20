# typed: strong

module Spotted
  module Resources
    class Playlists
      sig { returns(Spotted::Resources::Playlists::Tracks) }
      attr_reader :tracks

      sig { returns(Spotted::Resources::Playlists::Followers) }
      attr_reader :followers

      sig { returns(Spotted::Resources::Playlists::Images) }
      attr_reader :images

      # Get a playlist owned by a Spotify user.
      sig do
        params(
          playlist_id: String,
          additional_types: String,
          fields: String,
          market: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::PlaylistRetrieveResponse)
      end
      def retrieve(
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
        # omitted, all fields are returned. For example, to get just the playlist''s
        # description and URI: `fields=description,uri`. A dot separator can be used to
        # specify non-reoccurring fields, while parentheses can be used to specify
        # reoccurring fields within objects. For example, to get just the added date and
        # user ID of the adder: `fields=tracks.items(added_at,added_by.id)`. Use multiple
        # parentheses to drill down into nested objects, for example:
        # `fields=tracks.items(track(name,href,album(name,href)))`. Fields can be excluded
        # by prefixing them with an exclamation mark, for example:
        # `fields=tracks.items(track(name,href,album(!name,href)))`
        fields: nil,
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
        request_options: {}
      )
      end

      # Change a playlist's name and public/private state. (The user must, of course,
      # own the playlist.)
      sig do
        params(
          playlist_id: String,
          paths_request_body_content_application_json_schema_properties_published:
            T::Boolean,
          collaborative: T::Boolean,
          description: String,
          name: String,
          request_options: Spotted::RequestOptions::OrHash
        ).void
      end
      def update(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
        # playlist.
        playlist_id,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        paths_request_body_content_application_json_schema_properties_published: nil,
        # If `true`, the playlist will become collaborative and other users will be able
        # to modify the playlist in their Spotify client. <br/> _**Note**: You can only
        # set `collaborative` to `true` on non-public playlists._
        collaborative: nil,
        # Value for playlist description as displayed in Spotify Clients and in the Web
        # API.
        description: nil,
        # The new name for the playlist, for example `"My New Playlist Title"`
        name: nil,
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
