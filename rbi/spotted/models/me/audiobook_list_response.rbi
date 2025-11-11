# typed: strong

module Spotted
  module Models
    module Me
      class AudiobookListResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::AudiobookListResponse,
              Spotted::Internal::AnyHash
            )
          end

        # The date and time the audiobook was saved Timestamps are returned in ISO 8601
        # format as Coordinated Universal Time (UTC) with a zero offset:
        # YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example, the date/time of an
        # album release), an additional field indicates the precision; see for example,
        # release_date in an album object.
        sig { returns(T.nilable(Time)) }
        attr_reader :added_at

        sig { params(added_at: Time).void }
        attr_writer :added_at

        # Information about the audiobook.
        sig do
          returns(
            T.nilable(Spotted::Models::Me::AudiobookListResponse::Audiobook)
          )
        end
        attr_reader :audiobook

        sig do
          params(
            audiobook:
              Spotted::Models::Me::AudiobookListResponse::Audiobook::OrHash
          ).void
        end
        attr_writer :audiobook

        sig do
          params(
            added_at: Time,
            audiobook:
              Spotted::Models::Me::AudiobookListResponse::Audiobook::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time the audiobook was saved Timestamps are returned in ISO 8601
          # format as Coordinated Universal Time (UTC) with a zero offset:
          # YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example, the date/time of an
          # album release), an additional field indicates the precision; see for example,
          # release_date in an album object.
          added_at: nil,
          # Information about the audiobook.
          audiobook: nil
        )
        end

        sig do
          override.returns(
            {
              added_at: Time,
              audiobook: Spotted::Models::Me::AudiobookListResponse::Audiobook
            }
          )
        end
        def to_hash
        end

        class Audiobook < Spotted::Models::AudiobookBase
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Me::AudiobookListResponse::Audiobook,
                Spotted::Internal::AnyHash
              )
            end

          # The chapters of the audiobook.
          sig do
            returns(
              Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters
            )
          end
          attr_reader :chapters

          sig do
            params(
              chapters:
                Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters::OrHash
            ).void
          end
          attr_writer :chapters

          # Information about the audiobook.
          sig do
            params(
              chapters:
                Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The chapters of the audiobook.
            chapters:
          )
          end

          sig do
            override.returns(
              {
                chapters:
                  Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters
              }
            )
          end
          def to_hash
          end

          class Chapters < Spotted::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Spotted::Models::Me::AudiobookListResponse::Audiobook::Chapters,
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
              returns(T.nilable(T::Array[Spotted::SimplifiedChapterObject]))
            end
            attr_reader :items

            sig do
              params(
                items: T::Array[Spotted::SimplifiedChapterObject::OrHash]
              ).void
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
  end
end
