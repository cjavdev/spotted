# frozen_string_literal: true

module Spotted
  module Models
    class TrackRestrictionObject < Spotted::Internal::Type::BaseModel
      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!attribute reason
      #   The reason for the restriction. Supported values:
      #
      #   - `market` - The content item is not available in the given market.
      #   - `product` - The content item is not available for the user's subscription
      #     type.
      #   - `explicit` - The content item is explicit and the user's account is set to not
      #     play explicit content.
      #
      #   Additional reasons may be added in the future. **Note**: If you use this field,
      #   make sure that your application safely handles unknown values.
      #
      #   @return [String, nil]
      optional :reason, String

      # @!method initialize(published: nil, reason: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::TrackRestrictionObject} for more details.
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param reason [String] The reason for the restriction. Supported values:
    end
  end
end
