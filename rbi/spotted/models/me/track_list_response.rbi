# typed: strong

module Spotted
  module Models
    module Me
      class TrackListResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::TrackListResponse,
              Spotted::Internal::AnyHash
            )
          end

        # A link to the Web API endpoint returning the full result of the request
        sig { returns(String) }
        attr_accessor :href

        sig { returns(T::Array[Spotted::Models::Me::TrackListResponse::Item]) }
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
              T::Array[Spotted::Models::Me::TrackListResponse::Item::OrHash],
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
              items: T::Array[Spotted::Models::Me::TrackListResponse::Item],
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
                Spotted::Models::Me::TrackListResponse::Item,
                Spotted::Internal::AnyHash
              )
            end

          # The date and time the track was saved. Timestamps are returned in ISO 8601
          # format as Coordinated Universal Time (UTC) with a zero offset:
          # YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example, the date/time of an
          # album release), an additional field indicates the precision; see for example,
          # release_date in an album object.
          sig { returns(T.nilable(Time)) }
          attr_reader :added_at

          sig { params(added_at: Time).void }
          attr_writer :added_at

          # Information about the track.
          sig { returns(T.nilable(Spotted::TrackObject)) }
          attr_reader :track

          sig { params(track: Spotted::TrackObject::OrHash).void }
          attr_writer :track

          sig do
            params(added_at: Time, track: Spotted::TrackObject::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(
            # The date and time the track was saved. Timestamps are returned in ISO 8601
            # format as Coordinated Universal Time (UTC) with a zero offset:
            # YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example, the date/time of an
            # album release), an additional field indicates the precision; see for example,
            # release_date in an album object.
            added_at: nil,
            # Information about the track.
            track: nil
          )
          end

          sig do
            override.returns({ added_at: Time, track: Spotted::TrackObject })
          end
          def to_hash
          end
        end
      end
    end
  end
end
