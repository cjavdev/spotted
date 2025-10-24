# typed: strong

module Spotted
  module Models
    class AudioFeatureListParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Spotted::AudioFeatureListParams, Spotted::Internal::AnyHash)
        end

      # A comma-separated list of the
      # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the tracks.
      # Maximum: 100 IDs.
      sig { returns(String) }
      attr_accessor :ids

      sig do
        params(
          ids: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A comma-separated list of the
        # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the tracks.
        # Maximum: 100 IDs.
        ids:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { ids: String, request_options: Spotted::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
