# typed: strong

module Spotted
  module Models
    module Me
      class ShowListResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::ShowListResponse,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig { returns(T::Array[Spotted::Models::Me::ShowListResponse::Item]) }
        attr_accessor :items

        # The maximum number of items in the response (as set in the query or by default).
        sig { returns(Integer) }
        attr_accessor :limit

        # URL to the next page of items. ( `null` if none)
        sig { returns(T.nilable(String)) }
        attr_accessor :next_

        # The offset of the items returned (as set in the query or by default)
        sig { returns(Integer) }
        attr_accessor :offset

        # URL to the previous page of items. ( `null` if none)
        sig { returns(T.nilable(String)) }
        attr_accessor :previous

        # The total number of items available to return.
        sig { returns(Integer) }
        attr_accessor :total

        sig do
          params(
            href: String,
            items:
              T::Array[Spotted::Models::Me::ShowListResponse::Item::OrHash],
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # A link to the Web API endpoint returning the full result of the request
          href:,
          items:,
          # The maximum number of items in the response (as set in the query or by default).
          limit:,
          # URL to the next page of items. ( `null` if none)
          next_:,
          # The offset of the items returned (as set in the query or by default)
          offset:,
          # URL to the previous page of items. ( `null` if none)
          previous:,
          # The total number of items available to return.
          total:
        )
        end

        sig do
          override.returns(
            {
              href: String,
              items: T::Array[Spotted::Models::Me::ShowListResponse::Item],
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              previous: T.nilable(String),
              total: Integer
            }
          )
        end
        def to_hash
        end

        class Item < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Me::ShowListResponse::Item,
                Spotted::Internal::AnyHash
              )
            end

          # The date and time the show was saved. Timestamps are returned in ISO 8601 format
          # as Coordinated Universal Time (UTC) with a zero offset: YYYY-MM-DDTHH:MM:SSZ. If
          # the time is imprecise (for example, the date/time of an album release), an
          # additional field indicates the precision; see for example, release_date in an
          # album object.
          sig { returns(T.nilable(Time)) }
          attr_reader :added_at

          sig { params(added_at: Time).void }
          attr_writer :added_at

          # Information about the show.
          sig do
            returns(
              T.nilable(Spotted::Models::Me::ShowListResponse::Item::Show)
            )
          end
          attr_reader :show

          sig do
            params(
              show: Spotted::Models::Me::ShowListResponse::Item::Show::OrHash
            ).void
          end
          attr_writer :show

          sig do
            params(
              added_at: Time,
              show: Spotted::Models::Me::ShowListResponse::Item::Show::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The date and time the show was saved. Timestamps are returned in ISO 8601 format
            # as Coordinated Universal Time (UTC) with a zero offset: YYYY-MM-DDTHH:MM:SSZ. If
            # the time is imprecise (for example, the date/time of an album release), an
            # additional field indicates the precision; see for example, release_date in an
            # album object.
            added_at: nil,
            # Information about the show.
            show: nil
          )
          end

          sig do
            override.returns(
              {
                added_at: Time,
                show: Spotted::Models::Me::ShowListResponse::Item::Show
              }
            )
          end
          def to_hash
          end

          class Show < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::ShowListResponse::Item::Show,
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

            sig do
              params(external_urls: Spotted::ExternalURLObject::OrHash).void
            end
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
              returns(
                Spotted::Models::Me::ShowListResponse::Item::Show::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # show.
            sig { returns(String) }
            attr_accessor :uri

            # Information about the show.
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
                type:
                  Spotted::Models::Me::ShowListResponse::Item::Show::Type::OrSymbol,
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
                  type:
                    Spotted::Models::Me::ShowListResponse::Item::Show::Type::TaggedSymbol,
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
                  T.all(
                    Symbol,
                    Spotted::Models::Me::ShowListResponse::Item::Show::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SHOW =
                T.let(
                  :show,
                  Spotted::Models::Me::ShowListResponse::Item::Show::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Spotted::Models::Me::ShowListResponse::Item::Show::Type::TaggedSymbol
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
  end
end
