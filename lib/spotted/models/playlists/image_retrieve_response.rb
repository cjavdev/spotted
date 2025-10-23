# frozen_string_literal: true

module Spotted
  module Models
    module Playlists
      class ImageRetrieveResponseItem < Spotted::Internal::Type::BaseModel
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

        # @!method initialize(height:, url:, width:)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Playlists::ImageRetrieveResponseItem} for more details.
        #
        #   @param height [Integer, nil] The image height in pixels.
        #
        #   @param url [String] The source URL of the image.
        #
        #   @param width [Integer, nil] The image width in pixels.
      end

      # @type [Spotted::Internal::Type::Converter]
      ImageRetrieveResponse =
        Spotted::Internal::Type::ArrayOf[-> { Spotted::Models::Playlists::ImageRetrieveResponseItem }]
    end
  end
end
