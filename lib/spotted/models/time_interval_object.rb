# frozen_string_literal: true

module Spotted
  module Models
    class TimeIntervalObject < Spotted::Internal::Type::BaseModel
      # @!attribute confidence
      #   The confidence, from 0.0 to 1.0, of the reliability of the interval.
      #
      #   @return [Float, nil]
      optional :confidence, Float

      # @!attribute duration
      #   The duration (in seconds) of the time interval.
      #
      #   @return [Float, nil]
      optional :duration, Float

      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!attribute start
      #   The starting point (in seconds) of the time interval.
      #
      #   @return [Float, nil]
      optional :start, Float

      # @!method initialize(confidence: nil, duration: nil, published: nil, start: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::TimeIntervalObject} for more details.
      #
      #   @param confidence [Float] The confidence, from 0.0 to 1.0, of the reliability of the interval.
      #
      #   @param duration [Float] The duration (in seconds) of the time interval.
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param start [Float] The starting point (in seconds) of the time interval.
    end
  end
end
