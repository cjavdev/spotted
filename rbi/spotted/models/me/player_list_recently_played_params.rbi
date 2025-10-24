# typed: strong

module Spotted
  module Models
    module Me
      class PlayerListRecentlyPlayedParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Me::PlayerListRecentlyPlayedParams,
              Spotted::Internal::AnyHash
            )
          end

        # A Unix timestamp in milliseconds. Returns all items after (but not including)
        # this cursor position. If `after` is specified, `before` must not be specified.
        sig { returns(T.nilable(Integer)) }
        attr_reader :after

        sig { params(after: Integer).void }
        attr_writer :after

        # A Unix timestamp in milliseconds. Returns all items before (but not including)
        # this cursor position. If `before` is specified, `after` must not be specified.
        sig { returns(T.nilable(Integer)) }
        attr_reader :before

        sig { params(before: Integer).void }
        attr_writer :before

        # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          params(
            after: Integer,
            before: Integer,
            limit: Integer,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A Unix timestamp in milliseconds. Returns all items after (but not including)
          # this cursor position. If `after` is specified, `before` must not be specified.
          after: nil,
          # A Unix timestamp in milliseconds. Returns all items before (but not including)
          # this cursor position. If `before` is specified, `after` must not be specified.
          before: nil,
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: Integer,
              before: Integer,
              limit: Integer,
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
