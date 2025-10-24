# frozen_string_literal: true

module Spotted
  module Models
    module Playlists
      # @see Spotted::Resources::Playlists::Images#update
      class ImageUpdateParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute body
        #   Base64 encoded JPEG image data, maximum payload size is 256 KB.
        #
        #   @return [String]
        required :body, String

        # @!method initialize(body:, request_options: {})
        #   @param body [String] Base64 encoded JPEG image data, maximum payload size is 256 KB.
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
