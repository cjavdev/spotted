# frozen_string_literal: true

module Spotted
  module Resources
    class AudioFeatures
      # @deprecated
      #
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::AudioFeatureRetrieveParams} for more details.
      #
      # Get audio feature information for a single track identified by its unique
      # Spotify ID.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::AudioFeatureRetrieveResponse]
      #
      # @see Spotted::Models::AudioFeatureRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["audio-features/%1$s", id],
          model: Spotted::Models::AudioFeatureRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @deprecated
      #
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::AudioFeatureListParams} for more details.
      #
      # Get audio features for multiple tracks based on their Spotify IDs.
      #
      # @overload list(ids:, request_options: {})
      #
      # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::AudioFeatureListResponse]
      #
      # @see Spotted::Models::AudioFeatureListParams
      def list(params)
        parsed, options = Spotted::AudioFeatureListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "audio-features",
          query: parsed,
          model: Spotted::Models::AudioFeatureListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Spotted::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
