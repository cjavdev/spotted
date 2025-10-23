# typed: strong

module Spotted
  module Models
    module Me
      class EpisodeListResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::EpisodeListResponse,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig do
          returns(T::Array[Spotted::Models::Me::EpisodeListResponse::Item])
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
              T::Array[Spotted::Models::Me::EpisodeListResponse::Item::OrHash],
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
              items: T::Array[Spotted::Models::Me::EpisodeListResponse::Item],
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
                Spotted::Models::Me::EpisodeListResponse::Item,
                Spotted::Internal::AnyHash
              )
            end

          # The date and time the episode was saved. Timestamps are returned in ISO 8601
          # format as Coordinated Universal Time (UTC) with a zero offset:
          # YYYY-MM-DDTHH:MM:SSZ.
          sig { returns(T.nilable(Time)) }
          attr_reader :added_at

          sig { params(added_at: Time).void }
          attr_writer :added_at

          # Information about the episode.
          sig { returns(T.nilable(Spotted::EpisodeObject)) }
          attr_reader :episode

          sig { params(episode: Spotted::EpisodeObject::OrHash).void }
          attr_writer :episode

          sig do
            params(
              added_at: Time,
              episode: Spotted::EpisodeObject::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The date and time the episode was saved. Timestamps are returned in ISO 8601
            # format as Coordinated Universal Time (UTC) with a zero offset:
            # YYYY-MM-DDTHH:MM:SSZ.
            added_at: nil,
            # Information about the episode.
            episode: nil
          )
          end

          sig do
            override.returns(
              { added_at: Time, episode: Spotted::EpisodeObject }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
