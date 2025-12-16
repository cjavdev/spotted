# typed: strong

module Spotted
  module Models
    module Me
      class FollowingBulkRetrieveResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::FollowingBulkRetrieveResponse,
              Spotted::Internal::AnyHash
            )
          end

        sig do
          returns(Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists)
        end
        attr_reader :artists

        sig do
          params(
            artists:
              Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists::OrHash
          ).void
        end
        attr_writer :artists

        sig do
          params(
            artists:
              Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists::OrHash
          ).returns(T.attached_class)
        end
        def self.new(artists:)
        end

        sig do
          override.returns(
            {
              artists:
                Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists
            }
          )
        end
        def to_hash
        end

        class Artists < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists,
                Spotted::Internal::AnyHash
              )
            end

          # The cursors used to find the next set of items.
          sig do
            returns(
              T.nilable(
                Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists::Cursors
              )
            )
          end
          attr_reader :cursors

          sig do
            params(
              cursors:
                Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists::Cursors::OrHash
            ).void
          end
          attr_writer :cursors

          # A link to the Web API endpoint returning the full result of the request.
          sig { returns(T.nilable(String)) }
          attr_reader :href

          sig { params(href: String).void }
          attr_writer :href

          sig { returns(T.nilable(T::Array[Spotted::ArtistObject])) }
          attr_reader :items

          sig { params(items: T::Array[Spotted::ArtistObject::OrHash]).void }
          attr_writer :items

          # The maximum number of items in the response (as set in the query or by default).
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # URL to the next page of items. ( `null` if none)
          sig { returns(T.nilable(String)) }
          attr_reader :next_

          sig { params(next_: String).void }
          attr_writer :next_

          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :published

          sig { params(published: T::Boolean).void }
          attr_writer :published

          # The total number of items available to return.
          sig { returns(T.nilable(Integer)) }
          attr_reader :total

          sig { params(total: Integer).void }
          attr_writer :total

          sig do
            params(
              cursors:
                Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists::Cursors::OrHash,
              href: String,
              items: T::Array[Spotted::ArtistObject::OrHash],
              limit: Integer,
              next_: String,
              published: T::Boolean,
              total: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The cursors used to find the next set of items.
            cursors: nil,
            # A link to the Web API endpoint returning the full result of the request.
            href: nil,
            items: nil,
            # The maximum number of items in the response (as set in the query or by default).
            limit: nil,
            # URL to the next page of items. ( `null` if none)
            next_: nil,
            # The playlist's public/private status (if it should be added to the user's
            # profile or not): `true` the playlist will be public, `false` the playlist will
            # be private, `null` the playlist status is not relevant. For more about
            # public/private status, see
            # [Working with Playlists](/documentation/web-api/concepts/playlists)
            published: nil,
            # The total number of items available to return.
            total: nil
          )
          end

          sig do
            override.returns(
              {
                cursors:
                  Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists::Cursors,
                href: String,
                items: T::Array[Spotted::ArtistObject],
                limit: Integer,
                next_: String,
                published: T::Boolean,
                total: Integer
              }
            )
          end
          def to_hash
          end

          class Cursors < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists::Cursors,
                  Spotted::Internal::AnyHash
                )
              end

            # The cursor to use as key to find the next page of items.
            sig { returns(T.nilable(String)) }
            attr_reader :after

            sig { params(after: String).void }
            attr_writer :after

            # The cursor to use as key to find the previous page of items.
            sig { returns(T.nilable(String)) }
            attr_reader :before

            sig { params(before: String).void }
            attr_writer :before

            # The playlist's public/private status (if it should be added to the user's
            # profile or not): `true` the playlist will be public, `false` the playlist will
            # be private, `null` the playlist status is not relevant. For more about
            # public/private status, see
            # [Working with Playlists](/documentation/web-api/concepts/playlists)
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :published

            sig { params(published: T::Boolean).void }
            attr_writer :published

            # The cursors used to find the next set of items.
            sig do
              params(
                after: String,
                before: String,
                published: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              # The cursor to use as key to find the next page of items.
              after: nil,
              # The cursor to use as key to find the previous page of items.
              before: nil,
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
                { after: String, before: String, published: T::Boolean }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
