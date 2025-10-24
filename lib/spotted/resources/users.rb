# frozen_string_literal: true

module Spotted
  module Resources
    class Users
      # @return [Spotted::Resources::Users::Playlists]
      attr_reader :playlists

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::UserRetrieveProfileParams} for more details.
      #
      # Get public profile information about a Spotify user.
      #
      # @overload retrieve_profile(user_id, request_options: {})
      #
      # @param user_id [String] The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::UserRetrieveProfileResponse]
      #
      # @see Spotted::Models::UserRetrieveProfileParams
      def retrieve_profile(user_id, params = {})
        @client.request(
          method: :get,
          path: ["users/%1$s", user_id],
          model: Spotted::Models::UserRetrieveProfileResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Spotted::Client]
      def initialize(client:)
        @client = client
        @playlists = Spotted::Resources::Users::Playlists.new(client: client)
      end
    end
  end
end
