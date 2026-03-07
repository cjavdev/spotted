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

        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
        # playlist.
        sig { returns(String) }
        attr_accessor :playlist_id

        # Base64 encoded JPEG image data, maximum payload size is 256 KB.
        sig { returns(Spotted::Internal::FileInput) }
        attr_accessor :body

        sig do
          params(
            playlist_id: String,
            body: Spotted::Internal::FileInput,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
          # playlist.
          playlist_id:,
          # Base64 encoded JPEG image data, maximum payload size is 256 KB.
          body:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              playlist_id: String,
              body: Spotted::Internal::FileInput,
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
