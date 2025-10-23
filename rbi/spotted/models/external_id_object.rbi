# typed: strong

module Spotted
  module Models
    class ExternalIDObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::ExternalIDObject, Spotted::Internal::AnyHash)
        end

      # [International Article Number](http://en.wikipedia.org/wiki/International_Article_Number_%28EAN%29)
      sig { returns(T.nilable(String)) }
      attr_reader :ean

      sig { params(ean: String).void }
      attr_writer :ean

      # [International Standard Recording Code](http://en.wikipedia.org/wiki/International_Standard_Recording_Code)
      sig { returns(T.nilable(String)) }
      attr_reader :isrc

      sig { params(isrc: String).void }
      attr_writer :isrc

      # [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
      sig { returns(T.nilable(String)) }
      attr_reader :upc

      sig { params(upc: String).void }
      attr_writer :upc

      sig do
        params(ean: String, isrc: String, upc: String).returns(T.attached_class)
      end
      def self.new(
        # [International Article Number](http://en.wikipedia.org/wiki/International_Article_Number_%28EAN%29)
        ean: nil,
        # [International Standard Recording Code](http://en.wikipedia.org/wiki/International_Standard_Recording_Code)
        isrc: nil,
        # [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
        upc: nil
      )
      end

      sig { override.returns({ ean: String, isrc: String, upc: String }) }
      def to_hash
      end
    end
  end
end
