# typed: strong

module Spotted
  module Models
    module Me
      class FollowingUnfollowParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Me::FollowingUnfollowParams,
              Spotted::Internal::AnyHash
            )
          end

        # A JSON array of the artist or user
        # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
        # `{ids:["74ASZWbe4lXaubB36ztrGX", "08td7MxkoHQkXnWAYD8d6Q"]}`. A maximum of 50
        # IDs can be sent in one request. _**Note**: if the `ids` parameter is present in
        # the query string, any IDs listed here in the body will be ignored._
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :body_ids

        sig { params(body_ids: T::Array[String]).void }
        attr_writer :body_ids

        # The ID type: either `artist` or `user`.
        sig { returns(Spotted::Me::FollowingUnfollowParams::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            type: Spotted::Me::FollowingUnfollowParams::Type::OrSymbol,
            body_ids: T::Array[String],
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID type: either `artist` or `user`.
          type:,
          # A JSON array of the artist or user
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `{ids:["74ASZWbe4lXaubB36ztrGX", "08td7MxkoHQkXnWAYD8d6Q"]}`. A maximum of 50
          # IDs can be sent in one request. _**Note**: if the `ids` parameter is present in
          # the query string, any IDs listed here in the body will be ignored._
          body_ids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              body_ids: T::Array[String],
              type: Spotted::Me::FollowingUnfollowParams::Type::OrSymbol,
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The ID type: either `artist` or `user`.
        module Type
          extend Spotted::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Spotted::Me::FollowingUnfollowParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARTIST =
            T.let(
              :artist,
              Spotted::Me::FollowingUnfollowParams::Type::TaggedSymbol
            )
          USER =
            T.let(
              :user,
              Spotted::Me::FollowingUnfollowParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Spotted::Me::FollowingUnfollowParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
