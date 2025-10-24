# typed: strong

module Spotted
  module Models
    module Playlists
      class FollowerCheckParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Playlists::FollowerCheckParams,
              Spotted::Internal::AnyHash
            )
          end

        # **Deprecated** A single item list containing current user's
        # [Spotify Username](/documentation/web-api/concepts/spotify-uris-ids). Maximum: 1
        # id.
        sig { returns(T.nilable(String)) }
        attr_reader :ids

        sig { params(ids: String).void }
        attr_writer :ids

        sig do
          params(
            ids: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # **Deprecated** A single item list containing current user's
          # [Spotify Username](/documentation/web-api/concepts/spotify-uris-ids). Maximum: 1
          # id.
          ids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { ids: String, request_options: Spotted::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
