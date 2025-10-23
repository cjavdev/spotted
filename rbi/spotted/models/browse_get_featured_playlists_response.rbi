# typed: strong

module Spotted
  module Models
    class BrowseGetFeaturedPlaylistsResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::BrowseGetFeaturedPlaylistsResponse,
            Spotted::Internal::AnyHash
          )
        end

      # The localized message of a playlist.
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig do
        returns(
          T.nilable(
            Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists
          )
        )
      end
      attr_reader :playlists

      sig do
        params(
          playlists:
            Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::OrHash
        ).void
      end
      attr_writer :playlists

      sig do
        params(
          message: String,
          playlists:
            Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The localized message of a playlist.
        message: nil,
        playlists: nil
      )
      end

      sig do
        override.returns(
          {
            message: String,
            playlists:
              Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists
          }
        )
      end
      def to_hash
      end

      class Playlists < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig do
          returns(
            T::Array[
              Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item
            ]
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
                Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::OrHash
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
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item
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
                Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # playlist.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # `true` if the owner allows other users to modify the playlist.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :collaborative

          sig { params(collaborative: T::Boolean).void }
          attr_writer :collaborative

          # The playlist description. _Only returned for modified, verified playlists,
          # otherwise_ `null`.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Known external URLs for this playlist.
          sig do
            returns(
              T.nilable(
                Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::ExternalURLs
              )
            )
          end
          attr_reader :external_urls

          sig do
            params(
              external_urls:
                Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::ExternalURLs::OrHash
            ).void
          end
          attr_writer :external_urls

          # A link to the Web API endpoint providing full details of the playlist.
          sig { returns(T.nilable(String)) }
          attr_reader :href

          sig { params(href: String).void }
          attr_writer :href

          # Images for the playlist. The array may be empty or contain up to three images.
          # The images are returned by size in descending order. See
          # [Working with Playlists](/documentation/web-api/concepts/playlists). _**Note**:
          # If returned, the source URL for the image (`url`) is temporary and will expire
          # in less than a day._
          sig do
            returns(
              T.nilable(
                T::Array[
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Image
                ]
              )
            )
          end
          attr_reader :images

          sig do
            params(
              images:
                T::Array[
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Image::OrHash
                ]
            ).void
          end
          attr_writer :images

          # The name of the playlist.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # The user who owns the playlist
          sig do
            returns(
              T.nilable(
                Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner
              )
            )
          end
          attr_reader :owner

          sig do
            params(
              owner:
                Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::OrHash
            ).void
          end
          attr_writer :owner

          # The playlist's public/private status (if it is added to the user's profile):
          # `true` the playlist is public, `false` the playlist is private, `null` the
          # playlist status is not relevant. For more about public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :public

          sig { params(public: T::Boolean).void }
          attr_writer :public

          # The version identifier for the current playlist. Can be supplied in other
          # requests to target a specific playlist version
          sig { returns(T.nilable(String)) }
          attr_reader :snapshot_id

          sig { params(snapshot_id: String).void }
          attr_writer :snapshot_id

          # A collection containing a link ( `href` ) to the Web API endpoint where full
          # details of the playlist's tracks can be retrieved, along with the `total` number
          # of tracks in the playlist. Note, a track object may be `null`. This can happen
          # if a track is no longer available.
          sig do
            returns(
              T.nilable(
                Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Tracks
              )
            )
          end
          attr_reader :tracks

          sig do
            params(
              tracks:
                Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Tracks::OrHash
            ).void
          end
          attr_writer :tracks

          # The object type: "playlist"
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # playlist.
          sig { returns(T.nilable(String)) }
          attr_reader :uri

          sig { params(uri: String).void }
          attr_writer :uri

          sig do
            params(
              id: String,
              collaborative: T::Boolean,
              description: String,
              external_urls:
                Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::ExternalURLs::OrHash,
              href: String,
              images:
                T::Array[
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Image::OrHash
                ],
              name: String,
              owner:
                Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::OrHash,
              public: T::Boolean,
              snapshot_id: String,
              tracks:
                Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Tracks::OrHash,
              type: String,
              uri: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            # playlist.
            id: nil,
            # `true` if the owner allows other users to modify the playlist.
            collaborative: nil,
            # The playlist description. _Only returned for modified, verified playlists,
            # otherwise_ `null`.
            description: nil,
            # Known external URLs for this playlist.
            external_urls: nil,
            # A link to the Web API endpoint providing full details of the playlist.
            href: nil,
            # Images for the playlist. The array may be empty or contain up to three images.
            # The images are returned by size in descending order. See
            # [Working with Playlists](/documentation/web-api/concepts/playlists). _**Note**:
            # If returned, the source URL for the image (`url`) is temporary and will expire
            # in less than a day._
            images: nil,
            # The name of the playlist.
            name: nil,
            # The user who owns the playlist
            owner: nil,
            # The playlist's public/private status (if it is added to the user's profile):
            # `true` the playlist is public, `false` the playlist is private, `null` the
            # playlist status is not relevant. For more about public/private status, see
            # [Working with Playlists](/documentation/web-api/concepts/playlists)
            public: nil,
            # The version identifier for the current playlist. Can be supplied in other
            # requests to target a specific playlist version
            snapshot_id: nil,
            # A collection containing a link ( `href` ) to the Web API endpoint where full
            # details of the playlist's tracks can be retrieved, along with the `total` number
            # of tracks in the playlist. Note, a track object may be `null`. This can happen
            # if a track is no longer available.
            tracks: nil,
            # The object type: "playlist"
            type: nil,
            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            # playlist.
            uri: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                collaborative: T::Boolean,
                description: String,
                external_urls:
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::ExternalURLs,
                href: String,
                images:
                  T::Array[
                    Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Image
                  ],
                name: String,
                owner:
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner,
                public: T::Boolean,
                snapshot_id: String,
                tracks:
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Tracks,
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
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::ExternalURLs,
                  Spotted::Internal::AnyHash
                )
              end

            # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            # object.
            sig { returns(T.nilable(String)) }
            attr_reader :spotify

            sig { params(spotify: String).void }
            attr_writer :spotify

            # Known external URLs for this playlist.
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
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Image,
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

          class Owner < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner,
                  Spotted::Internal::AnyHash
                )
              end

            # The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
            # user.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # The name displayed on the user's profile. `null` if not available.
            sig { returns(T.nilable(String)) }
            attr_accessor :display_name

            # Known public external URLs for this user.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::ExternalURLs
                )
              )
            end
            attr_reader :external_urls

            sig do
              params(
                external_urls:
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::ExternalURLs::OrHash
              ).void
            end
            attr_writer :external_urls

            # A link to the Web API endpoint for this user.
            sig { returns(T.nilable(String)) }
            attr_reader :href

            sig { params(href: String).void }
            attr_writer :href

            # The object type.
            sig do
              returns(
                T.nilable(
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::Type::TaggedSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::Type::OrSymbol
              ).void
            end
            attr_writer :type

            # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this
            # user.
            sig { returns(T.nilable(String)) }
            attr_reader :uri

            sig { params(uri: String).void }
            attr_writer :uri

            # The user who owns the playlist
            sig do
              params(
                id: String,
                display_name: T.nilable(String),
                external_urls:
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::ExternalURLs::OrHash,
                href: String,
                type:
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::Type::OrSymbol,
                uri: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this
              # user.
              id: nil,
              # The name displayed on the user's profile. `null` if not available.
              display_name: nil,
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
                  display_name: T.nilable(String),
                  external_urls:
                    Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::ExternalURLs,
                  href: String,
                  type:
                    Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::Type::TaggedSymbol,
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
                    Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::ExternalURLs,
                    Spotted::Internal::AnyHash
                  )
                end

              # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              # object.
              sig { returns(T.nilable(String)) }
              attr_reader :spotify

              sig { params(spotify: String).void }
              attr_writer :spotify

              # Known public external URLs for this user.
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
                    Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USER =
                T.let(
                  :user,
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Owner::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Tracks < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::BrowseGetFeaturedPlaylistsResponse::Playlists::Item::Tracks,
                  Spotted::Internal::AnyHash
                )
              end

            # A link to the Web API endpoint where full details of the playlist's tracks can
            # be retrieved.
            sig { returns(T.nilable(String)) }
            attr_reader :href

            sig { params(href: String).void }
            attr_writer :href

            # Number of tracks in the playlist.
            sig { returns(T.nilable(Integer)) }
            attr_reader :total

            sig { params(total: Integer).void }
            attr_writer :total

            # A collection containing a link ( `href` ) to the Web API endpoint where full
            # details of the playlist's tracks can be retrieved, along with the `total` number
            # of tracks in the playlist. Note, a track object may be `null`. This can happen
            # if a track is no longer available.
            sig do
              params(href: String, total: Integer).returns(T.attached_class)
            end
            def self.new(
              # A link to the Web API endpoint where full details of the playlist's tracks can
              # be retrieved.
              href: nil,
              # Number of tracks in the playlist.
              total: nil
            )
            end

            sig { override.returns({ href: String, total: Integer }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
