# typed: strong

module Spotted
  module Models
    class ArtistRetrieveResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::ArtistRetrieveResponse,
            Spotted::Internal::AnyHash
          )
        end

      # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      # artist.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Known external URLs for this artist.
      sig do
        returns(
          T.nilable(Spotted::Models::ArtistRetrieveResponse::ExternalURLs)
        )
      end
      attr_reader :external_urls

      sig do
        params(
          external_urls:
            Spotted::Models::ArtistRetrieveResponse::ExternalURLs::OrHash
        ).void
      end
      attr_writer :external_urls

      # Information about the followers of the artist.
      sig do
        returns(T.nilable(Spotted::Models::ArtistRetrieveResponse::Followers))
      end
      attr_reader :followers

      sig do
        params(
          followers: Spotted::Models::ArtistRetrieveResponse::Followers::OrHash
        ).void
      end
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
      sig do
        returns(
          T.nilable(T::Array[Spotted::Models::ArtistRetrieveResponse::Image])
        )
      end
      attr_reader :images

      sig do
        params(
          images:
            T::Array[Spotted::Models::ArtistRetrieveResponse::Image::OrHash]
        ).void
      end
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
      sig do
        returns(
          T.nilable(Spotted::Models::ArtistRetrieveResponse::Type::TaggedSymbol)
        )
      end
      attr_reader :type

      sig do
        params(
          type: Spotted::Models::ArtistRetrieveResponse::Type::OrSymbol
        ).void
      end
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
          external_urls:
            Spotted::Models::ArtistRetrieveResponse::ExternalURLs::OrHash,
          followers: Spotted::Models::ArtistRetrieveResponse::Followers::OrHash,
          genres: T::Array[String],
          href: String,
          images:
            T::Array[Spotted::Models::ArtistRetrieveResponse::Image::OrHash],
          name: String,
          popularity: Integer,
          type: Spotted::Models::ArtistRetrieveResponse::Type::OrSymbol,
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
            external_urls:
              Spotted::Models::ArtistRetrieveResponse::ExternalURLs,
            followers: Spotted::Models::ArtistRetrieveResponse::Followers,
            genres: T::Array[String],
            href: String,
            images: T::Array[Spotted::Models::ArtistRetrieveResponse::Image],
            name: String,
            popularity: Integer,
            type: Spotted::Models::ArtistRetrieveResponse::Type::TaggedSymbol,
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
              Spotted::Models::ArtistRetrieveResponse::ExternalURLs,
              Spotted::Internal::AnyHash
            )
          end

        # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
        # object.
        sig { returns(T.nilable(String)) }
        attr_reader :spotify

        sig { params(spotify: String).void }
        attr_writer :spotify

        # Known external URLs for this artist.
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
              Spotted::Models::ArtistRetrieveResponse::Followers,
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

        # Information about the followers of the artist.
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
              Spotted::Models::ArtistRetrieveResponse::Image,
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
            T.all(Symbol, Spotted::Models::ArtistRetrieveResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARTIST =
          T.let(
            :artist,
            Spotted::Models::ArtistRetrieveResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Spotted::Models::ArtistRetrieveResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
