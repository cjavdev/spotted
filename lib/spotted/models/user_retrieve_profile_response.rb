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
      #   @return [Spotted::Models::ExternalURLObject, nil]
      optional :external_urls, -> { Spotted::ExternalURLObject }

      # @!attribute followers
      #   Information about the followers of this user.
      #
      #   @return [Spotted::Models::FollowersObject, nil]
      optional :followers, -> { Spotted::FollowersObject }

      # @!attribute href
      #   A link to the Web API endpoint for this user.
      #
      #   @return [String, nil]
      optional :href, String

      # @!attribute images
      #   The user's profile image.
      #
      #   @return [Array<Spotted::Models::ImageObject>, nil]
      optional :images, -> { Spotted::Internal::Type::ArrayOf[Spotted::ImageObject] }

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
      #   @param external_urls [Spotted::Models::ExternalURLObject] Known public external URLs for this user.
      #
      #   @param followers [Spotted::Models::FollowersObject] Information about the followers of this user.
      #
      #   @param href [String] A link to the Web API endpoint for this user.
      #
      #   @param images [Array<Spotted::Models::ImageObject>] The user's profile image.
      #
      #   @param type [Symbol, Spotted::Models::UserRetrieveProfileResponse::Type] The object type.
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this use

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
