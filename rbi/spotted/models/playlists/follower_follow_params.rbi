# typed: strong

module Spotted
  module Models
    module Playlists
      class FollowerFollowParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Playlists::FollowerFollowParams,
              Spotted::Internal::AnyHash
            )
          end

        # Defaults to `true`. If `true` the playlist will be included in user's public
        # playlists (added to profile), if `false` it will remain private. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :public

        sig { params(public: T::Boolean).void }
        attr_writer :public

        sig do
          params(
            public: T::Boolean,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Defaults to `true`. If `true` the playlist will be included in user's public
          # playlists (added to profile), if `false` it will remain private. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          public: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { public: T::Boolean, request_options: Spotted::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
