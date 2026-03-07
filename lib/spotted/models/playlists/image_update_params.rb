# frozen_string_literal: true

module Spotted
  module Models
    module Playlists
      # @see Spotted::Resources::Playlists::Images#update
      class ImageUpdateParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute playlist_id
        #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
        #   playlist.
        #
        #   @return [String]
        required :playlist_id, String

        # @!attribute body
        #   Base64 encoded JPEG image data, maximum payload size is 256 KB.
        #
        #   @return [Pathname, StringIO, IO, String, Spotted::FilePart]
        required :body, Spotted::Internal::Type::FileInput

        # @!method initialize(playlist_id:, body:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Playlists::ImageUpdateParams} for more details.
        #
        #   @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
        #
        #   @param body [Pathname, StringIO, IO, String, Spotted::FilePart] Base64 encoded JPEG image data, maximum payload size is 256 KB.
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
