# typed: strong

module Spotted
  module Models
    class ArtistObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::ArtistObject, Spotted::Internal::AnyHash)
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

      # Information about the followers of the artist.
      sig { returns(T.nilable(Spotted::FollowersObject)) }
      attr_reader :followers

      sig { params(followers: Spotted::FollowersObject::OrHash).void }
      attr_writer :followers

      # A list of the genres the artist is associated with. If not yet classified, the
      # array is empty.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :genres

      sig { params(genres: T::Array[String]).void }
      attr_writer :genres

      # A link to the Web API endpoint providing full details of the artist.
      sig { returns(T.nilable(String)) }
      attr_reader :href

      sig { params(href: String).void }
      attr_writer :href

      # Images of the artist in various sizes, widest first.
      sig { returns(T.nilable(T::Array[Spotted::ImageObject])) }
      attr_reader :images

      sig { params(images: T::Array[Spotted::ImageObject::OrHash]).void }
      attr_writer :images

      # The name of the artist.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The popularity of the artist. The value will be between 0 and 100, with 100
      # being the most popular. The artist's popularity is calculated from the
      # popularity of all the artist's tracks.
      sig { returns(T.nilable(Integer)) }
      attr_reader :popularity

      sig { params(popularity: Integer).void }
      attr_writer :popularity

      # The object type.
      sig { returns(T.nilable(Spotted::ArtistObject::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Spotted::ArtistObject::Type::OrSymbol).void }
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
          followers: Spotted::FollowersObject::OrHash,
          genres: T::Array[String],
          href: String,
          images: T::Array[Spotted::ImageObject::OrHash],
          name: String,
          popularity: Integer,
          type: Spotted::ArtistObject::Type::OrSymbol,
          uri: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # artist.
        id: nil,
        # Known external URLs for this artist.
        external_urls: nil,
        # Information about the followers of the artist.
        followers: nil,
        # A list of the genres the artist is associated with. If not yet classified, the
        # array is empty.
        genres: nil,
        # A link to the Web API endpoint providing full details of the artist.
        href: nil,
        # Images of the artist in various sizes, widest first.
        images: nil,
        # The name of the artist.
        name: nil,
        # The popularity of the artist. The value will be between 0 and 100, with 100
        # being the most popular. The artist's popularity is calculated from the
        # popularity of all the artist's tracks.
        popularity: nil,
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
            followers: Spotted::FollowersObject,
            genres: T::Array[String],
            href: String,
            images: T::Array[Spotted::ImageObject],
            name: String,
            popularity: Integer,
            type: Spotted::ArtistObject::Type::OrSymbol,
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
          T.type_alias { T.all(Symbol, Spotted::ArtistObject::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARTIST = T.let(:artist, Spotted::ArtistObject::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Spotted::ArtistObject::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
