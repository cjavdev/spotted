# typed: strong

module Spotted
  module Models
    class MarketListResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::Models::MarketListResponse, Spotted::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :markets

      sig { params(markets: T::Array[String]).void }
      attr_writer :markets

      sig { params(markets: T::Array[String]).returns(T.attached_class) }
      def self.new(markets: nil)
      end

      sig { override.returns({ markets: T::Array[String] }) }
      def to_hash
      end
    end
  end
end
