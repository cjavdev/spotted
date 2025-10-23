# frozen_string_literal: true

module Spotted
  module Models
    class LinkedTrackObject < Spotted::Internal::Type::BaseModel
      # @!attribute id
      #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   track.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute external_urls
      #   Known external URLs for this track.
      #
      #   @return [Spotted::Models::ExternalURLObject, nil]
      optional :external_urls, -> { Spotted::ExternalURLObject }

      # @!attribute href
      #   A link to the Web API endpoint providing full details of the track.
      #
      #   @return [String, nil]
      optional :href, String

      # @!attribute type
      #   The object type: "track".
      #
      #   @return [String, nil]
      optional :type, String

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   track.
      #
      #   @return [String, nil]
      optional :uri, String

      # @!method initialize(id: nil, external_urls: nil, href: nil, type: nil, uri: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::LinkedTrackObject} for more details.
      #
      #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track
      #
      #   @param external_urls [Spotted::Models::ExternalURLObject] Known external URLs for this track.
      #
      #   @param href [String] A link to the Web API endpoint providing full details of the track.
      #
      #   @param type [String] The object type: "track".
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the trac
    end
  end
end
