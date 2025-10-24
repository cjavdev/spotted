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

        # The episodes of the show.
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
    end
  end
end
