# typed: strong

module Spotted
  module Models
    class ArtistBulkRetrieveResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::ArtistBulkRetrieveResponse,
            Spotted::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Spotted::ArtistObject]) }
      attr_accessor :artists

      sig do
        params(artists: T::Array[Spotted::ArtistObject::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(artists:)
      end

      sig { override.returns({ artists: T::Array[Spotted::ArtistObject] }) }
      def to_hash
      end
    end
  end
end
