# typed: strong

module Spotted
  module Models
    class MeRetrieveResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::Models::MeRetrieveResponse, Spotted::Internal::AnyHash)
        end

      # The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      # user.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The country of the user, as set in the user's account profile. An
      # [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
      # _This field is only available when the current user has granted access to the
      # [user-read-private](/documentation/web-api/concepts/scopes/#list-of-scopes)
      # scope._
      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { params(country: String).void }
      attr_writer :country

      # The name displayed on the user's profile. `null` if not available.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # The user's email address, as entered by the user when creating their account.
      # _**Important!** This email address is unverified; there is no proof that it
      # actually belongs to the user._ _This field is only available when the current
      # user has granted access to the
      # [user-read-email](/documentation/web-api/concepts/scopes/#list-of-scopes)
      # scope._
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # The user's explicit content settings. _This field is only available when the
      # current user has granted access to the
      # [user-read-private](/documentation/web-api/concepts/scopes/#list-of-scopes)
      # scope._
      sig do
        returns(T.nilable(Spotted::Models::MeRetrieveResponse::ExplicitContent))
      end
      attr_reader :explicit_content

      sig do
        params(
          explicit_content:
            Spotted::Models::MeRetrieveResponse::ExplicitContent::OrHash
        ).void
      end
      attr_writer :explicit_content

      # Known external URLs for this user.
      sig { returns(T.nilable(Spotted::ExternalURLObject)) }
      attr_reader :external_urls

      sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
      attr_writer :external_urls

      # Information about the followers of the user.
      sig { returns(T.nilable(Spotted::FollowersObject)) }
      attr_reader :followers

      sig { params(followers: Spotted::FollowersObject::OrHash).void }
      attr_writer :followers

      # A link to the Web API endpoint for this user.
      sig { returns(T.nilable(String)) }
      attr_reader :href

      sig { params(href: String).void }
      attr_writer :href

      # The user's profile image.
      sig { returns(T.nilable(T::Array[Spotted::ImageObject])) }
      attr_reader :images

      sig { params(images: T::Array[Spotted::ImageObject::OrHash]).void }
      attr_writer :images

      # The user's Spotify subscription level: "premium", "free", etc. (The subscription
      # level "open" can be considered the same as "free".) _This field is only
      # available when the current user has granted access to the
      # [user-read-private](/documentation/web-api/concepts/scopes/#list-of-scopes)
      # scope._
      sig { returns(T.nilable(String)) }
      attr_reader :product

      sig { params(product: String).void }
      attr_writer :product

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

      # The object type: "user"
      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      # user.
      sig { returns(T.nilable(String)) }
      attr_reader :uri

      sig { params(uri: String).void }
      attr_writer :uri

      sig do
        params(
          id: String,
          country: String,
          display_name: String,
          email: String,
          explicit_content:
            Spotted::Models::MeRetrieveResponse::ExplicitContent::OrHash,
          external_urls: Spotted::ExternalURLObject::OrHash,
          followers: Spotted::FollowersObject::OrHash,
          href: String,
          images: T::Array[Spotted::ImageObject::OrHash],
          product: String,
          published: T::Boolean,
          type: String,
          uri: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # user.
        id: nil,
        # The country of the user, as set in the user's account profile. An
        # [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
        # _This field is only available when the current user has granted access to the
        # [user-read-private](/documentation/web-api/concepts/scopes/#list-of-scopes)
        # scope._
        country: nil,
        # The name displayed on the user's profile. `null` if not available.
        display_name: nil,
        # The user's email address, as entered by the user when creating their account.
        # _**Important!** This email address is unverified; there is no proof that it
        # actually belongs to the user._ _This field is only available when the current
        # user has granted access to the
        # [user-read-email](/documentation/web-api/concepts/scopes/#list-of-scopes)
        # scope._
        email: nil,
        # The user's explicit content settings. _This field is only available when the
        # current user has granted access to the
        # [user-read-private](/documentation/web-api/concepts/scopes/#list-of-scopes)
        # scope._
        explicit_content: nil,
        # Known external URLs for this user.
        external_urls: nil,
        # Information about the followers of the user.
        followers: nil,
        # A link to the Web API endpoint for this user.
        href: nil,
        # The user's profile image.
        images: nil,
        # The user's Spotify subscription level: "premium", "free", etc. (The subscription
        # level "open" can be considered the same as "free".) _This field is only
        # available when the current user has granted access to the
        # [user-read-private](/documentation/web-api/concepts/scopes/#list-of-scopes)
        # scope._
        product: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # The object type: "user"
        type: nil,
        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        # user.
        uri: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            country: String,
            display_name: String,
            email: String,
            explicit_content:
              Spotted::Models::MeRetrieveResponse::ExplicitContent,
            external_urls: Spotted::ExternalURLObject,
            followers: Spotted::FollowersObject,
            href: String,
            images: T::Array[Spotted::ImageObject],
            product: String,
            published: T::Boolean,
            type: String,
            uri: String
          }
        )
      end
      def to_hash
      end

      class ExplicitContent < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::MeRetrieveResponse::ExplicitContent,
              Spotted::Internal::AnyHash
            )
          end

        # When `true`, indicates that explicit content should not be played.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :filter_enabled

        sig { params(filter_enabled: T::Boolean).void }
        attr_writer :filter_enabled

        # When `true`, indicates that the explicit content setting is locked and can't be
        # changed by the user.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :filter_locked

        sig { params(filter_locked: T::Boolean).void }
        attr_writer :filter_locked

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        # The user's explicit content settings. _This field is only available when the
        # current user has granted access to the
        # [user-read-private](/documentation/web-api/concepts/scopes/#list-of-scopes)
        # scope._
        sig do
          params(
            filter_enabled: T::Boolean,
            filter_locked: T::Boolean,
            published: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # When `true`, indicates that explicit content should not be played.
          filter_enabled: nil,
          # When `true`, indicates that the explicit content setting is locked and can't be
          # changed by the user.
          filter_locked: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil
        )
        end

        sig do
          override.returns(
            {
              filter_enabled: T::Boolean,
              filter_locked: T::Boolean,
              published: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
