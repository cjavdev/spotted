# typed: strong

module Spotted
  module Models
    module Me
      class PlayerGetRecentlyPlayedResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::PlayerGetRecentlyPlayedResponse,
              Spotted::Internal::AnyHash
            )
          end

        # The cursors used to find the next set of items.
        sig do
          returns(
            T.nilable(
              Spotted::Models::Me::PlayerGetRecentlyPlayedResponse::Cursors
            )
          )
        end
        attr_reader :cursors

        sig do
          params(
            cursors:
              Spotted::Models::Me::PlayerGetRecentlyPlayedResponse::Cursors::OrHash
          ).void
        end
        attr_writer :cursors

        # A link to the Web API endpoint returning the full result of the request.
        sig { returns(T.nilable(String)) }
        attr_reader :href

        sig { params(href: String).void }
        attr_writer :href

        sig do
          returns(
            T.nilable(
              T::Array[
                Spotted::Models::Me::PlayerGetRecentlyPlayedResponse::Item
              ]
            )
          )
        end
        attr_reader :items

        sig do
          params(
            items:
              T::Array[
                Spotted::Models::Me::PlayerGetRecentlyPlayedResponse::Item::OrHash
              ]
          ).void
        end
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

        # The total number of items available to return.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        sig do
          params(
            cursors:
              Spotted::Models::Me::PlayerGetRecentlyPlayedResponse::Cursors::OrHash,
            href: String,
            items:
              T::Array[
                Spotted::Models::Me::PlayerGetRecentlyPlayedResponse::Item::OrHash
              ],
            limit: Integer,
            next_: String,
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
          # The total number of items available to return.
          total: nil
        )
        end

        sig do
          override.returns(
            {
              cursors:
                Spotted::Models::Me::PlayerGetRecentlyPlayedResponse::Cursors,
              href: String,
              items:
                T::Array[
                  Spotted::Models::Me::PlayerGetRecentlyPlayedResponse::Item
                ],
              limit: Integer,
              next_: String,
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
                Spotted::Models::Me::PlayerGetRecentlyPlayedResponse::Cursors,
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

          # The cursors used to find the next set of items.
          sig do
            params(after: String, before: String).returns(T.attached_class)
          end
          def self.new(
            # The cursor to use as key to find the next page of items.
            after: nil,
            # The cursor to use as key to find the previous page of items.
            before: nil
          )
          end

          sig { override.returns({ after: String, before: String }) }
          def to_hash
          end
        end

        class Item < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::Me::PlayerGetRecentlyPlayedResponse::Item,
                Spotted::Internal::AnyHash
              )
            end

          # The context the track was played from.
          sig { returns(T.nilable(Spotted::Me::ContextObject)) }
          attr_reader :context

          sig { params(context: Spotted::Me::ContextObject::OrHash).void }
          attr_writer :context

          # The date and time the track was played.
          sig { returns(T.nilable(Time)) }
          attr_reader :played_at

          sig { params(played_at: Time).void }
          attr_writer :played_at

          # The track the user listened to.
          sig { returns(T.nilable(Spotted::TrackObject)) }
          attr_reader :track

          sig { params(track: Spotted::TrackObject::OrHash).void }
          attr_writer :track

          sig do
            params(
              context: Spotted::Me::ContextObject::OrHash,
              played_at: Time,
              track: Spotted::TrackObject::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The context the track was played from.
            context: nil,
            # The date and time the track was played.
            played_at: nil,
            # The track the user listened to.
            track: nil
          )
          end

          sig do
            override.returns(
              {
                context: Spotted::Me::ContextObject,
                played_at: Time,
                track: Spotted::TrackObject
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
