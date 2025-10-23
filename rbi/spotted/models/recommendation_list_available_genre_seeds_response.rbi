# typed: strong

module Spotted
  module Models
    class RecommendationListAvailableGenreSeedsResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::RecommendationListAvailableGenreSeedsResponse,
            Spotted::Internal::AnyHash
          )
        end

      sig { returns(T::Array[String]) }
      attr_accessor :genres

      sig { params(genres: T::Array[String]).returns(T.attached_class) }
      def self.new(genres:)
      end

      sig { override.returns({ genres: T::Array[String] }) }
      def to_hash
      end
    end
  end
end
