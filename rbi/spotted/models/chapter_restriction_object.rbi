# typed: strong

module Spotted
  module Models
    class ChapterRestrictionObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::ChapterRestrictionObject, Spotted::Internal::AnyHash)
        end

      # The reason for the restriction. Supported values:
      #
      # - `market` - The content item is not available in the given market.
      # - `product` - The content item is not available for the user's subscription
      #   type.
      # - `explicit` - The content item is explicit and the user's account is set to not
      #   play explicit content.
      # - `payment_required` - Payment is required to play the content item.
      #
      # Additional reasons may be added in the future. **Note**: If you use this field,
      # make sure that your application safely handles unknown values.
      sig { returns(T.nilable(String)) }
      attr_reader :reason

      sig { params(reason: String).void }
      attr_writer :reason

      sig { params(reason: String).returns(T.attached_class) }
      def self.new(
        # The reason for the restriction. Supported values:
        #
        # - `market` - The content item is not available in the given market.
        # - `product` - The content item is not available for the user's subscription
        #   type.
        # - `explicit` - The content item is explicit and the user's account is set to not
        #   play explicit content.
        # - `payment_required` - Payment is required to play the content item.
        #
        # Additional reasons may be added in the future. **Note**: If you use this field,
        # make sure that your application safely handles unknown values.
        reason: nil
      )
      end

      sig { override.returns({ reason: String }) }
      def to_hash
      end
    end
  end
end
