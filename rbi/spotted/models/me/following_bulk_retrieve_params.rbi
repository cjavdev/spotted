# typed: strong

module Spotted
  module Models
    module Me
      class FollowingBulkRetrieveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Me::FollowingBulkRetrieveParams,
              Spotted::Internal::AnyHash
            )
          end

        # The ID type: currently only `artist` is supported.
        sig { returns(Symbol) }
        attr_accessor :type

        # The last artist ID retrieved from the previous request.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          params(
            after: String,
            limit: Integer,
            type: Symbol,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The last artist ID retrieved from the previous request.
          after: nil,
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          # The ID type: currently only `artist` is supported.
          type: :artist,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              type: Symbol,
              after: String,
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
