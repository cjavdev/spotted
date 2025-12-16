# typed: strong

module Spotted
  module Models
    class EpisodeRestrictionObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::EpisodeRestrictionObject, Spotted::Internal::AnyHash)
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

      # The reason for the restriction. Supported values:
      #
      # - `market` - The content item is not available in the given market.
      # - `product` - The content item is not available for the user's subscription
      #   type.
      # - `explicit` - The content item is explicit and the user's account is set to not
      #   play explicit content.
      #
      # Additional reasons may be added in the future. **Note**: If you use this field,
      # make sure that your application safely handles unknown values.
      sig { returns(T.nilable(String)) }
      attr_reader :reason

      sig { params(reason: String).void }
      attr_writer :reason

      sig do
        params(published: T::Boolean, reason: String).returns(T.attached_class)
      end
      def self.new(
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # The reason for the restriction. Supported values:
        #
        # - `market` - The content item is not available in the given market.
        # - `product` - The content item is not available for the user's subscription
        #   type.
        # - `explicit` - The content item is explicit and the user's account is set to not
        #   play explicit content.
        #
        # Additional reasons may be added in the future. **Note**: If you use this field,
        # make sure that your application safely handles unknown values.
        reason: nil
      )
      end

      sig { override.returns({ published: T::Boolean, reason: String }) }
      def to_hash
      end
    end
  end
end
