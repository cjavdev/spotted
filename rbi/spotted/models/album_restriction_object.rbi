# typed: strong

module Spotted
  module Models
    class AlbumRestrictionObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::AlbumRestrictionObject, Spotted::Internal::AnyHash)
        end

      # The reason for the restriction. Albums may be restricted if the content is not
      # available in a given market, to the user's subscription type, or when the user's
      # account is set to not play explicit content. Additional reasons may be added in
      # the future.
      sig do
        returns(
          T.nilable(Spotted::AlbumRestrictionObject::Reason::TaggedSymbol)
        )
      end
      attr_reader :reason

      sig do
        params(reason: Spotted::AlbumRestrictionObject::Reason::OrSymbol).void
      end
      attr_writer :reason

      sig do
        params(
          reason: Spotted::AlbumRestrictionObject::Reason::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The reason for the restriction. Albums may be restricted if the content is not
        # available in a given market, to the user's subscription type, or when the user's
        # account is set to not play explicit content. Additional reasons may be added in
        # the future.
        reason: nil
      )
      end

      sig do
        override.returns(
          { reason: Spotted::AlbumRestrictionObject::Reason::TaggedSymbol }
        )
      end
      def to_hash
      end

      # The reason for the restriction. Albums may be restricted if the content is not
      # available in a given market, to the user's subscription type, or when the user's
      # account is set to not play explicit content. Additional reasons may be added in
      # the future.
      module Reason
        extend Spotted::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Spotted::AlbumRestrictionObject::Reason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MARKET =
          T.let(:market, Spotted::AlbumRestrictionObject::Reason::TaggedSymbol)
        PRODUCT =
          T.let(:product, Spotted::AlbumRestrictionObject::Reason::TaggedSymbol)
        EXPLICIT =
          T.let(
            :explicit,
            Spotted::AlbumRestrictionObject::Reason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Spotted::AlbumRestrictionObject::Reason::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
