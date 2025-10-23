# typed: strong

module Spotted
  module Models
    module Me
      class PlaylistRetrieveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Me::PlaylistRetrieveParams,
              Spotted::Internal::AnyHash
            )
          end

        # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # 'The index of the first playlist to return. Default: 0 (the first object).
        # Maximum offset: 100.000\. Use with `limit` to get the next set of playlists.'
        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          # 'The index of the first playlist to return. Default: 0 (the first object).
          # Maximum offset: 100.000\. Use with `limit` to get the next set of playlists.'
          offset: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              limit: Integer,
              offset: Integer,
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
