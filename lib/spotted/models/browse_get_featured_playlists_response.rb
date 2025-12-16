# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Browse#get_featured_playlists
    class BrowseGetFeaturedPlaylistsResponse < Spotted::Internal::Type::BaseModel
      # @!attribute message
      #   The localized message of a playlist.
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute playlists
      #
      #   @return [Spotted::Models::PagingPlaylistObject, nil]
      optional :playlists, -> { Spotted::PagingPlaylistObject }

      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!method initialize(message: nil, playlists: nil, published: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::BrowseGetFeaturedPlaylistsResponse} for more details.
      #
      #   @param message [String] The localized message of a playlist.
      #
      #   @param playlists [Spotted::Models::PagingPlaylistObject]
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
    end
  end
end
