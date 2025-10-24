# typed: strong

module Spotted
  module Models
    class ShowListResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::Models::ShowListResponse, Spotted::Internal::AnyHash)
        end

      sig { returns(T::Array[Spotted::ShowBase]) }
      attr_accessor :shows

      sig do
        params(shows: T::Array[Spotted::ShowBase::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(shows:)
      end

      sig { override.returns({ shows: T::Array[Spotted::ShowBase] }) }
      def to_hash
      end
    end
  end
end
