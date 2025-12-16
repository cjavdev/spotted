# typed: strong

module Spotted
  module Models
    class ShowRetrieveResponse < Spotted::Models::ShowBase
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::ShowRetrieveResponse,
            Spotted::Internal::AnyHash
          )
        end

      # The episodes of the show.
      sig { returns(Spotted::Models::ShowRetrieveResponse::Episodes) }
      attr_reader :episodes

      sig do
        params(
          episodes: Spotted::Models::ShowRetrieveResponse::Episodes::OrHash
        ).void
      end
      attr_writer :episodes

      sig do
        params(
          episodes: Spotted::Models::ShowRetrieveResponse::Episodes::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The episodes of the show.
        episodes:
      )
      end

      sig do
        override.returns(
          { episodes: Spotted::Models::ShowRetrieveResponse::Episodes }
        )
      end
      def to_hash
      end

      class Episodes < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::ShowRetrieveResponse::Episodes,
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

        # The episodes of the show.
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
    end
  end
end
