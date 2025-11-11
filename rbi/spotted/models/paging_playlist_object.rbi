# typed: strong

module Spotted
  module Models
    class PagingPlaylistObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::PagingPlaylistObject, Spotted::Internal::AnyHash)
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

      sig { returns(T.nilable(T::Array[Spotted::SimplifiedPlaylistObject])) }
      attr_reader :items

      sig do
        params(items: T::Array[Spotted::SimplifiedPlaylistObject::OrHash]).void
      end
      attr_writer :items

      sig do
        params(
          href: String,
          limit: Integer,
          next_: T.nilable(String),
          offset: Integer,
          previous: T.nilable(String),
          total: Integer,
          items: T::Array[Spotted::SimplifiedPlaylistObject::OrHash]
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
        items: nil
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
            items: T::Array[Spotted::SimplifiedPlaylistObject]
          }
        )
      end
      def to_hash
      end
    end
  end
end
