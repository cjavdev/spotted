# typed: strong

module Spotted
  module Models
    module Browse
      class CategoryGetPlaylistsResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Browse::CategoryGetPlaylistsResponse,
              Spotted::Internal::AnyHash
            )
          end

        # The localized message of a playlist.
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig { returns(T.nilable(Spotted::PagingPlaylistObject)) }
        attr_reader :playlists

        sig { params(playlists: Spotted::PagingPlaylistObject::OrHash).void }
        attr_writer :playlists

        sig do
          params(
            message: String,
            playlists: Spotted::PagingPlaylistObject::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The localized message of a playlist.
          message: nil,
          playlists: nil
        )
        end

        sig do
          override.returns(
            { message: String, playlists: Spotted::PagingPlaylistObject }
          )
        end
        def to_hash
        end
      end
    end
  end
end
