# typed: strong

module Spotted
  module Models
    class AlbumGetTracksResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::AlbumGetTracksResponse,
            Spotted::Internal::AnyHash
          )
        end

      # A link to the Web API endpoint returning the full result of the request
      sig { returns(String) }
      attr_accessor :href

      sig { returns(T::Array[Spotted::Models::AlbumGetTracksResponse::Item]) }
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
            T::Array[Spotted::Models::AlbumGetTracksResponse::Item::OrHash],
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
            items: T::Array[Spotted::Models::AlbumGetTracksResponse::Item],
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
              Spotted::Models::AlbumGetTracksResponse::Item,
              Spotted::Internal::AnyHash
            )
          end

        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # track.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The artists who performed the track. Each artist object includes a link in
        # `href` to more detailed information about the artist.
        sig do
          returns(
            T.nilable(
              T::Array[Spotted::Models::AlbumGetTracksResponse::Item::Artist]
            )
          )
        end
        attr_reader :artists

        sig do
          params(
            artists:
              T::Array[
                Spotted::Models::AlbumGetTracksResponse::Item::Artist::OrHash
              ]
          ).void
        end
        attr_writer :artists

        # A list of the countries in which the track can be played, identified by their
        # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :available_markets

        sig { params(available_markets: T::Array[String]).void }
        attr_writer :available_markets

        # The disc number (usually `1` unless the album consists of more than one disc).
        sig { returns(T.nilable(Integer)) }
        attr_reader :disc_number

        sig { params(disc_number: Integer).void }
        attr_writer :disc_number

        # The track length in milliseconds.
        sig { returns(T.nilable(Integer)) }
        attr_reader :duration_ms

        sig { params(duration_ms: Integer).void }
        attr_writer :duration_ms

        # Whether or not the track has explicit lyrics ( `true` = yes it does; `false` =
        # no it does not OR unknown).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :explicit

        sig { params(explicit: T::Boolean).void }
        attr_writer :explicit

        # External URLs for this track.
        sig do
          returns(
            T.nilable(
              Spotted::Models::AlbumGetTracksResponse::Item::ExternalURLs
            )
          )
        end
        attr_reader :external_urls

        sig do
          params(
            external_urls:
              Spotted::Models::AlbumGetTracksResponse::Item::ExternalURLs::OrHash
          ).void
        end
        attr_writer :external_urls

        # A link to the Web API endpoint providing full details of the track.
        sig { returns(T.nilable(String)) }
        attr_reader :href

        sig { params(href: String).void }
        attr_writer :href

        # Whether or not the track is from a local file.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_local

        sig { params(is_local: T::Boolean).void }
        attr_writer :is_local

        # Part of the response when
        # [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied.
        # If `true`, the track is playable in the given market. Otherwise `false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_playable

        sig { params(is_playable: T::Boolean).void }
        attr_writer :is_playable

        # Part of the response when
        # [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied
        # and is only part of the response if the track linking, in fact, exists. The
        # requested track has been replaced with a different track. The track in the
        # `linked_from` object contains information about the originally requested track.
        sig do
          returns(
            T.nilable(Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom)
          )
        end
        attr_reader :linked_from

        sig do
          params(
            linked_from:
              Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom::OrHash
          ).void
        end
        attr_writer :linked_from

        # The name of the track.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # A URL to a 30 second preview (MP3 format) of the track.
        sig { returns(T.nilable(String)) }
        attr_accessor :preview_url

        # Included in the response when a content restriction is applied.
        sig do
          returns(
            T.nilable(
              Spotted::Models::AlbumGetTracksResponse::Item::Restrictions
            )
          )
        end
        attr_reader :restrictions

        sig do
          params(
            restrictions:
              Spotted::Models::AlbumGetTracksResponse::Item::Restrictions::OrHash
          ).void
        end
        attr_writer :restrictions

        # The number of the track. If an album has several discs, the track number is the
        # number on the specified disc.
        sig { returns(T.nilable(Integer)) }
        attr_reader :track_number

        sig { params(track_number: Integer).void }
        attr_writer :track_number

        # The object type: "track".
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        # track.
        sig { returns(T.nilable(String)) }
        attr_reader :uri

        sig { params(uri: String).void }
        attr_writer :uri

        sig do
          params(
            id: String,
            artists:
              T::Array[
                Spotted::Models::AlbumGetTracksResponse::Item::Artist::OrHash
              ],
            available_markets: T::Array[String],
            disc_number: Integer,
            duration_ms: Integer,
            explicit: T::Boolean,
            external_urls:
              Spotted::Models::AlbumGetTracksResponse::Item::ExternalURLs::OrHash,
            href: String,
            is_local: T::Boolean,
            is_playable: T::Boolean,
            linked_from:
              Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom::OrHash,
            name: String,
            preview_url: T.nilable(String),
            restrictions:
              Spotted::Models::AlbumGetTracksResponse::Item::Restrictions::OrHash,
            track_number: Integer,
            type: String,
            uri: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # track.
          id: nil,
          # The artists who performed the track. Each artist object includes a link in
          # `href` to more detailed information about the artist.
          artists: nil,
          # A list of the countries in which the track can be played, identified by their
          # [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
          available_markets: nil,
          # The disc number (usually `1` unless the album consists of more than one disc).
          disc_number: nil,
          # The track length in milliseconds.
          duration_ms: nil,
          # Whether or not the track has explicit lyrics ( `true` = yes it does; `false` =
          # no it does not OR unknown).
          explicit: nil,
          # External URLs for this track.
          external_urls: nil,
          # A link to the Web API endpoint providing full details of the track.
          href: nil,
          # Whether or not the track is from a local file.
          is_local: nil,
          # Part of the response when
          # [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied.
          # If `true`, the track is playable in the given market. Otherwise `false`.
          is_playable: nil,
          # Part of the response when
          # [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied
          # and is only part of the response if the track linking, in fact, exists. The
          # requested track has been replaced with a different track. The track in the
          # `linked_from` object contains information about the originally requested track.
          linked_from: nil,
          # The name of the track.
          name: nil,
          # A URL to a 30 second preview (MP3 format) of the track.
          preview_url: nil,
          # Included in the response when a content restriction is applied.
          restrictions: nil,
          # The number of the track. If an album has several discs, the track number is the
          # number on the specified disc.
          track_number: nil,
          # The object type: "track".
          type: nil,
          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # track.
          uri: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              artists:
                T::Array[Spotted::Models::AlbumGetTracksResponse::Item::Artist],
              available_markets: T::Array[String],
              disc_number: Integer,
              duration_ms: Integer,
              explicit: T::Boolean,
              external_urls:
                Spotted::Models::AlbumGetTracksResponse::Item::ExternalURLs,
              href: String,
              is_local: T::Boolean,
              is_playable: T::Boolean,
              linked_from:
                Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom,
              name: String,
              preview_url: T.nilable(String),
              restrictions:
                Spotted::Models::AlbumGetTracksResponse::Item::Restrictions,
              track_number: Integer,
              type: String,
              uri: String
            }
          )
        end
        def to_hash
        end

        class Artist < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::AlbumGetTracksResponse::Item::Artist,
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
              T.nilable(
                Spotted::Models::AlbumGetTracksResponse::Item::Artist::ExternalURLs
              )
            )
          end
          attr_reader :external_urls

          sig do
            params(
              external_urls:
                Spotted::Models::AlbumGetTracksResponse::Item::Artist::ExternalURLs::OrHash
            ).void
          end
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
            returns(
              T.nilable(
                Spotted::Models::AlbumGetTracksResponse::Item::Artist::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Spotted::Models::AlbumGetTracksResponse::Item::Artist::Type::OrSymbol
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
                Spotted::Models::AlbumGetTracksResponse::Item::Artist::ExternalURLs::OrHash,
              href: String,
              name: String,
              type:
                Spotted::Models::AlbumGetTracksResponse::Item::Artist::Type::OrSymbol,
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
                external_urls:
                  Spotted::Models::AlbumGetTracksResponse::Item::Artist::ExternalURLs,
                href: String,
                name: String,
                type:
                  Spotted::Models::AlbumGetTracksResponse::Item::Artist::Type::TaggedSymbol,
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
                  Spotted::Models::AlbumGetTracksResponse::Item::Artist::ExternalURLs,
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

          # The object type.
          module Type
            extend Spotted::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Spotted::Models::AlbumGetTracksResponse::Item::Artist::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ARTIST =
              T.let(
                :artist,
                Spotted::Models::AlbumGetTracksResponse::Item::Artist::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Spotted::Models::AlbumGetTracksResponse::Item::Artist::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ExternalURLs < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::AlbumGetTracksResponse::Item::ExternalURLs,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
          # object.
          sig { returns(T.nilable(String)) }
          attr_reader :spotify

          sig { params(spotify: String).void }
          attr_writer :spotify

          # External URLs for this track.
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

        class LinkedFrom < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # track.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Known external URLs for this track.
          sig do
            returns(
              T.nilable(
                Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom::ExternalURLs
              )
            )
          end
          attr_reader :external_urls

          sig do
            params(
              external_urls:
                Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom::ExternalURLs::OrHash
            ).void
          end
          attr_writer :external_urls

          # A link to the Web API endpoint providing full details of the track.
          sig { returns(T.nilable(String)) }
          attr_reader :href

          sig { params(href: String).void }
          attr_writer :href

          # The object type: "track".
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # track.
          sig { returns(T.nilable(String)) }
          attr_reader :uri

          sig { params(uri: String).void }
          attr_writer :uri

          # Part of the response when
          # [Track Relinking](/documentation/web-api/concepts/track-relinking/) is applied
          # and is only part of the response if the track linking, in fact, exists. The
          # requested track has been replaced with a different track. The track in the
          # `linked_from` object contains information about the originally requested track.
          sig do
            params(
              id: String,
              external_urls:
                Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom::ExternalURLs::OrHash,
              href: String,
              type: String,
              uri: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            # track.
            id: nil,
            # Known external URLs for this track.
            external_urls: nil,
            # A link to the Web API endpoint providing full details of the track.
            href: nil,
            # The object type: "track".
            type: nil,
            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # track.
            uri: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                external_urls:
                  Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom::ExternalURLs,
                href: String,
                type: String,
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
                  Spotted::Models::AlbumGetTracksResponse::Item::LinkedFrom::ExternalURLs,
                  Spotted::Internal::AnyHash
                )
              end

            # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            # object.
            sig { returns(T.nilable(String)) }
            attr_reader :spotify

            sig { params(spotify: String).void }
            attr_writer :spotify

            # Known external URLs for this track.
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
        end

        class Restrictions < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::AlbumGetTracksResponse::Item::Restrictions,
                Spotted::Internal::AnyHash
              )
            end

          # The reason for the restriction. Supported values:
          #
          # - `market` - The content item is not available in the given market.
          # - `product` - The content item is not available for the user's subscription
          #   type.
          # - `explicit` - The content item is explicit and the user's account is set to not
          #   play explicit content.
          #
          # Additional reasons may be added in the future. **Note**: If you use this field,
          # make sure that your application safely handles unknown values.
          sig { returns(T.nilable(String)) }
          attr_reader :reason

          sig { params(reason: String).void }
          attr_writer :reason

          # Included in the response when a content restriction is applied.
          sig { params(reason: String).returns(T.attached_class) }
          def self.new(
            # The reason for the restriction. Supported values:
            #
            # - `market` - The content item is not available in the given market.
            # - `product` - The content item is not available for the user's subscription
            #   type.
            # - `explicit` - The content item is explicit and the user's account is set to not
            #   play explicit content.
            #
            # Additional reasons may be added in the future. **Note**: If you use this field,
            # make sure that your application safely handles unknown values.
            reason: nil
          )
          end

          sig { override.returns({ reason: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
