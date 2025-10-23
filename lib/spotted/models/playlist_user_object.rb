# frozen_string_literal: true

module Spotted
  module Models
    class PlaylistUserObject < Spotted::Internal::Type::BaseModel
      # @!attribute id
      #   The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
      #   user.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute external_urls
      #   Known public external URLs for this user.
      #
      #   @return [Spotted::Models::ExternalURLObject, nil]
      optional :external_urls, -> { Spotted::ExternalURLObject }

      # @!attribute href
      #   A link to the Web API endpoint for this user.
      #
      #   @return [String, nil]
      optional :href, String

      # @!attribute type
      #   The object type.
      #
      #   @return [Symbol, Spotted::Models::PlaylistUserObject::Type, nil]
      optional :type, enum: -> { Spotted::PlaylistUserObject::Type }

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this
      #   user.
      #
      #   @return [String, nil]
      optional :uri, String

      # @!method initialize(id: nil, external_urls: nil, href: nil, type: nil, uri: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::PlaylistUserObject} for more details.
      #
      #   @param id [String] The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
      #
      #   @param external_urls [Spotted::Models::ExternalURLObject] Known public external URLs for this user.
      #
      #   @param href [String] A link to the Web API endpoint for this user.
      #
      #   @param type [Symbol, Spotted::Models::PlaylistUserObject::Type] The object type.
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this use

      # The object type.
      #
      # @see Spotted::Models::PlaylistUserObject#type
      module Type
        extend Spotted::Internal::Type::Enum

        USER = :user

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
