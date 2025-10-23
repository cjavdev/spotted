# typed: strong

module Spotted
  module Models
    class SimplifiedArtistObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::SimplifiedArtistObject, Spotted::Internal::AnyHash)
        end

      # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      # artist.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Known external URLs for this artist.
      sig { returns(T.nilable(Spotted::ExternalURLObject)) }
      attr_reader :external_urls

      sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
      attr_writer :external_urls

      # A link to the Web API endpoint providing full details of the artist.
      sig { returns(T.nilable(String)) }
      attr_reader :href

      sig { params(href: String).void }
      attr_writer :href

      # The name of the artist.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The object type.
      sig do
        returns(T.nilable(Spotted::SimplifiedArtistObject::Type::TaggedSymbol))
      end
      attr_reader :type

      sig { params(type: Spotted::SimplifiedArtistObject::Type::OrSymbol).void }
      attr_writer :type

      # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      # artist.
      sig { returns(T.nilable(String)) }
      attr_reader :uri

      sig { params(uri: String).void }
      attr_writer :uri

      sig do
        params(
          id: String,
          external_urls: Spotted::ExternalURLObject::OrHash,
          href: String,
          name: String,
          type: Spotted::SimplifiedArtistObject::Type::OrSymbol,
          uri: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # artist.
        id: nil,
        # Known external URLs for this artist.
        external_urls: nil,
        # A link to the Web API endpoint providing full details of the artist.
        href: nil,
        # The name of the artist.
        name: nil,
        # The object type.
        type: nil,
        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        # artist.
        uri: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            external_urls: Spotted::ExternalURLObject,
            href: String,
            name: String,
            type: Spotted::SimplifiedArtistObject::Type::TaggedSymbol,
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
          T.type_alias { T.all(Symbol, Spotted::SimplifiedArtistObject::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARTIST =
          T.let(:artist, Spotted::SimplifiedArtistObject::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Spotted::SimplifiedArtistObject::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
