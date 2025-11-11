# typed: strong

module Spotted
  module Models
    class AudiobookRetrieveResponse < Spotted::Models::AudiobookBase
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::AudiobookRetrieveResponse,
            Spotted::Internal::AnyHash
          )
        end

      # The chapters of the audiobook.
      sig { returns(Spotted::Models::AudiobookRetrieveResponse::Chapters) }
      attr_reader :chapters

      sig do
        params(
          chapters: Spotted::Models::AudiobookRetrieveResponse::Chapters::OrHash
        ).void
      end
      attr_writer :chapters

      sig do
        params(
          chapters: Spotted::Models::AudiobookRetrieveResponse::Chapters::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The chapters of the audiobook.
        chapters:
      )
      end

      sig do
        override.returns(
          { chapters: Spotted::Models::AudiobookRetrieveResponse::Chapters }
        )
      end
      def to_hash
      end

      class Chapters < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::AudiobookRetrieveResponse::Chapters,
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

        sig { returns(T.nilable(T::Array[Spotted::SimplifiedChapterObject])) }
        attr_reader :items

        sig do
          params(items: T::Array[Spotted::SimplifiedChapterObject::OrHash]).void
        end
        attr_writer :items

        # The chapters of the audiobook.
        sig do
          params(
            href: String,
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total: Integer,
            items: T::Array[Spotted::SimplifiedChapterObject::OrHash]
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
              items: T::Array[Spotted::SimplifiedChapterObject]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
