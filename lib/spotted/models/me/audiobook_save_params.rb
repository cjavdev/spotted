# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Audiobooks#save
      class AudiobookSaveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute ids
        #   A comma-separated list of the
        #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
        #   `ids=18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ`. Maximum: 50 IDs.
        #
        #   @return [String]
        required :ids, String

        # @!method initialize(ids:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::AudiobookSaveParams} for more details.
        #
        #   @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
