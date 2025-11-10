# typed: strong

module Spotted
  module Models
    class EpisodeBulkRetrieveResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::EpisodeBulkRetrieveResponse,
            Spotted::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Spotted::EpisodeObject]) }
      attr_accessor :episodes

      sig do
        params(episodes: T::Array[Spotted::EpisodeObject::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(episodes:)
      end

      sig { override.returns({ episodes: T::Array[Spotted::EpisodeObject] }) }
      def to_hash
      end
    end
  end
end
