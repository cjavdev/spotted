# typed: strong

module Spotted
  module Models
    module Playlists
      class FollowerUnfollowParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Playlists::FollowerUnfollowParams,
              Spotted::Internal::AnyHash
            )
          end

        sig do
          params(request_options: Spotted::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig { override.returns({ request_options: Spotted::RequestOptions }) }
        def to_hash
        end
      end
    end
  end
end
