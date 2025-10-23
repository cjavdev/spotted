# frozen_string_literal: true

module Spotted
  module Models
    class ResumePointObject < Spotted::Internal::Type::BaseModel
      # @!attribute fully_played
      #   Whether or not the episode has been fully played by the user.
      #
      #   @return [Boolean, nil]
      optional :fully_played, Spotted::Internal::Type::Boolean

      # @!attribute resume_position_ms
      #   The user's most recent position in the episode in milliseconds.
      #
      #   @return [Integer, nil]
      optional :resume_position_ms, Integer

      # @!method initialize(fully_played: nil, resume_position_ms: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ResumePointObject} for more details.
      #
      #   @param fully_played [Boolean] Whether or not the episode has been fully played by the user.
      #
      #   @param resume_position_ms [Integer] The user's most recent position in the episode in milliseconds.
    end
  end
end
