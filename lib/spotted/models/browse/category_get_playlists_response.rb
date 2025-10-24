# frozen_string_literal: true

module Spotted
  module Models
    module Browse
      # @see Spotted::Resources::Browse::Categories#get_playlists
      class CategoryGetPlaylistsResponse < Spotted::Internal::Type::BaseModel
        # @!attribute message
        #   The localized message of a playlist.
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute playlists
        #
        #   @return [Spotted::Models::PagingPlaylistObject, nil]
        optional :playlists, -> { Spotted::PagingPlaylistObject }

        # @!method initialize(message: nil, playlists: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Browse::CategoryGetPlaylistsResponse} for more details.
        #
        #   @param message [String] The localized message of a playlist.
        #
        #   @param playlists [Spotted::Models::PagingPlaylistObject]
      end
    end
  end
end
