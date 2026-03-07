# typed: strong

module Spotted
  module Models
    class UserRetrieveProfileParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Spotted::UserRetrieveProfileParams, Spotted::Internal::AnyHash)
        end

      # The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
      sig { returns(String) }
      attr_accessor :user_id

      sig do
        params(
          user_id: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
        user_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { user_id: String, request_options: Spotted::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
