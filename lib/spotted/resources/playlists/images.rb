# frozen_string_literal: true

module Spotted
  module Resources
    class Playlists
      class Images
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Playlists::ImageUpdateParams} for more details.
        #
        # Replace the image used to represent a specific playlist.
        #
        # @overload update(playlist_id, body:, request_options: {})
        #
        # @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
        #
        # @param body [Pathname, StringIO, IO, String, Spotted::FilePart] Base64 encoded JPEG image data, maximum payload size is 256 KB.
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see Spotted::Models::Playlists::ImageUpdateParams
        def update(playlist_id, params)
          parsed, options = Spotted::Playlists::ImageUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["playlists/%1$s/images", playlist_id],
            headers: {"content-type" => "image/jpeg", "accept" => "application/binary"},
            body: parsed[:body],
            model: StringIO,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Playlists::ImageListParams} for more details.
        #
        # Get the current image associated with a specific playlist.
        #
        # @overload list(playlist_id, request_options: {})
        #
        # @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Spotted::Models::ImageObject>]
        #
        # @see Spotted::Models::Playlists::ImageListParams
        def list(playlist_id, params = {})
          @client.request(
            method: :get,
            path: ["playlists/%1$s/images", playlist_id],
            model: Spotted::Internal::Type::ArrayOf[Spotted::ImageObject],
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Spotted::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
