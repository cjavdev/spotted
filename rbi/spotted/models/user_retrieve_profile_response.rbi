# typed: strong

module Spotted
  module Models
    class UserRetrieveProfileResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::UserRetrieveProfileResponse,
            Spotted::Internal::AnyHash
          )
        end

      # The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
      # user.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The name displayed on the user's profile. `null` if not available.
      sig { returns(T.nilable(String)) }
      attr_accessor :display_name

      # Known public external URLs for this user.
      sig { returns(T.nilable(Spotted::ExternalURLObject)) }
      attr_reader :external_urls

      sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
      attr_writer :external_urls

      # Information about the followers of this user.
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

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

      # The object type.
      sig do
        returns(
          T.nilable(
            Spotted::Models::UserRetrieveProfileResponse::Type::TaggedSymbol
          )
        )
      end
      attr_reader :type

      sig do
        params(
          type: Spotted::Models::UserRetrieveProfileResponse::Type::OrSymbol
        ).void
      end
      attr_writer :type

      # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this
      # user.
      sig { returns(T.nilable(String)) }
      attr_reader :uri

      sig { params(uri: String).void }
      attr_writer :uri

      sig do
        params(
          id: String,
          display_name: T.nilable(String),
          external_urls: Spotted::ExternalURLObject::OrHash,
          followers: Spotted::FollowersObject::OrHash,
          href: String,
          images: T::Array[Spotted::ImageObject::OrHash],
          published: T::Boolean,
          type: Spotted::Models::UserRetrieveProfileResponse::Type::OrSymbol,
          uri: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
        # user.
        id: nil,
        # The name displayed on the user's profile. `null` if not available.
        display_name: nil,
        # Known public external URLs for this user.
        external_urls: nil,
        # Information about the followers of this user.
        followers: nil,
        # A link to the Web API endpoint for this user.
        href: nil,
        # The user's profile image.
        images: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # The object type.
        type: nil,
        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this
        # user.
        uri: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            display_name: T.nilable(String),
            external_urls: Spotted::ExternalURLObject,
            followers: Spotted::FollowersObject,
            href: String,
            images: T::Array[Spotted::ImageObject],
            published: T::Boolean,
            type:
              Spotted::Models::UserRetrieveProfileResponse::Type::TaggedSymbol,
            uri: String
          }
        )
      end
      def to_hash
      end

      # The object type.
      module Type
        extend Spotted::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Spotted::Models::UserRetrieveProfileResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER =
          T.let(
            :user,
            Spotted::Models::UserRetrieveProfileResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Spotted::Models::UserRetrieveProfileResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
