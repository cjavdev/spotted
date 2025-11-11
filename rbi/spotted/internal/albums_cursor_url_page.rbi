# typed: strong

module Spotted
  module Internal
    class AlbumsCursorURLPage
      include Spotted::Internal::Type::BasePage

      Elem = type_member

      sig { returns(String) }
      attr_accessor :next_

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :items

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
