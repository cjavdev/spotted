# typed: strong

module Spotted
  module Resources
    class AudioFeatures
      # Get audio feature information for a single track identified by its unique
      # Spotify ID.
      sig do
        params(
          id: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::AudioFeatureRetrieveResponse)
      end
      def retrieve(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # track.
        id,
        request_options: {}
      )
      end

      # Get audio features for multiple tracks based on their Spotify IDs.
      sig do
        params(
          ids: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::AudioFeatureBulkRetrieveResponse)
      end
      def bulk_retrieve(
        # A comma-separated list of the
        # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the tracks.
        # Maximum: 100 IDs.
        ids:,
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
