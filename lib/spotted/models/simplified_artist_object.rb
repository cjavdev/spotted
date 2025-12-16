# frozen_string_literal: true

module Spotted
  module Models
    class SimplifiedArtistObject < Spotted::Internal::Type::BaseModel
      # @!attribute id
      #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   artist.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute external_urls
      #   Known external URLs for this artist.
      #
      #   @return [Spotted::Models::ExternalURLObject, nil]
      optional :external_urls, -> { Spotted::ExternalURLObject }

      # @!attribute href
      #   A link to the Web API endpoint providing full details of the artist.
      #
      #   @return [String, nil]
      optional :href, String

      # @!attribute name
      #   The name of the artist.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!attribute type
      #   The object type.
      #
      #   @return [Symbol, Spotted::Models::SimplifiedArtistObject::Type, nil]
      optional :type, enum: -> { Spotted::SimplifiedArtistObject::Type }

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   artist.
      #
      #   @return [String, nil]
      optional :uri, String

      # @!method initialize(id: nil, external_urls: nil, href: nil, name: nil, published: nil, type: nil, uri: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::SimplifiedArtistObject} for more details.
      #
      #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
      #
      #   @param external_urls [Spotted::Models::ExternalURLObject] Known external URLs for this artist.
      #
      #   @param href [String] A link to the Web API endpoint providing full details of the artist.
      #
      #   @param name [String] The name of the artist.
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param type [Symbol, Spotted::Models::SimplifiedArtistObject::Type] The object type.
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

      # The object type.
      #
      # @see Spotted::Models::SimplifiedArtistObject#type
      module Type
        extend Spotted::Internal::Type::Enum

        ARTIST = :artist

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
