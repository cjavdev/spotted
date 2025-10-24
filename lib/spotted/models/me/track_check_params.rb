# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Tracks#check
      class TrackCheckParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute ids
        #   A comma-separated list of the
        #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
        #   `ids=4iV5W9uYEdYUVa79Axb7Rh,1301WleyT98MSxVHPZCA6M`. Maximum: 50 IDs.
        #
        #   @return [String]
        required :ids, String

        # @!method initialize(ids:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::TrackCheckParams} for more details.
        #
        #   @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
