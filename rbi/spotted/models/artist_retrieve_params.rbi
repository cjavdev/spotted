# typed: strong

module Spotted
  module Models
    class ArtistRetrieveParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Spotted::ArtistRetrieveParams, Spotted::Internal::AnyHash)
        end

      # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
      # artist.
      sig { returns(String) }
      attr_accessor :id

      sig do
        params(
          id: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
        # artist.
        id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { id: String, request_options: Spotted::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
