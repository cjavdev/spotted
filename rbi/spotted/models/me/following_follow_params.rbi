# typed: strong

module Spotted
  module Models
    module Me
      class FollowingFollowParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Me::FollowingFollowParams,
              Spotted::Internal::AnyHash
            )
          end

        # A JSON array of the artist or user
        # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
        # `{ids:["74ASZWbe4lXaubB36ztrGX", "08td7MxkoHQkXnWAYD8d6Q"]}`. A maximum of 50
        # IDs can be sent in one request. _**Note**: if the `ids` parameter is present in
        # the query string, any IDs listed here in the body will be ignored._
        sig { returns(T::Array[String]) }
        attr_accessor :body_ids

        # The ID type.
        sig { returns(Spotted::Me::FollowingFollowParams::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            body_ids: T::Array[String],
            type: Spotted::Me::FollowingFollowParams::Type::OrSymbol,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A JSON array of the artist or user
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `{ids:["74ASZWbe4lXaubB36ztrGX", "08td7MxkoHQkXnWAYD8d6Q"]}`. A maximum of 50
          # IDs can be sent in one request. _**Note**: if the `ids` parameter is present in
          # the query string, any IDs listed here in the body will be ignored._
          body_ids:,
          # The ID type.
          type:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              body_ids: T::Array[String],
              type: Spotted::Me::FollowingFollowParams::Type::OrSymbol,
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The ID type.
        module Type
          extend Spotted::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Spotted::Me::FollowingFollowParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARTIST =
            T.let(
              :artist,
              Spotted::Me::FollowingFollowParams::Type::TaggedSymbol
            )
          USER =
            T.let(:user, Spotted::Me::FollowingFollowParams::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Spotted::Me::FollowingFollowParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
