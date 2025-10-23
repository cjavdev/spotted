# typed: strong

module Spotted
  module Models
    class ShowListResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::Models::ShowListResponse, Spotted::Internal::AnyHash)
        end

      sig { returns(T::Array[Spotted::Models::ShowListResponse::Show]) }
      attr_accessor :shows

      sig do
        params(
          shows: T::Array[Spotted::Models::ShowListResponse::Show::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(shows:)
      end

      sig do
        override.returns(
          { shows: T::Array[Spotted::Models::ShowListResponse::Show] }
        )
      end
      def to_hash
      end

      class Show < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::ShowListResponse::Show,
              Spotted::Internal::AnyHash
            )
          end

        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
        sig { returns(String) }
        attr_accessor :id

        # A list of the countries in which the show can be played, identified by their
        # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
        sig { returns(T::Array[String]) }
        attr_accessor :available_markets

        # The copyright statements of the show.
        sig { returns(T::Array[Spotted::CopyrightObject]) }
        attr_accessor :copyrights

        # A description of the show. HTML tags are stripped away from this field, use
        # `html_description` field in case HTML tags are needed.
        sig { returns(String) }
        attr_accessor :description

        # Whether or not the show has explicit content (true = yes it does; false = no it
        # does not OR unknown).
        sig { returns(T::Boolean) }
        attr_accessor :explicit

        # External URLs for this show.
        sig { returns(Spotted::ExternalURLObject) }
        attr_reader :external_urls

        sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
        attr_writer :external_urls

        # A link to the Web API endpoint providing full details of the show.
        sig { returns(String) }
        attr_accessor :href

        # A description of the show. This field may contain HTML tags.
        sig { returns(String) }
        attr_accessor :html_description

        # The cover art for the show in various sizes, widest first.
        sig { returns(T::Array[Spotted::ImageObject]) }
        attr_accessor :images

        # True if all of the shows episodes are hosted outside of Spotify's CDN. This
        # field might be `null` in some cases.
        sig { returns(T::Boolean) }
        attr_accessor :is_externally_hosted

        # A list of the languages used in the show, identified by their
        # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
        sig { returns(T::Array[String]) }
        attr_accessor :languages

        # The media type of the show.
        sig { returns(String) }
        attr_accessor :media_type

        # The name of the episode.
        sig { returns(String) }
        attr_accessor :name

        # The publisher of the show.
        sig { returns(String) }
        attr_accessor :publisher

        # The total number of episodes in the show.
        sig { returns(Integer) }
        attr_accessor :total_episodes

        # The object type.
        sig do
          returns(Spotted::Models::ShowListResponse::Show::Type::TaggedSymbol)
        end
        attr_accessor :type

        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        # show.
        sig { returns(String) }
        attr_accessor :uri

        sig do
          params(
            id: String,
            available_markets: T::Array[String],
            copyrights: T::Array[Spotted::CopyrightObject::OrHash],
            description: String,
            explicit: T::Boolean,
            external_urls: Spotted::ExternalURLObject::OrHash,
            href: String,
            html_description: String,
            images: T::Array[Spotted::ImageObject::OrHash],
            is_externally_hosted: T::Boolean,
            languages: T::Array[String],
            media_type: String,
            name: String,
            publisher: String,
            total_episodes: Integer,
            type: Spotted::Models::ShowListResponse::Show::Type::OrSymbol,
            uri: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
          id:,
          # A list of the countries in which the show can be played, identified by their
          # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
          available_markets:,
          # The copyright statements of the show.
          copyrights:,
          # A description of the show. HTML tags are stripped away from this field, use
          # `html_description` field in case HTML tags are needed.
          description:,
          # Whether or not the show has explicit content (true = yes it does; false = no it
          # does not OR unknown).
          explicit:,
          # External URLs for this show.
          external_urls:,
          # A link to the Web API endpoint providing full details of the show.
          href:,
          # A description of the show. This field may contain HTML tags.
          html_description:,
          # The cover art for the show in various sizes, widest first.
          images:,
          # True if all of the shows episodes are hosted outside of Spotify's CDN. This
          # field might be `null` in some cases.
          is_externally_hosted:,
          # A list of the languages used in the show, identified by their
          # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
          languages:,
          # The media type of the show.
          media_type:,
          # The name of the episode.
          name:,
          # The publisher of the show.
          publisher:,
          # The total number of episodes in the show.
          total_episodes:,
          # The object type.
          type:,
          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # show.
          uri:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              available_markets: T::Array[String],
              copyrights: T::Array[Spotted::CopyrightObject],
              description: String,
              explicit: T::Boolean,
              external_urls: Spotted::ExternalURLObject,
              href: String,
              html_description: String,
              images: T::Array[Spotted::ImageObject],
              is_externally_hosted: T::Boolean,
              languages: T::Array[String],
              media_type: String,
              name: String,
              publisher: String,
              total_episodes: Integer,
              type: Spotted::Models::ShowListResponse::Show::Type::TaggedSymbol,
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
              T.all(Symbol, Spotted::Models::ShowListResponse::Show::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SHOW =
            T.let(
              :show,
              Spotted::Models::ShowListResponse::Show::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Spotted::Models::ShowListResponse::Show::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
