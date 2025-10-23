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
      sig do
        returns(
          T.nilable(Spotted::Models::UserRetrieveProfileResponse::ExternalURLs)
        )
      end
      attr_reader :external_urls

      sig do
        params(
          external_urls:
            Spotted::Models::UserRetrieveProfileResponse::ExternalURLs::OrHash
        ).void
      end
      attr_writer :external_urls

      # Information about the followers of this user.
      sig do
        returns(
          T.nilable(Spotted::Models::UserRetrieveProfileResponse::Followers)
        )
      end
      attr_reader :followers

      sig do
        params(
          followers:
            Spotted::Models::UserRetrieveProfileResponse::Followers::OrHash
        ).void
      end
      attr_writer :followers

      # A link to the Web API endpoint for this user.
      sig { returns(T.nilable(String)) }
      attr_reader :href

      sig { params(href: String).void }
      attr_writer :href

      # The user's profile image.
      sig do
        returns(
          T.nilable(
            T::Array[Spotted::Models::UserRetrieveProfileResponse::Image]
          )
        )
      end
      attr_reader :images

      sig do
        params(
          images:
            T::Array[
              Spotted::Models::UserRetrieveProfileResponse::Image::OrHash
            ]
        ).void
      end
      attr_writer :images

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
          external_urls:
            Spotted::Models::UserRetrieveProfileResponse::ExternalURLs::OrHash,
          followers:
            Spotted::Models::UserRetrieveProfileResponse::Followers::OrHash,
          href: String,
          images:
            T::Array[
              Spotted::Models::UserRetrieveProfileResponse::Image::OrHash
            ],
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
            external_urls:
              Spotted::Models::UserRetrieveProfileResponse::ExternalURLs,
            followers: Spotted::Models::UserRetrieveProfileResponse::Followers,
            href: String,
            images:
              T::Array[Spotted::Models::UserRetrieveProfileResponse::Image],
            type:
              Spotted::Models::UserRetrieveProfileResponse::Type::TaggedSymbol,
            uri: String
          }
        )
      end
      def to_hash
      end

      class ExternalURLs < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::UserRetrieveProfileResponse::ExternalURLs,
              Spotted::Internal::AnyHash
            )
          end

        # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
        # object.
        sig { returns(T.nilable(String)) }
        attr_reader :spotify

        sig { params(spotify: String).void }
        attr_writer :spotify

        # Known public external URLs for this user.
        sig { params(spotify: String).returns(T.attached_class) }
        def self.new(
          # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
          # object.
          spotify: nil
        )
        end

        sig { override.returns({ spotify: String }) }
        def to_hash
        end
      end

      class Followers < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::UserRetrieveProfileResponse::Followers,
              Spotted::Internal::AnyHash
            )
          end

        # This will always be set to null, as the Web API does not support it at the
        # moment.
        sig { returns(T.nilable(String)) }
        attr_accessor :href

        # The total number of followers.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        # Information about the followers of this user.
        sig do
          params(href: T.nilable(String), total: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # This will always be set to null, as the Web API does not support it at the
          # moment.
          href: nil,
          # The total number of followers.
          total: nil
        )
        end

        sig { override.returns({ href: T.nilable(String), total: Integer }) }
        def to_hash
        end
      end

      class Image < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::UserRetrieveProfileResponse::Image,
              Spotted::Internal::AnyHash
            )
          end

        # The image height in pixels.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :height

        # The source URL of the image.
        sig { returns(String) }
        attr_accessor :url

        # The image width in pixels.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :width

        sig do
          params(
            height: T.nilable(Integer),
            url: String,
            width: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # The image height in pixels.
          height:,
          # The source URL of the image.
          url:,
          # The image width in pixels.
          width:
        )
        end

        sig do
          override.returns(
            {
              height: T.nilable(Integer),
              url: String,
              width: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
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
