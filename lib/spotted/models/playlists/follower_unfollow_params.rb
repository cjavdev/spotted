# frozen_string_literal: true

module Spotted
  module Models
    module Playlists
      # @see Spotted::Resources::Playlists::Followers#unfollow
      class FollowerUnfollowParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute playlist_id
        #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
        #   playlist.
        #
        #   @return [String]
        required :playlist_id, String

        # @!method initialize(playlist_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Playlists::FollowerUnfollowParams} for more details.
        #
        #   @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
