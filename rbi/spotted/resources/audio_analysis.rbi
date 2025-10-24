# typed: strong

module Spotted
  module Resources
    class AudioAnalysis
      # Get a low-level audio analysis for a track in the Spotify catalog. The audio
      # analysis describes the track’s structure and musical content, including rhythm,
      # pitch, and timbre.
      sig do
        params(
          id: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::AudioAnalysisRetrieveResponse)
      end
      def retrieve(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # track.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Spotted::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
