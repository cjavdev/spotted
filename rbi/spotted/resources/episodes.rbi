# typed: strong

module Spotted
  module Resources
    class Episodes
      # Get Spotify catalog information for a single episode identified by its unique
      # Spotify ID.
      sig do
        params(
          id: String,
          market: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::EpisodeObject)
      end
      def retrieve(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # episode.
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

      # Get Spotify catalog information for several episodes based on their Spotify IDs.
      sig do
        params(
          ids: String,
          market: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::EpisodeListResponse)
      end
      def list(
        # A comma-separated list of the
        # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the
        # episodes. Maximum: 50 IDs.
        ids:,
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
