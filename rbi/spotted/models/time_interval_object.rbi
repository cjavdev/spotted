# typed: strong

module Spotted
  module Models
    class TimeIntervalObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::TimeIntervalObject, Spotted::Internal::AnyHash)
        end

      # The confidence, from 0.0 to 1.0, of the reliability of the interval.
      sig { returns(T.nilable(Float)) }
      attr_reader :confidence

      sig { params(confidence: Float).void }
      attr_writer :confidence

      # The duration (in seconds) of the time interval.
      sig { returns(T.nilable(Float)) }
      attr_reader :duration

      sig { params(duration: Float).void }
      attr_writer :duration

      # The starting point (in seconds) of the time interval.
      sig { returns(T.nilable(Float)) }
      attr_reader :start

      sig { params(start: Float).void }
      attr_writer :start

      sig do
        params(confidence: Float, duration: Float, start: Float).returns(
          T.attached_class
        )
      end
      def self.new(
        # The confidence, from 0.0 to 1.0, of the reliability of the interval.
        confidence: nil,
        # The duration (in seconds) of the time interval.
        duration: nil,
        # The starting point (in seconds) of the time interval.
        start: nil
      )
      end

      sig do
        override.returns({ confidence: Float, duration: Float, start: Float })
      end
      def to_hash
      end
    end
  end
end
