# typed: strong

module Spotted
  module Models
    class SearchRetrieveResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::SearchRetrieveResponse,
            Spotted::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Spotted::Models::SearchRetrieveResponse::Albums))
      end
      attr_reader :albums

      sig do
        params(
          albums: Spotted::Models::SearchRetrieveResponse::Albums::OrHash
        ).void
      end
      attr_writer :albums

      sig do
        returns(T.nilable(Spotted::Models::SearchRetrieveResponse::Artists))
      end
      attr_reader :artists

      sig do
        params(
          artists: Spotted::Models::SearchRetrieveResponse::Artists::OrHash
        ).void
      end
      attr_writer :artists

      sig do
        returns(T.nilable(Spotted::Models::SearchRetrieveResponse::Audiobooks))
      end
      attr_reader :audiobooks

      sig do
        params(
          audiobooks:
            Spotted::Models::SearchRetrieveResponse::Audiobooks::OrHash
        ).void
      end
      attr_writer :audiobooks

      sig do
        returns(T.nilable(Spotted::Models::SearchRetrieveResponse::Episodes))
      end
      attr_reader :episodes

      sig do
        params(
          episodes: Spotted::Models::SearchRetrieveResponse::Episodes::OrHash
        ).void
      end
      attr_writer :episodes

      sig { returns(T.nilable(Spotted::PagingPlaylistObject)) }
      attr_reader :playlists

      sig { params(playlists: Spotted::PagingPlaylistObject::OrHash).void }
      attr_writer :playlists

      sig { returns(T.nilable(Spotted::Models::SearchRetrieveResponse::Shows)) }
      attr_reader :shows

      sig do
        params(
          shows: Spotted::Models::SearchRetrieveResponse::Shows::OrHash
        ).void
      end
      attr_writer :shows

      sig do
        returns(T.nilable(Spotted::Models::SearchRetrieveResponse::Tracks))
      end
      attr_reader :tracks

      sig do
        params(
          tracks: Spotted::Models::SearchRetrieveResponse::Tracks::OrHash
        ).void
      end
      attr_writer :tracks

      sig do
        params(
          albums: Spotted::Models::SearchRetrieveResponse::Albums::OrHash,
          artists: Spotted::Models::SearchRetrieveResponse::Artists::OrHash,
          audiobooks:
            Spotted::Models::SearchRetrieveResponse::Audiobooks::OrHash,
          episodes: Spotted::Models::SearchRetrieveResponse::Episodes::OrHash,
          playlists: Spotted::PagingPlaylistObject::OrHash,
          shows: Spotted::Models::SearchRetrieveResponse::Shows::OrHash,
          tracks: Spotted::Models::SearchRetrieveResponse::Tracks::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        albums: nil,
        artists: nil,
        audiobooks: nil,
        episodes: nil,
        playlists: nil,
        shows: nil,
        tracks: nil
      )
      end

      sig do
        override.returns(
          {
            albums: Spotted::Models::SearchRetrieveResponse::Albums,
            artists: Spotted::Models::SearchRetrieveResponse::Artists,
            audiobooks: Spotted::Models::SearchRetrieveResponse::Audiobooks,
            episodes: Spotted::Models::SearchRetrieveResponse::Episodes,
            playlists: Spotted::PagingPlaylistObject,
            shows: Spotted::Models::SearchRetrieveResponse::Shows,
            tracks: Spotted::Models::SearchRetrieveResponse::Tracks
          }
        )
      end
      def to_hash
      end

      class Albums < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::SearchRetrieveResponse::Albums,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig do
          returns(
            T::Array[Spotted::Models::SearchRetrieveResponse::Albums::Item]
          )
        end
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
              T::Array[
                Spotted::Models::SearchRetrieveResponse::Albums::Item::OrHash
              ],
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
              items:
                T::Array[Spotted::Models::SearchRetrieveResponse::Albums::Item],
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
                Spotted::Models::SearchRetrieveResponse::Albums::Item,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # album.
          sig { returns(String) }
          attr_accessor :id

          # The type of the album.
          sig do
            returns(
              Spotted::Models::SearchRetrieveResponse::Albums::Item::AlbumType::TaggedSymbol
            )
          end
          attr_accessor :album_type

          # The artists of the album. Each artist object includes a link in `href` to more
          # detailed information about the artist.
          sig { returns(T::Array[Spotted::SimplifiedArtistObject]) }
          attr_accessor :artists

          # The markets in which the album is available:
          # [ISO 3166-1 alpha-2 country codes](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
          # _**NOTE**: an album is considered available in a market when at least 1 of its
          # tracks is available in that market._
          sig { returns(T::Array[String]) }
          attr_accessor :available_markets

          # Known external URLs for this album.
          sig { returns(Spotted::ExternalURLObject) }
          attr_reader :external_urls

          sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
          attr_writer :external_urls

          # A link to the Web API endpoint providing full details of the album.
          sig { returns(String) }
          attr_accessor :href

          # The cover art for the album in various sizes, widest first.
          sig { returns(T::Array[Spotted::ImageObject]) }
          attr_accessor :images

          # The name of the album. In case of an album takedown, the value may be an empty
          # string.
          sig { returns(String) }
          attr_accessor :name

          # The date the album was first released.
          sig { returns(String) }
          attr_accessor :release_date

          # The precision with which `release_date` value is known.
          sig do
            returns(
              Spotted::Models::SearchRetrieveResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
            )
          end
          attr_accessor :release_date_precision

          # The number of tracks in the album.
          sig { returns(Integer) }
          attr_accessor :total_tracks

          # The object type.
          sig do
            returns(
              Spotted::Models::SearchRetrieveResponse::Albums::Item::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # album.
          sig { returns(String) }
          attr_accessor :uri

          # Included in the response when a content restriction is applied.
          sig { returns(T.nilable(Spotted::AlbumRestrictionObject)) }
          attr_reader :restrictions

          sig do
            params(restrictions: Spotted::AlbumRestrictionObject::OrHash).void
          end
          attr_writer :restrictions

          sig do
            params(
              id: String,
              album_type:
                Spotted::Models::SearchRetrieveResponse::Albums::Item::AlbumType::OrSymbol,
              artists: T::Array[Spotted::SimplifiedArtistObject::OrHash],
              available_markets: T::Array[String],
              external_urls: Spotted::ExternalURLObject::OrHash,
              href: String,
              images: T::Array[Spotted::ImageObject::OrHash],
              name: String,
              release_date: String,
              release_date_precision:
                Spotted::Models::SearchRetrieveResponse::Albums::Item::ReleaseDatePrecision::OrSymbol,
              total_tracks: Integer,
              type:
                Spotted::Models::SearchRetrieveResponse::Albums::Item::Type::OrSymbol,
              uri: String,
              restrictions: Spotted::AlbumRestrictionObject::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            # album.
            id:,
            # The type of the album.
            album_type:,
            # The artists of the album. Each artist object includes a link in `href` to more
            # detailed information about the artist.
            artists:,
            # The markets in which the album is available:
            # [ISO 3166-1 alpha-2 country codes](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
            # _**NOTE**: an album is considered available in a market when at least 1 of its
            # tracks is available in that market._
            available_markets:,
            # Known external URLs for this album.
            external_urls:,
            # A link to the Web API endpoint providing full details of the album.
            href:,
            # The cover art for the album in various sizes, widest first.
            images:,
            # The name of the album. In case of an album takedown, the value may be an empty
            # string.
            name:,
            # The date the album was first released.
            release_date:,
            # The precision with which `release_date` value is known.
            release_date_precision:,
            # The number of tracks in the album.
            total_tracks:,
            # The object type.
            type:,
            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # album.
            uri:,
            # Included in the response when a content restriction is applied.
            restrictions: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                album_type:
                  Spotted::Models::SearchRetrieveResponse::Albums::Item::AlbumType::TaggedSymbol,
                artists: T::Array[Spotted::SimplifiedArtistObject],
                available_markets: T::Array[String],
                external_urls: Spotted::ExternalURLObject,
                href: String,
                images: T::Array[Spotted::ImageObject],
                name: String,
                release_date: String,
                release_date_precision:
                  Spotted::Models::SearchRetrieveResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol,
                total_tracks: Integer,
                type:
                  Spotted::Models::SearchRetrieveResponse::Albums::Item::Type::TaggedSymbol,
                uri: String,
                restrictions: Spotted::AlbumRestrictionObject
              }
            )
          end
          def to_hash
          end

          # The type of the album.
          module AlbumType
            extend Spotted::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Spotted::Models::SearchRetrieveResponse::Albums::Item::AlbumType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALBUM =
              T.let(
                :album,
                Spotted::Models::SearchRetrieveResponse::Albums::Item::AlbumType::TaggedSymbol
              )
            SINGLE =
              T.let(
                :single,
                Spotted::Models::SearchRetrieveResponse::Albums::Item::AlbumType::TaggedSymbol
              )
            COMPILATION =
              T.let(
                :compilation,
                Spotted::Models::SearchRetrieveResponse::Albums::Item::AlbumType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::SearchRetrieveResponse::Albums::Item::AlbumType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The precision with which `release_date` value is known.
          module ReleaseDatePrecision
            extend Spotted::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Spotted::Models::SearchRetrieveResponse::Albums::Item::ReleaseDatePrecision
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            YEAR =
              T.let(
                :year,
                Spotted::Models::SearchRetrieveResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Spotted::Models::SearchRetrieveResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
              )
            DAY =
              T.let(
                :day,
                Spotted::Models::SearchRetrieveResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::SearchRetrieveResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The object type.
          module Type
            extend Spotted::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Spotted::Models::SearchRetrieveResponse::Albums::Item::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALBUM =
              T.let(
                :album,
                Spotted::Models::SearchRetrieveResponse::Albums::Item::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::SearchRetrieveResponse::Albums::Item::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Artists < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::SearchRetrieveResponse::Artists,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig { returns(T::Array[Spotted::ArtistObject]) }
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
            items: T::Array[Spotted::ArtistObject::OrHash],
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
              items: T::Array[Spotted::ArtistObject],
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
      end

      class Audiobooks < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::SearchRetrieveResponse::Audiobooks,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig do
          returns(
            T::Array[Spotted::Models::SearchRetrieveResponse::Audiobooks::Item]
          )
        end
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
              T::Array[
                Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::OrHash
              ],
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
              items:
                T::Array[
                  Spotted::Models::SearchRetrieveResponse::Audiobooks::Item
                ],
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
                Spotted::Models::SearchRetrieveResponse::Audiobooks::Item,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # audiobook.
          sig { returns(String) }
          attr_accessor :id

          # The author(s) for the audiobook.
          sig { returns(T::Array[Spotted::AuthorObject]) }
          attr_accessor :authors

          # A list of the countries in which the audiobook can be played, identified by
          # their [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
          # code.
          sig { returns(T::Array[String]) }
          attr_accessor :available_markets

          # The copyright statements of the audiobook.
          sig { returns(T::Array[Spotted::CopyrightObject]) }
          attr_accessor :copyrights

          # A description of the audiobook. HTML tags are stripped away from this field, use
          # `html_description` field in case HTML tags are needed.
          sig { returns(String) }
          attr_accessor :description

          # Whether or not the audiobook has explicit content (true = yes it does; false =
          # no it does not OR unknown).
          sig { returns(T::Boolean) }
          attr_accessor :explicit

          # External URLs for this audiobook.
          sig { returns(Spotted::ExternalURLObject) }
          attr_reader :external_urls

          sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
          attr_writer :external_urls

          # A link to the Web API endpoint providing full details of the audiobook.
          sig { returns(String) }
          attr_accessor :href

          # A description of the audiobook. This field may contain HTML tags.
          sig { returns(String) }
          attr_accessor :html_description

          # The cover art for the audiobook in various sizes, widest first.
          sig { returns(T::Array[Spotted::ImageObject]) }
          attr_accessor :images

          # A list of the languages used in the audiobook, identified by their
          # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
          sig { returns(T::Array[String]) }
          attr_accessor :languages

          # The media type of the audiobook.
          sig { returns(String) }
          attr_accessor :media_type

          # The name of the audiobook.
          sig { returns(String) }
          attr_accessor :name

          # The narrator(s) for the audiobook.
          sig { returns(T::Array[Spotted::NarratorObject]) }
          attr_accessor :narrators

          # The publisher of the audiobook.
          sig { returns(String) }
          attr_accessor :publisher

          # The number of chapters in this audiobook.
          sig { returns(Integer) }
          attr_accessor :total_chapters

          # The object type.
          sig do
            returns(
              Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # audiobook.
          sig { returns(String) }
          attr_accessor :uri

          # The edition of the audiobook.
          sig { returns(T.nilable(String)) }
          attr_reader :edition

          sig { params(edition: String).void }
          attr_writer :edition

          sig do
            params(
              id: String,
              authors: T::Array[Spotted::AuthorObject::OrHash],
              available_markets: T::Array[String],
              copyrights: T::Array[Spotted::CopyrightObject::OrHash],
              description: String,
              explicit: T::Boolean,
              external_urls: Spotted::ExternalURLObject::OrHash,
              href: String,
              html_description: String,
              images: T::Array[Spotted::ImageObject::OrHash],
              languages: T::Array[String],
              media_type: String,
              name: String,
              narrators: T::Array[Spotted::NarratorObject::OrHash],
              publisher: String,
              total_chapters: Integer,
              type:
                Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Type::OrSymbol,
              uri: String,
              edition: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            # audiobook.
            id:,
            # The author(s) for the audiobook.
            authors:,
            # A list of the countries in which the audiobook can be played, identified by
            # their [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
            # code.
            available_markets:,
            # The copyright statements of the audiobook.
            copyrights:,
            # A description of the audiobook. HTML tags are stripped away from this field, use
            # `html_description` field in case HTML tags are needed.
            description:,
            # Whether or not the audiobook has explicit content (true = yes it does; false =
            # no it does not OR unknown).
            explicit:,
            # External URLs for this audiobook.
            external_urls:,
            # A link to the Web API endpoint providing full details of the audiobook.
            href:,
            # A description of the audiobook. This field may contain HTML tags.
            html_description:,
            # The cover art for the audiobook in various sizes, widest first.
            images:,
            # A list of the languages used in the audiobook, identified by their
            # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
            languages:,
            # The media type of the audiobook.
            media_type:,
            # The name of the audiobook.
            name:,
            # The narrator(s) for the audiobook.
            narrators:,
            # The publisher of the audiobook.
            publisher:,
            # The number of chapters in this audiobook.
            total_chapters:,
            # The object type.
            type:,
            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # audiobook.
            uri:,
            # The edition of the audiobook.
            edition: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                authors: T::Array[Spotted::AuthorObject],
                available_markets: T::Array[String],
                copyrights: T::Array[Spotted::CopyrightObject],
                description: String,
                explicit: T::Boolean,
                external_urls: Spotted::ExternalURLObject,
                href: String,
                html_description: String,
                images: T::Array[Spotted::ImageObject],
                languages: T::Array[String],
                media_type: String,
                name: String,
                narrators: T::Array[Spotted::NarratorObject],
                publisher: String,
                total_chapters: Integer,
                type:
                  Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Type::TaggedSymbol,
                uri: String,
                edition: String
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
                  Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUDIOBOOK =
              T.let(
                :audiobook,
                Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::SearchRetrieveResponse::Audiobooks::Item::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Episodes < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::SearchRetrieveResponse::Episodes,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig { returns(T::Array[Spotted::SimplifiedEpisodeObject]) }
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
            items: T::Array[Spotted::SimplifiedEpisodeObject::OrHash],
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
              items: T::Array[Spotted::SimplifiedEpisodeObject],
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
      end

      class Shows < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::SearchRetrieveResponse::Shows,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig do
          returns(
            T::Array[Spotted::Models::SearchRetrieveResponse::Shows::Item]
          )
        end
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
              T::Array[
                Spotted::Models::SearchRetrieveResponse::Shows::Item::OrHash
              ],
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
              items:
                T::Array[Spotted::Models::SearchRetrieveResponse::Shows::Item],
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
                Spotted::Models::SearchRetrieveResponse::Shows::Item,
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
            returns(
              Spotted::Models::SearchRetrieveResponse::Shows::Item::Type::TaggedSymbol
            )
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
              type:
                Spotted::Models::SearchRetrieveResponse::Shows::Item::Type::OrSymbol,
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
                  Spotted::Models::SearchRetrieveResponse::Shows::Item::Type::TaggedSymbol,
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
                  Spotted::Models::SearchRetrieveResponse::Shows::Item::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SHOW =
              T.let(
                :show,
                Spotted::Models::SearchRetrieveResponse::Shows::Item::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::SearchRetrieveResponse::Shows::Item::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Tracks < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::SearchRetrieveResponse::Tracks,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig { returns(T::Array[Spotted::TrackObject]) }
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
            items: T::Array[Spotted::TrackObject::OrHash],
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
              items: T::Array[Spotted::TrackObject],
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
      end
    end
  end
end
