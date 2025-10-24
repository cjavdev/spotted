# typed: strong

module Spotted
  module Models
    module Me
      class FollowingListParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Spotted::Me::FollowingListParams, Spotted::Internal::AnyHash)
          end

        # The ID type: currently only `artist` is supported.
        sig { returns(Spotted::Me::FollowingListParams::Type::OrSymbol) }
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
            type: Spotted::Me::FollowingListParams::Type::OrSymbol,
            after: String,
            limit: Integer,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID type: currently only `artist` is supported.
          type:,
          # The last artist ID retrieved from the previous request.
          after: nil,
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              type: Spotted::Me::FollowingListParams::Type::OrSymbol,
              after: String,
              limit: Integer,
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The ID type: currently only `artist` is supported.
        module Type
          extend Spotted::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Spotted::Me::FollowingListParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARTIST =
            T.let(:artist, Spotted::Me::FollowingListParams::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Spotted::Me::FollowingListParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
