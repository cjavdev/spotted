# frozen_string_literal: true

module Spotted
  module Resources
    class AudioAnalysis
      # @deprecated
      #
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::AudioAnalysisRetrieveParams} for more details.
      #
      # Get a low-level audio analysis for a track in the Spotify catalog. The audio
      # analysis describes the track’s structure and musical content, including rhythm,
      # pitch, and timbre.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids)
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::AudioAnalysisRetrieveResponse]
      #
      # @see Spotted::Models::AudioAnalysisRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["audio-analysis/%1$s", id],
          model: Spotted::Models::AudioAnalysisRetrieveResponse,
          options: params[:request_options]
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
