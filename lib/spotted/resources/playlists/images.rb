# frozen_string_literal: true

module Spotted
  module Resources
    class Playlists
      class Images
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Playlists::ImageRetrieveParams} for more details.
        #
        # Get the current image associated with a specific playlist.
        #
        # @overload retrieve(playlist_id, request_options: {})
        #
        # @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Spotted::Models::Playlists::ImageRetrieveResponseItem>]
        #
        # @see Spotted::Models::Playlists::ImageRetrieveParams
        def retrieve(playlist_id, params = {})
          @client.request(
            method: :get,
            path: ["playlists/%1$s/images", playlist_id],
            model: Spotted::Internal::Type::ArrayOf[Spotted::Models::Playlists::ImageRetrieveResponseItem],
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Playlists::ImageUpdateParams} for more details.
        #
        # Replace the image used to represent a specific playlist.
        #
        # @overload update(playlist_id, body: nil, request_options: {})
        #
        # @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
        #
        # @param body [String] Base64 encoded JPEG image data, maximum payload size is 256 KB.
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Playlists::ImageUpdateParams
        def update(playlist_id, params = {})
          parsed, options = Spotted::Playlists::ImageUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["playlists/%1$s/images", playlist_id],
            headers: {"content-type" => "image/jpeg"},
            body: parsed[:body],
            model: NilClass,
            options: options
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
