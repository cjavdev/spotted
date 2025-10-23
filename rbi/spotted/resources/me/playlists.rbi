# typed: strong

module Spotted
  module Resources
    class Me
      class Playlists
        # Get a list of the playlists owned or followed by the current Spotify user.
        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(Spotted::Models::Me::PlaylistRetrieveResponse)
        end
        def retrieve(
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          # 'The index of the first playlist to return. Default: 0 (the first object).
          # Maximum offset: 100.000\. Use with `limit` to get the next set of playlists.'
          offset: nil,
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
