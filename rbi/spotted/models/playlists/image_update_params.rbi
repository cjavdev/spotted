# typed: strong

module Spotted
  module Models
    module Playlists
      class ImageUpdateParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Playlists::ImageUpdateParams,
              Spotted::Internal::AnyHash
            )
          end

        # Base64 encoded JPEG image data, maximum payload size is 256 KB.
        sig { returns(T.nilable(String)) }
        attr_reader :body

        sig { params(body: String).void }
        attr_writer :body

        sig do
          params(
            body: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Base64 encoded JPEG image data, maximum payload size is 256 KB.
          body: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { body: String, request_options: Spotted::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
