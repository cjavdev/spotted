# typed: strong

module Spotted
  module Models
    module Me
      class FollowingCheckParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Spotted::Me::FollowingCheckParams, Spotted::Internal::AnyHash)
          end

        # A comma-separated list of the artist or the user
        # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) to check. For
        # example: `ids=74ASZWbe4lXaubB36ztrGX,08td7MxkoHQkXnWAYD8d6Q`. A maximum of 50
        # IDs can be sent in one request.
        sig { returns(String) }
        attr_accessor :ids

        # The ID type: either `artist` or `user`.
        sig { returns(Spotted::Me::FollowingCheckParams::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            ids: String,
            type: Spotted::Me::FollowingCheckParams::Type::OrSymbol,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A comma-separated list of the artist or the user
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) to check. For
          # example: `ids=74ASZWbe4lXaubB36ztrGX,08td7MxkoHQkXnWAYD8d6Q`. A maximum of 50
          # IDs can be sent in one request.
          ids:,
          # The ID type: either `artist` or `user`.
          type:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              ids: String,
              type: Spotted::Me::FollowingCheckParams::Type::OrSymbol,
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
              T.all(Symbol, Spotted::Me::FollowingCheckParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARTIST =
            T.let(
              :artist,
              Spotted::Me::FollowingCheckParams::Type::TaggedSymbol
            )
          USER =
            T.let(:user, Spotted::Me::FollowingCheckParams::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Spotted::Me::FollowingCheckParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
