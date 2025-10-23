# typed: strong

module Spotted
  module Models
    module Me
      module TopListResponse
        extend Spotted::Internal::Type::Union

        Variants =
          T.type_alias { T.any(Spotted::ArtistObject, Spotted::TrackObject) }

        sig do
          override.returns(
            T::Array[Spotted::Models::Me::TopListResponse::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
