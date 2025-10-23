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

      # @!attribute start
      #   The starting point (in seconds) of the time interval.
      #
      #   @return [Float, nil]
      optional :start, Float

      # @!method initialize(confidence: nil, duration: nil, start: nil)
      #   @param confidence [Float] The confidence, from 0.0 to 1.0, of the reliability of the interval.
      #
      #   @param duration [Float] The duration (in seconds) of the time interval.
      #
      #   @param start [Float] The starting point (in seconds) of the time interval.
    end
  end
end
