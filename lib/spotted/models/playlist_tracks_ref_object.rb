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

      # @!attribute total
      #   Number of tracks in the playlist.
      #
      #   @return [Integer, nil]
      optional :total, Integer

      # @!method initialize(href: nil, total: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::PlaylistTracksRefObject} for more details.
      #
      #   @param href [String] A link to the Web API endpoint where full details of the playlist's tracks can b
      #
      #   @param total [Integer] Number of tracks in the playlist.
    end
  end
end
