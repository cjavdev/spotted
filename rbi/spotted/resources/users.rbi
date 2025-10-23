# typed: strong

module Spotted
  module Resources
    class Users
      sig { returns(Spotted::Resources::Users::Playlists) }
      attr_reader :playlists

      # Get public profile information about a Spotify user.
      sig do
        params(
          user_id: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::UserRetrieveProfileResponse)
      end
      def retrieve_profile(
        # The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
        user_id,
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
