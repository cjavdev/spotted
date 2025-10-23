# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Artists#retrieve
    class ArtistRetrieveResponse < Spotted::Internal::Type::BaseModel
      # @!attribute id
      #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   artist.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute external_urls
      #   Known external URLs for this artist.
      #
      #   @return [Spotted::Models::ArtistRetrieveResponse::ExternalURLs, nil]
      optional :external_urls, -> { Spotted::Models::ArtistRetrieveResponse::ExternalURLs }

      # @!attribute followers
      #   Information about the followers of the artist.
      #
      #   @return [Spotted::Models::ArtistRetrieveResponse::Followers, nil]
      optional :followers, -> { Spotted::Models::ArtistRetrieveResponse::Followers }

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
      #   @return [Array<Spotted::Models::ArtistRetrieveResponse::Image>, nil]
      optional :images, -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::ArtistRetrieveResponse::Image] }

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

      # @!attribute type
      #   The object type.
      #
      #   @return [Symbol, Spotted::Models::ArtistRetrieveResponse::Type, nil]
      optional :type, enum: -> { Spotted::Models::ArtistRetrieveResponse::Type }

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   artist.
      #
      #   @return [String, nil]
      optional :uri, String

      # @!method initialize(id: nil, external_urls: nil, followers: nil, genres: nil, href: nil, images: nil, name: nil, popularity: nil, type: nil, uri: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ArtistRetrieveResponse} for more details.
      #
      #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
      #
      #   @param external_urls [Spotted::Models::ArtistRetrieveResponse::ExternalURLs] Known external URLs for this artist.
      #
      #   @param followers [Spotted::Models::ArtistRetrieveResponse::Followers] Information about the followers of the artist.
      #
      #   @param genres [Array<String>] A list of the genres the artist is associated with. If not yet classified, the a
      #
      #   @param href [String] A link to the Web API endpoint providing full details of the artist.
      #
      #   @param images [Array<Spotted::Models::ArtistRetrieveResponse::Image>] Images of the artist in various sizes, widest first.
      #
      #   @param name [String] The name of the artist.
      #
      #   @param popularity [Integer] The popularity of the artist. The value will be between 0 and 100, with 100 bein
      #
      #   @param type [Symbol, Spotted::Models::ArtistRetrieveResponse::Type] The object type.
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

      # @see Spotted::Models::ArtistRetrieveResponse#external_urls
      class ExternalURLs < Spotted::Internal::Type::BaseModel
        # @!attribute spotify
        #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
        #   object.
        #
        #   @return [String, nil]
        optional :spotify, String

        # @!method initialize(spotify: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::ArtistRetrieveResponse::ExternalURLs} for more details.
        #
        #   Known external URLs for this artist.
        #
        #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
      end

      # @see Spotted::Models::ArtistRetrieveResponse#followers
      class Followers < Spotted::Internal::Type::BaseModel
        # @!attribute href
        #   This will always be set to null, as the Web API does not support it at the
        #   moment.
        #
        #   @return [String, nil]
        optional :href, String, nil?: true

        # @!attribute total
        #   The total number of followers.
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(href: nil, total: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::ArtistRetrieveResponse::Followers} for more details.
        #
        #   Information about the followers of the artist.
        #
        #   @param href [String, nil] This will always be set to null, as the Web API does not support it at the momen
        #
        #   @param total [Integer] The total number of followers.
      end

      class Image < Spotted::Internal::Type::BaseModel
        # @!attribute height
        #   The image height in pixels.
        #
        #   @return [Integer, nil]
        required :height, Integer, nil?: true

        # @!attribute url
        #   The source URL of the image.
        #
        #   @return [String]
        required :url, String

        # @!attribute width
        #   The image width in pixels.
        #
        #   @return [Integer, nil]
        required :width, Integer, nil?: true

        # @!method initialize(height:, url:, width:)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::ArtistRetrieveResponse::Image} for more details.
        #
        #   @param height [Integer, nil] The image height in pixels.
        #
        #   @param url [String] The source URL of the image.
        #
        #   @param width [Integer, nil] The image width in pixels.
      end

      # The object type.
      #
      # @see Spotted::Models::ArtistRetrieveResponse#type
      module Type
        extend Spotted::Internal::Type::Enum

        ARTIST = :artist

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
