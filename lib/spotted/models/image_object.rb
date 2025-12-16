# frozen_string_literal: true

module Spotted
  module Models
    class ImageObject < Spotted::Internal::Type::BaseModel
      # @!attribute height
      #   The image height in pixels.
      #
      #   @return [Integer, nil]
      required :height, Integer, nil?: true

      # @!attribute url
      #   The source URL of the image.
      #
      #   @return [String]
      required :url, String

      # @!attribute width
      #   The image width in pixels.
      #
      #   @return [Integer, nil]
      required :width, Integer, nil?: true

      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!method initialize(height:, url:, width:, published: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ImageObject} for more details.
      #
      #   @param height [Integer, nil] The image height in pixels.
      #
      #   @param url [String] The source URL of the image.
      #
      #   @param width [Integer, nil] The image width in pixels.
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
    end
  end
end
