# frozen_string_literal: true

module Spotted
  module Models
    class FollowersObject < Spotted::Internal::Type::BaseModel
      # @!attribute href
      #   This will always be set to null, as the Web API does not support it at the
      #   moment.
      #
      #   @return [String, nil]
      optional :href, String, nil?: true

      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!attribute total
      #   The total number of followers.
      #
      #   @return [Integer, nil]
      optional :total, Integer

      # @!method initialize(href: nil, published: nil, total: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::FollowersObject} for more details.
      #
      #   @param href [String, nil] This will always be set to null, as the Web API does not support it at the momen
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param total [Integer] The total number of followers.
    end
  end
end
