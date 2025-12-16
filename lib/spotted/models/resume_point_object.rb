# frozen_string_literal: true

module Spotted
  module Models
    class ResumePointObject < Spotted::Internal::Type::BaseModel
      # @!attribute fully_played
      #   Whether or not the episode has been fully played by the user.
      #
      #   @return [Boolean, nil]
      optional :fully_played, Spotted::Internal::Type::Boolean

      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!attribute resume_position_ms
      #   The user's most recent position in the episode in milliseconds.
      #
      #   @return [Integer, nil]
      optional :resume_position_ms, Integer

      # @!method initialize(fully_played: nil, published: nil, resume_position_ms: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ResumePointObject} for more details.
      #
      #   @param fully_played [Boolean] Whether or not the episode has been fully played by the user.
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param resume_position_ms [Integer] The user's most recent position in the episode in milliseconds.
    end
  end
end
