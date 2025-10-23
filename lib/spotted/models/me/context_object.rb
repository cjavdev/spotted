# frozen_string_literal: true

module Spotted
  module Models
    module Me
      class ContextObject < Spotted::Internal::Type::BaseModel
        # @!attribute external_urls
        #   External URLs for this context.
        #
        #   @return [Spotted::Models::ExternalURLObject, nil]
        optional :external_urls, -> { Spotted::ExternalURLObject }

        # @!attribute href
        #   A link to the Web API endpoint providing full details of the track.
        #
        #   @return [String, nil]
        optional :href, String

        # @!attribute type
        #   The object type, e.g. "artist", "playlist", "album", "show".
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute uri
        #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        #   context.
        #
        #   @return [String, nil]
        optional :uri, String

        # @!method initialize(external_urls: nil, href: nil, type: nil, uri: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::ContextObject} for more details.
        #
        #   @param external_urls [Spotted::Models::ExternalURLObject] External URLs for this context.
        #
        #   @param href [String] A link to the Web API endpoint providing full details of the track.
        #
        #   @param type [String] The object type, e.g. "artist", "playlist", "album", "show".
        #
        #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the cont
      end
    end
  end
end
