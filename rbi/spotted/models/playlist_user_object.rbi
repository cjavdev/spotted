# typed: strong

module Spotted
  module Models
    class PlaylistUserObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::PlaylistUserObject, Spotted::Internal::AnyHash)
        end

      # The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
      # user.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Known public external URLs for this user.
      sig { returns(T.nilable(Spotted::ExternalURLObject)) }
      attr_reader :external_urls

      sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
      attr_writer :external_urls

      # A link to the Web API endpoint for this user.
      sig { returns(T.nilable(String)) }
      attr_reader :href

      sig { params(href: String).void }
      attr_writer :href

      # The object type.
      sig { returns(T.nilable(Spotted::PlaylistUserObject::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Spotted::PlaylistUserObject::Type::OrSymbol).void }
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
          external_urls: Spotted::ExternalURLObject::OrHash,
          href: String,
          type: Spotted::PlaylistUserObject::Type::OrSymbol,
          uri: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
        # user.
        id: nil,
        # Known public external URLs for this user.
        external_urls: nil,
        # A link to the Web API endpoint for this user.
        href: nil,
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
            external_urls: Spotted::ExternalURLObject,
            href: String,
            type: Spotted::PlaylistUserObject::Type::OrSymbol,
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
          T.type_alias { T.all(Symbol, Spotted::PlaylistUserObject::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER = T.let(:user, Spotted::PlaylistUserObject::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Spotted::PlaylistUserObject::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
