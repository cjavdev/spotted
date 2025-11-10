# typed: strong

module Spotted
  module Resources
    class Playlists
      class Images
        # Replace the image used to represent a specific playlist.
        sig do
          params(
            playlist_id: String,
            body: Spotted::Internal::FileInput,
            request_options: Spotted::RequestOptions::OrHash
          ).void
        end
        def update(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
          # playlist.
          playlist_id,
          # Base64 encoded JPEG image data, maximum payload size is 256 KB.
          body:,
          request_options: {}
        )
        end

        # Get the current image associated with a specific playlist.
        sig do
          params(
            playlist_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T::Array[Spotted::ImageObject])
        end
        def list(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
          # playlist.
          playlist_id,
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
end
