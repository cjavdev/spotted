# typed: strong

module Spotted
  module Models
    class NarratorObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::NarratorObject, Spotted::Internal::AnyHash)
        end

      # The name of the Narrator.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { params(name: String).returns(T.attached_class) }
      def self.new(
        # The name of the Narrator.
        name: nil
      )
      end

      sig { override.returns({ name: String }) }
      def to_hash
      end
    end
  end
end
