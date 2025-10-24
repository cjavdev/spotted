# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Me#retrieve
    class MeRetrieveResponse < Spotted::Internal::Type::BaseModel
      # @!attribute id
      #   The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   user.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute country
      #   The country of the user, as set in the user's account profile. An
      #   [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
      #   _This field is only available when the current user has granted access to the
      #   [user-read-private](/documentation/web-api/concepts/scopes/#list-of-scopes)
      #   scope._
      #
      #   @return [String, nil]
      optional :country, String

      # @!attribute display_name
      #   The name displayed on the user's profile. `null` if not available.
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute email
      #   The user's email address, as entered by the user when creating their account.
      #   _**Important!** This email address is unverified; there is no proof that it
      #   actually belongs to the user._ _This field is only available when the current
      #   user has granted access to the
      #   [user-read-email](/documentation/web-api/concepts/scopes/#list-of-scopes)
      #   scope._
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute explicit_content
      #   The user's explicit content settings. _This field is only available when the
      #   current user has granted access to the
      #   [user-read-private](/documentation/web-api/concepts/scopes/#list-of-scopes)
      #   scope._
      #
      #   @return [Spotted::Models::MeRetrieveResponse::ExplicitContent, nil]
      optional :explicit_content, -> { Spotted::Models::MeRetrieveResponse::ExplicitContent }

      # @!attribute external_urls
      #   Known external URLs for this user.
      #
      #   @return [Spotted::Models::ExternalURLObject, nil]
      optional :external_urls, -> { Spotted::ExternalURLObject }

      # @!attribute followers
      #   Information about the followers of the user.
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

      # @!attribute product
      #   The user's Spotify subscription level: "premium", "free", etc. (The subscription
      #   level "open" can be considered the same as "free".) _This field is only
      #   available when the current user has granted access to the
      #   [user-read-private](/documentation/web-api/concepts/scopes/#list-of-scopes)
      #   scope._
      #
      #   @return [String, nil]
      optional :product, String

      # @!attribute type
      #   The object type: "user"
      #
      #   @return [String, nil]
      optional :type, String

      # @!attribute uri
      #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   user.
      #
      #   @return [String, nil]
      optional :uri, String

      # @!method initialize(id: nil, country: nil, display_name: nil, email: nil, explicit_content: nil, external_urls: nil, followers: nil, href: nil, images: nil, product: nil, type: nil, uri: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::MeRetrieveResponse} for more details.
      #
      #   @param id [String] The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      #
      #   @param country [String] The country of the user, as set in the user's account profile. An [ISO 3166-1 al
      #
      #   @param display_name [String] The name displayed on the user's profile. `null` if not available.
      #
      #   @param email [String] The user's email address, as entered by the user when creating their account.
      #   \_\*
      #
      #   @param explicit_content [Spotted::Models::MeRetrieveResponse::ExplicitContent] The user's explicit content settings. \_This field is only available when the
      #   cur
      #
      #   @param external_urls [Spotted::Models::ExternalURLObject] Known external URLs for this user.
      #
      #   @param followers [Spotted::Models::FollowersObject] Information about the followers of the user.
      #
      #   @param href [String] A link to the Web API endpoint for this user.
      #
      #   @param images [Array<Spotted::Models::ImageObject>] The user's profile image.
      #
      #   @param product [String] The user's Spotify subscription level: "premium", "free", etc. (The subscription
      #
      #   @param type [String] The object type: "user"
      #
      #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the user

      # @see Spotted::Models::MeRetrieveResponse#explicit_content
      class ExplicitContent < Spotted::Internal::Type::BaseModel
        # @!attribute filter_enabled
        #   When `true`, indicates that explicit content should not be played.
        #
        #   @return [Boolean, nil]
        optional :filter_enabled, Spotted::Internal::Type::Boolean

        # @!attribute filter_locked
        #   When `true`, indicates that the explicit content setting is locked and can't be
        #   changed by the user.
        #
        #   @return [Boolean, nil]
        optional :filter_locked, Spotted::Internal::Type::Boolean

        # @!method initialize(filter_enabled: nil, filter_locked: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::MeRetrieveResponse::ExplicitContent} for more details.
        #
        #   The user's explicit content settings. _This field is only available when the
        #   current user has granted access to the
        #   [user-read-private](/documentation/web-api/concepts/scopes/#list-of-scopes)
        #   scope._
        #
        #   @param filter_enabled [Boolean] When `true`, indicates that explicit content should not be played.
        #
        #   @param filter_locked [Boolean] When `true`, indicates that the explicit content setting is locked and can't be
      end
    end
  end
end
