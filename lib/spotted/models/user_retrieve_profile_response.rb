# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Users#retrieve_profile
    class UserRetrieveProfileResponse < Spotted::Internal::Type::BaseModel
      # @!attribute id
      #   The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
      #   user.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute display_name
      #   The name displayed on the user's profile. `null` if not available.
      #
      #   @return [String, nil]
      optional :display_name, String, nil?: true

      # @!attribute external_urls
      #   Known public external URLs for this user.
      #
      #   @return [Spotted::Models::UserRetrieveProfileResponse::ExternalURLs, nil]
      optional :external_urls, -> { Spotted::Models::UserRetrieveProfileResponse::ExternalURLs }

      # @!attribute followers
      #   Information about the followers of this user.
      #
      #   @return [Spotted::Models::UserRetrieveProfileResponse::Followers, nil]
      optional :followers, -> { Spotted::Models::UserRetrieveProfileResponse::Followers }

      # @!attribute href
      #   A link to the Web API endpoint for this user.
      #
      #   @return [String, nil]
      optional :href, String

      # @!attribute images
      #   The user's profile image.
      #
      #   @return [Array<Spotted::Models::UserRetrieveProfileResponse::Image>, nil]
      optional :images,
               -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::UserRetrieveProfileResponse::Image] }

      # @!attribute type
      #   The object type.
      #
      #   @return [Symbol, Spotted::Models::UserRetrieveProfileResponse::Type, nil]
      optional :type, enum: -> { Spotted::Models::UserRetrieveProfileResponse::Type }

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this
      #   user.
      #
      #   @return [String, nil]
      optional :uri, String

      # @!method initialize(id: nil, display_name: nil, external_urls: nil, followers: nil, href: nil, images: nil, type: nil, uri: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::UserRetrieveProfileResponse} for more details.
      #
      #   @param id [String] The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
      #
      #   @param display_name [String, nil] The name displayed on the user's profile. `null` if not available.
      #
      #   @param external_urls [Spotted::Models::UserRetrieveProfileResponse::ExternalURLs] Known public external URLs for this user.
      #
      #   @param followers [Spotted::Models::UserRetrieveProfileResponse::Followers] Information about the followers of this user.
      #
      #   @param href [String] A link to the Web API endpoint for this user.
      #
      #   @param images [Array<Spotted::Models::UserRetrieveProfileResponse::Image>] The user's profile image.
      #
      #   @param type [Symbol, Spotted::Models::UserRetrieveProfileResponse::Type] The object type.
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this use

      # @see Spotted::Models::UserRetrieveProfileResponse#external_urls
      class ExternalURLs < Spotted::Internal::Type::BaseModel
        # @!attribute spotify
        #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
        #   object.
        #
        #   @return [String, nil]
        optional :spotify, String

        # @!method initialize(spotify: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::UserRetrieveProfileResponse::ExternalURLs} for more details.
        #
        #   Known public external URLs for this user.
        #
        #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
      end

      # @see Spotted::Models::UserRetrieveProfileResponse#followers
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
        #   {Spotted::Models::UserRetrieveProfileResponse::Followers} for more details.
        #
        #   Information about the followers of this user.
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
        #   {Spotted::Models::UserRetrieveProfileResponse::Image} for more details.
        #
        #   @param height [Integer, nil] The image height in pixels.
        #
        #   @param url [String] The source URL of the image.
        #
        #   @param width [Integer, nil] The image width in pixels.
      end

      # The object type.
      #
      # @see Spotted::Models::UserRetrieveProfileResponse#type
      module Type
        extend Spotted::Internal::Type::Enum

        USER = :user

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
