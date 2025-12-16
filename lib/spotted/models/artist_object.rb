# frozen_string_literal: true

module Spotted
  module Models
    class ArtistObject < Spotted::Internal::Type::BaseModel
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

      # @!attribute followers
      #   Information about the followers of the artist.
      #
      #   @return [Spotted::Models::FollowersObject, nil]
      optional :followers, -> { Spotted::FollowersObject }

      # @!attribute genres
      #   A list of the genres the artist is associated with. If not yet classified, the
      #   array is empty.
      #
      #   @return [Array<String>, nil]
      optional :genres, Spotted::Internal::Type::ArrayOf[String]

      # @!attribute href
      #   A link to the Web API endpoint providing full details of the artist.
      #
      #   @return [String, nil]
      optional :href, String

      # @!attribute images
      #   Images of the artist in various sizes, widest first.
      #
      #   @return [Array<Spotted::Models::ImageObject>, nil]
      optional :images, -> { Spotted::Internal::Type::ArrayOf[Spotted::ImageObject] }

      # @!attribute name
      #   The name of the artist.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute popularity
      #   The popularity of the artist. The value will be between 0 and 100, with 100
      #   being the most popular. The artist's popularity is calculated from the
      #   popularity of all the artist's tracks.
      #
      #   @return [Integer, nil]
      optional :popularity, Integer

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
      #   @return [Symbol, Spotted::Models::ArtistObject::Type, nil]
      optional :type, enum: -> { Spotted::ArtistObject::Type }

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   artist.
      #
      #   @return [String, nil]
      optional :uri, String

      # @!method initialize(id: nil, external_urls: nil, followers: nil, genres: nil, href: nil, images: nil, name: nil, popularity: nil, published: nil, type: nil, uri: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ArtistObject} for more details.
      #
      #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
      #
      #   @param external_urls [Spotted::Models::ExternalURLObject] Known external URLs for this artist.
      #
      #   @param followers [Spotted::Models::FollowersObject] Information about the followers of the artist.
      #
      #   @param genres [Array<String>] A list of the genres the artist is associated with. If not yet classified, the a
      #
      #   @param href [String] A link to the Web API endpoint providing full details of the artist.
      #
      #   @param images [Array<Spotted::Models::ImageObject>] Images of the artist in various sizes, widest first.
      #
      #   @param name [String] The name of the artist.
      #
      #   @param popularity [Integer] The popularity of the artist. The value will be between 0 and 100, with 100 bein
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param type [Symbol, Spotted::Models::ArtistObject::Type] The object type.
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

      # The object type.
      #
      # @see Spotted::Models::ArtistObject#type
      module Type
        extend Spotted::Internal::Type::Enum

        ARTIST = :artist

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
