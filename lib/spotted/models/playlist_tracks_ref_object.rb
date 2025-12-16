# frozen_string_literal: true

module Spotted
  module Models
    class PlaylistTracksRefObject < Spotted::Internal::Type::BaseModel
      # @!attribute href
      #   A link to the Web API endpoint where full details of the playlist's tracks can
      #   be retrieved.
      #
      #   @return [String, nil]
      optional :href, String

      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!attribute total
      #   Number of tracks in the playlist.
      #
      #   @return [Integer, nil]
      optional :total, Integer

      # @!method initialize(href: nil, published: nil, total: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::PlaylistTracksRefObject} for more details.
      #
      #   @param href [String] A link to the Web API endpoint where full details of the playlist's tracks can b
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param total [Integer] Number of tracks in the playlist.
    end
  end
end
