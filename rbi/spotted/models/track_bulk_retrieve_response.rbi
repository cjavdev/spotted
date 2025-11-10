# typed: strong

module Spotted
  module Models
    class TrackBulkRetrieveResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::TrackBulkRetrieveResponse,
            Spotted::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Spotted::TrackObject]) }
      attr_accessor :tracks

      sig do
        params(tracks: T::Array[Spotted::TrackObject::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(tracks:)
      end

      sig { override.returns({ tracks: T::Array[Spotted::TrackObject] }) }
      def to_hash
      end
    end
  end
end
