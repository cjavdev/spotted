# frozen_string_literal: true

module Spotted
  module Models
    class EpisodeRestrictionObject < Spotted::Internal::Type::BaseModel
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

      # @!method initialize(reason: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::EpisodeRestrictionObject} for more details.
      #
      #   @param reason [String] The reason for the restriction. Supported values:
    end
  end
end
