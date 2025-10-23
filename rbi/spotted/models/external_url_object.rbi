# typed: strong

module Spotted
  module Models
    class ExternalURLObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::ExternalURLObject, Spotted::Internal::AnyHash)
        end

      # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
      # object.
      sig { returns(T.nilable(String)) }
      attr_reader :spotify

      sig { params(spotify: String).void }
      attr_writer :spotify

      sig { params(spotify: String).returns(T.attached_class) }
      def self.new(
        # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
        # object.
        spotify: nil
      )
      end

      sig { override.returns({ spotify: String }) }
      def to_hash
      end
    end
  end
end
