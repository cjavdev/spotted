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
        sig do
          returns(T::Array[Spotted::Models::ShowListResponse::Show::Copyright])
        end
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
        sig { returns(Spotted::Models::ShowListResponse::Show::ExternalURLs) }
        attr_reader :external_urls

        sig do
          params(
            external_urls:
              Spotted::Models::ShowListResponse::Show::ExternalURLs::OrHash
          ).void
        end
        attr_writer :external_urls

        # A link to the Web API endpoint providing full details of the show.
        sig { returns(String) }
        attr_accessor :href

        # A description of the show. This field may contain HTML tags.
        sig { returns(String) }
        attr_accessor :html_description

        # The cover art for the show in various sizes, widest first.
        sig do
          returns(T::Array[Spotted::Models::ShowListResponse::Show::Image])
        end
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
            copyrights:
              T::Array[
                Spotted::Models::ShowListResponse::Show::Copyright::OrHash
              ],
            description: String,
            explicit: T::Boolean,
            external_urls:
              Spotted::Models::ShowListResponse::Show::ExternalURLs::OrHash,
            href: String,
            html_description: String,
            images:
              T::Array[Spotted::Models::ShowListResponse::Show::Image::OrHash],
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
              copyrights:
                T::Array[Spotted::Models::ShowListResponse::Show::Copyright],
              description: String,
              explicit: T::Boolean,
              external_urls:
                Spotted::Models::ShowListResponse::Show::ExternalURLs,
              href: String,
              html_description: String,
              images: T::Array[Spotted::Models::ShowListResponse::Show::Image],
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

        class Copyright < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ShowListResponse::Show::Copyright,
                Spotted::Internal::AnyHash
              )
            end

          # The copyright text for this content.
          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          # The type of copyright: `C` = the copyright, `P` = the sound recording
          # (performance) copyright.
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig { params(text: String, type: String).returns(T.attached_class) }
          def self.new(
            # The copyright text for this content.
            text: nil,
            # The type of copyright: `C` = the copyright, `P` = the sound recording
            # (performance) copyright.
            type: nil
          )
          end

          sig { override.returns({ text: String, type: String }) }
          def to_hash
          end
        end

        class ExternalURLs < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ShowListResponse::Show::ExternalURLs,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
          # object.
          sig { returns(T.nilable(String)) }
          attr_reader :spotify

          sig { params(spotify: String).void }
          attr_writer :spotify

          # External URLs for this show.
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

        class Image < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ShowListResponse::Show::Image,
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
