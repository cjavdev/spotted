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

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        sig do
          params(
            published: T::Boolean,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { published: T::Boolean, request_options: Spotted::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
