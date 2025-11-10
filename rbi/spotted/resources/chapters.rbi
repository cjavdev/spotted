# typed: strong

module Spotted
  module Resources
    class Chapters
      # Get Spotify catalog information for a single audiobook chapter. Chapters are
      # only available within the US, UK, Canada, Ireland, New Zealand and Australia
      # markets.
      sig do
        params(
          id: String,
          market: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::ChapterRetrieveResponse)
      end
      def retrieve(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # chapter.
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

      # Get Spotify catalog information for several audiobook chapters identified by
      # their Spotify IDs. Chapters are only available within the US, UK, Canada,
      # Ireland, New Zealand and Australia markets.
      sig do
        params(
          ids: String,
          market: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::ChapterBulkRetrieveResponse)
      end
      def bulk_retrieve(
        # A comma-separated list of the
        # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
        # `ids=0IsXVP0JmcB2adSE338GkK,3ZXb8FKZGU0EHALYX6uCzU`. Maximum: 50 IDs.
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
