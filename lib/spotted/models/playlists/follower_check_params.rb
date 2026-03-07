# frozen_string_literal: true

module Spotted
  module Models
    module Playlists
      # @see Spotted::Resources::Playlists::Followers#check
      class FollowerCheckParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute playlist_id
        #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
        #   playlist.
        #
        #   @return [String]
        required :playlist_id, String

        # @!attribute ids
        #   **Deprecated** A single item list containing current user's
        #   [Spotify Username](/documentation/web-api/concepts/spotify-uris-ids). Maximum: 1
        #   id.
        #
        #   @return [String, nil]
        optional :ids, String

        # @!method initialize(playlist_id:, ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Playlists::FollowerCheckParams} for more details.
        #
        #   @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
        #
        #   @param ids [String] **Deprecated** A single item list containing current user's [Spotify Username](/
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
