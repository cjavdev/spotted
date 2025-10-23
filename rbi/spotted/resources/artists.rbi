# typed: strong

module Spotted
  module Resources
    class Artists
      # Get Spotify catalog information for a single artist identified by their unique
      # Spotify ID.
      sig do
        params(
          id: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::ArtistObject)
      end
      def retrieve(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
        # artist.
        id,
        request_options: {}
      )
      end

      # Get Spotify catalog information for several artists based on their Spotify IDs.
      sig do
        params(
          ids: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::ArtistListResponse)
      end
      def list(
        # A comma-separated list of the
        # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the artists.
        # Maximum: 50 IDs.
        ids:,
        request_options: {}
      )
      end

      # Get Spotify catalog information about an artist's albums.
      sig do
        params(
          id: String,
          include_groups: String,
          limit: Integer,
          market: String,
          offset: Integer,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::ArtistListAlbumsResponse)
      end
      def list_albums(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
        # artist.
        id,
        # A comma-separated list of keywords that will be used to filter the response. If
        # not supplied, all album types will be returned. <br/> Valid values are:<br/>-
        # `album`<br/>- `single`<br/>- `appears_on`<br/>- `compilation`<br/>For example:
        # `include_groups=album,single`.
        include_groups: nil,
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

      # Get Spotify catalog information about artists similar to a given artist.
      # Similarity is based on analysis of the Spotify community's listening history.
      sig do
        params(
          id: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::ArtistListRelatedArtistsResponse)
      end
      def list_related_artists(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
        # artist.
        id,
        request_options: {}
      )
      end

      # Get Spotify catalog information about an artist's top tracks by country.
      sig do
        params(
          id: String,
          market: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::ArtistListTopTracksResponse)
      end
      def list_top_tracks(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
        # artist.
        id,
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

      # @api private
      sig { params(client: Spotted::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
