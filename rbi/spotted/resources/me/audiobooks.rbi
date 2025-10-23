# typed: strong

module Spotted
  module Resources
    class Me
      class Audiobooks
        # Get a list of the audiobooks saved in the current Spotify user's 'Your Music'
        # library.
        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(Spotted::Models::Me::AudiobookListResponse)
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

        # Check if one or more audiobooks are already saved in the current Spotify user's
        # library.
        sig do
          params(
            ids: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T::Array[T::Boolean])
        end
        def check(
          # A comma-separated list of the
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `ids=18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ`. Maximum: 50 IDs.
          ids:,
          request_options: {}
        )
        end

        # Remove one or more audiobooks from the Spotify user's library.
        sig do
          params(
            ids: String,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def remove(
          # A comma-separated list of the
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `ids=18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ`. Maximum: 50 IDs.
          ids:,
          request_options: {}
        )
        end

        # Save one or more audiobooks to the current Spotify user's library.
        sig do
          params(
            ids: String,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def save(
          # A comma-separated list of the
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `ids=18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ`. Maximum: 50 IDs.
          ids:,
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
