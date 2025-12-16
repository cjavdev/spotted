# typed: strong

module Spotted
  module Models
    class SearchQueryResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::SearchQueryResponse,
            Spotted::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Spotted::Models::SearchQueryResponse::Albums)) }
      attr_reader :albums

      sig do
        params(
          albums: Spotted::Models::SearchQueryResponse::Albums::OrHash
        ).void
      end
      attr_writer :albums

      sig { returns(T.nilable(Spotted::Models::SearchQueryResponse::Artists)) }
      attr_reader :artists

      sig do
        params(
          artists: Spotted::Models::SearchQueryResponse::Artists::OrHash
        ).void
      end
      attr_writer :artists

      sig do
        returns(T.nilable(Spotted::Models::SearchQueryResponse::Audiobooks))
      end
      attr_reader :audiobooks

      sig do
        params(
          audiobooks: Spotted::Models::SearchQueryResponse::Audiobooks::OrHash
        ).void
      end
      attr_writer :audiobooks

      sig { returns(T.nilable(Spotted::Models::SearchQueryResponse::Episodes)) }
      attr_reader :episodes

      sig do
        params(
          episodes: Spotted::Models::SearchQueryResponse::Episodes::OrHash
        ).void
      end
      attr_writer :episodes

      sig { returns(T.nilable(Spotted::PagingPlaylistObject)) }
      attr_reader :playlists

      sig { params(playlists: Spotted::PagingPlaylistObject::OrHash).void }
      attr_writer :playlists

      sig { returns(T.nilable(Spotted::Models::SearchQueryResponse::Shows)) }
      attr_reader :shows

      sig do
        params(shows: Spotted::Models::SearchQueryResponse::Shows::OrHash).void
      end
      attr_writer :shows

      sig { returns(T.nilable(Spotted::Models::SearchQueryResponse::Tracks)) }
      attr_reader :tracks

      sig do
        params(
          tracks: Spotted::Models::SearchQueryResponse::Tracks::OrHash
        ).void
      end
      attr_writer :tracks

      sig do
        params(
          albums: Spotted::Models::SearchQueryResponse::Albums::OrHash,
          artists: Spotted::Models::SearchQueryResponse::Artists::OrHash,
          audiobooks: Spotted::Models::SearchQueryResponse::Audiobooks::OrHash,
          episodes: Spotted::Models::SearchQueryResponse::Episodes::OrHash,
          playlists: Spotted::PagingPlaylistObject::OrHash,
          shows: Spotted::Models::SearchQueryResponse::Shows::OrHash,
          tracks: Spotted::Models::SearchQueryResponse::Tracks::OrHash
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
            albums: Spotted::Models::SearchQueryResponse::Albums,
            artists: Spotted::Models::SearchQueryResponse::Artists,
            audiobooks: Spotted::Models::SearchQueryResponse::Audiobooks,
            episodes: Spotted::Models::SearchQueryResponse::Episodes,
            playlists: Spotted::PagingPlaylistObject,
            shows: Spotted::Models::SearchQueryResponse::Shows,
            tracks: Spotted::Models::SearchQueryResponse::Tracks
          }
        )
      end
      def to_hash
      end

      class Albums < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::SearchQueryResponse::Albums,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

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
          returns(
            T.nilable(
              T::Array[Spotted::Models::SearchQueryResponse::Albums::Item]
            )
          )
        end
        attr_reader :items

        sig do
          params(
            items:
              T::Array[
                Spotted::Models::SearchQueryResponse::Albums::Item::OrHash
              ]
          ).void
        end
        attr_writer :items

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        sig do
          params(
            href: String,
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total: Integer,
            items:
              T::Array[
                Spotted::Models::SearchQueryResponse::Albums::Item::OrHash
              ],
            published: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A link to the Web API endpoint returning the full result of the request
          href:,
          # The maximum number of items in the response (as set in the query or by default).
          limit:,
          # URL to the next page of items. ( `null` if none)
          next_:,
          # The offset of the items returned (as set in the query or by default)
          offset:,
          # URL to the previous page of items. ( `null` if none)
          previous:,
          # The total number of items available to return.
          total:,
          items: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil
        )
        end

        sig do
          override.returns(
            {
              href: String,
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              previous: T.nilable(String),
              total: Integer,
              items:
                T::Array[Spotted::Models::SearchQueryResponse::Albums::Item],
              published: T::Boolean
            }
          )
        end
        def to_hash
        end

        class Item < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::SearchQueryResponse::Albums::Item,
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
              Spotted::Models::SearchQueryResponse::Albums::Item::AlbumType::TaggedSymbol
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
              Spotted::Models::SearchQueryResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
            )
          end
          attr_accessor :release_date_precision

          # The number of tracks in the album.
          sig { returns(Integer) }
          attr_accessor :total_tracks

          # The object type.
          sig { returns(Symbol) }
          attr_accessor :type

          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # album.
          sig { returns(String) }
          attr_accessor :uri

          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :published

          sig { params(published: T::Boolean).void }
          attr_writer :published

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
                Spotted::Models::SearchQueryResponse::Albums::Item::AlbumType::OrSymbol,
              artists: T::Array[Spotted::SimplifiedArtistObject::OrHash],
              available_markets: T::Array[String],
              external_urls: Spotted::ExternalURLObject::OrHash,
              href: String,
              images: T::Array[Spotted::ImageObject::OrHash],
              name: String,
              release_date: String,
              release_date_precision:
                Spotted::Models::SearchQueryResponse::Albums::Item::ReleaseDatePrecision::OrSymbol,
              total_tracks: Integer,
              uri: String,
              published: T::Boolean,
              restrictions: Spotted::AlbumRestrictionObject::OrHash,
              type: Symbol
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
            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # album.
            uri:,
            # The playlist's public/private status (if it should be added to the user's
            # profile or not): `true` the playlist will be public, `false` the playlist will
            # be private, `null` the playlist status is not relevant. For more about
            # public/private status, see
            # [Working with Playlists](/documentation/web-api/concepts/playlists)
            published: nil,
            # Included in the response when a content restriction is applied.
            restrictions: nil,
            # The object type.
            type: :album
          )
          end

          sig do
            override.returns(
              {
                id: String,
                album_type:
                  Spotted::Models::SearchQueryResponse::Albums::Item::AlbumType::TaggedSymbol,
                artists: T::Array[Spotted::SimplifiedArtistObject],
                available_markets: T::Array[String],
                external_urls: Spotted::ExternalURLObject,
                href: String,
                images: T::Array[Spotted::ImageObject],
                name: String,
                release_date: String,
                release_date_precision:
                  Spotted::Models::SearchQueryResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol,
                total_tracks: Integer,
                type: Symbol,
                uri: String,
                published: T::Boolean,
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
                  Spotted::Models::SearchQueryResponse::Albums::Item::AlbumType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALBUM =
              T.let(
                :album,
                Spotted::Models::SearchQueryResponse::Albums::Item::AlbumType::TaggedSymbol
              )
            SINGLE =
              T.let(
                :single,
                Spotted::Models::SearchQueryResponse::Albums::Item::AlbumType::TaggedSymbol
              )
            COMPILATION =
              T.let(
                :compilation,
                Spotted::Models::SearchQueryResponse::Albums::Item::AlbumType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::SearchQueryResponse::Albums::Item::AlbumType::TaggedSymbol
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
                  Spotted::Models::SearchQueryResponse::Albums::Item::ReleaseDatePrecision
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            YEAR =
              T.let(
                :year,
                Spotted::Models::SearchQueryResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Spotted::Models::SearchQueryResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
              )
            DAY =
              T.let(
                :day,
                Spotted::Models::SearchQueryResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::SearchQueryResponse::Albums::Item::ReleaseDatePrecision::TaggedSymbol
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
              Spotted::Models::SearchQueryResponse::Artists,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

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

        sig { returns(T.nilable(T::Array[Spotted::ArtistObject])) }
        attr_reader :items

        sig { params(items: T::Array[Spotted::ArtistObject::OrHash]).void }
        attr_writer :items

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        sig do
          params(
            href: String,
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total: Integer,
            items: T::Array[Spotted::ArtistObject::OrHash],
            published: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A link to the Web API endpoint returning the full result of the request
          href:,
          # The maximum number of items in the response (as set in the query or by default).
          limit:,
          # URL to the next page of items. ( `null` if none)
          next_:,
          # The offset of the items returned (as set in the query or by default)
          offset:,
          # URL to the previous page of items. ( `null` if none)
          previous:,
          # The total number of items available to return.
          total:,
          items: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil
        )
        end

        sig do
          override.returns(
            {
              href: String,
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              previous: T.nilable(String),
              total: Integer,
              items: T::Array[Spotted::ArtistObject],
              published: T::Boolean
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
              Spotted::Models::SearchQueryResponse::Audiobooks,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

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

        sig { returns(T.nilable(T::Array[Spotted::AudiobookBase])) }
        attr_reader :items

        sig { params(items: T::Array[Spotted::AudiobookBase::OrHash]).void }
        attr_writer :items

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        sig do
          params(
            href: String,
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total: Integer,
            items: T::Array[Spotted::AudiobookBase::OrHash],
            published: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A link to the Web API endpoint returning the full result of the request
          href:,
          # The maximum number of items in the response (as set in the query or by default).
          limit:,
          # URL to the next page of items. ( `null` if none)
          next_:,
          # The offset of the items returned (as set in the query or by default)
          offset:,
          # URL to the previous page of items. ( `null` if none)
          previous:,
          # The total number of items available to return.
          total:,
          items: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil
        )
        end

        sig do
          override.returns(
            {
              href: String,
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              previous: T.nilable(String),
              total: Integer,
              items: T::Array[Spotted::AudiobookBase],
              published: T::Boolean
            }
          )
        end
        def to_hash
        end
      end

      class Episodes < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::SearchQueryResponse::Episodes,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

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

        sig { returns(T.nilable(T::Array[Spotted::SimplifiedEpisodeObject])) }
        attr_reader :items

        sig do
          params(items: T::Array[Spotted::SimplifiedEpisodeObject::OrHash]).void
        end
        attr_writer :items

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        sig do
          params(
            href: String,
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total: Integer,
            items: T::Array[Spotted::SimplifiedEpisodeObject::OrHash],
            published: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A link to the Web API endpoint returning the full result of the request
          href:,
          # The maximum number of items in the response (as set in the query or by default).
          limit:,
          # URL to the next page of items. ( `null` if none)
          next_:,
          # The offset of the items returned (as set in the query or by default)
          offset:,
          # URL to the previous page of items. ( `null` if none)
          previous:,
          # The total number of items available to return.
          total:,
          items: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil
        )
        end

        sig do
          override.returns(
            {
              href: String,
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              previous: T.nilable(String),
              total: Integer,
              items: T::Array[Spotted::SimplifiedEpisodeObject],
              published: T::Boolean
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
              Spotted::Models::SearchQueryResponse::Shows,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

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

        sig { returns(T.nilable(T::Array[Spotted::ShowBase])) }
        attr_reader :items

        sig { params(items: T::Array[Spotted::ShowBase::OrHash]).void }
        attr_writer :items

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        sig do
          params(
            href: String,
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total: Integer,
            items: T::Array[Spotted::ShowBase::OrHash],
            published: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A link to the Web API endpoint returning the full result of the request
          href:,
          # The maximum number of items in the response (as set in the query or by default).
          limit:,
          # URL to the next page of items. ( `null` if none)
          next_:,
          # The offset of the items returned (as set in the query or by default)
          offset:,
          # URL to the previous page of items. ( `null` if none)
          previous:,
          # The total number of items available to return.
          total:,
          items: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil
        )
        end

        sig do
          override.returns(
            {
              href: String,
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              previous: T.nilable(String),
              total: Integer,
              items: T::Array[Spotted::ShowBase],
              published: T::Boolean
            }
          )
        end
        def to_hash
        end
      end

      class Tracks < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::SearchQueryResponse::Tracks,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

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

        sig { returns(T.nilable(T::Array[Spotted::TrackObject])) }
        attr_reader :items

        sig { params(items: T::Array[Spotted::TrackObject::OrHash]).void }
        attr_writer :items

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        sig do
          params(
            href: String,
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total: Integer,
            items: T::Array[Spotted::TrackObject::OrHash],
            published: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A link to the Web API endpoint returning the full result of the request
          href:,
          # The maximum number of items in the response (as set in the query or by default).
          limit:,
          # URL to the next page of items. ( `null` if none)
          next_:,
          # The offset of the items returned (as set in the query or by default)
          offset:,
          # URL to the previous page of items. ( `null` if none)
          previous:,
          # The total number of items available to return.
          total:,
          items: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil
        )
        end

        sig do
          override.returns(
            {
              href: String,
              limit: Integer,
              next_: T.nilable(String),
              offset: Integer,
              previous: T.nilable(String),
              total: Integer,
              items: T::Array[Spotted::TrackObject],
              published: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
