# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::AudioFeatures#list
    class AudioFeatureListParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      # @!attribute ids
      #   A comma-separated list of the
      #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the tracks.
      #   Maximum: 100 IDs.
      #
      #   @return [String]
      required :ids, String

      # @!method initialize(ids:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::AudioFeatureListParams} for more details.
      #
      #   @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
      #
      #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
