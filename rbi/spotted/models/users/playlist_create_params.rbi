# typed: strong

module Spotted
  module Models
    module Users
      class PlaylistCreateParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Users::PlaylistCreateParams,
              Spotted::Internal::AnyHash
            )
          end

        # The name for the new playlist, for example `"Your Coolest Playlist"`. This name
        # does not need to be unique; a user may have several playlists with the same
        # name.
        sig { returns(String) }
        attr_accessor :name

        # Defaults to `true`. The playlist's public/private status (if it should be added
        # to the user's profile or not): `true` the playlist will be public, `false` the
        # playlist will be private. To be able to create private playlists, the user must
        # have granted the `playlist-modify-private`
        # [scope](/documentation/web-api/concepts/scopes/#list-of-scopes). For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :paths_request_body_content_application_json_schema_properties_published

        sig do
          params(
            paths_request_body_content_application_json_schema_properties_published:
              T::Boolean
          ).void
        end
        attr_writer :paths_request_body_content_application_json_schema_properties_published

        # Defaults to `false`. If `true` the playlist will be collaborative. _**Note**: to
        # create a collaborative playlist you must also set `public` to `false`. To create
        # collaborative playlists you must have granted `playlist-modify-private` and
        # `playlist-modify-public`
        # [scopes](/documentation/web-api/concepts/scopes/#list-of-scopes)._
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :collaborative

        sig { params(collaborative: T::Boolean).void }
        attr_writer :collaborative

        # value for playlist description as displayed in Spotify Clients and in the Web
        # API.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          params(
            name: String,
            paths_request_body_content_application_json_schema_properties_published:
              T::Boolean,
            collaborative: T::Boolean,
            description: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The name for the new playlist, for example `"Your Coolest Playlist"`. This name
          # does not need to be unique; a user may have several playlists with the same
          # name.
          name:,
          # Defaults to `true`. The playlist's public/private status (if it should be added
          # to the user's profile or not): `true` the playlist will be public, `false` the
          # playlist will be private. To be able to create private playlists, the user must
          # have granted the `playlist-modify-private`
          # [scope](/documentation/web-api/concepts/scopes/#list-of-scopes). For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          paths_request_body_content_application_json_schema_properties_published: nil,
          # Defaults to `false`. If `true` the playlist will be collaborative. _**Note**: to
          # create a collaborative playlist you must also set `public` to `false`. To create
          # collaborative playlists you must have granted `playlist-modify-private` and
          # `playlist-modify-public`
          # [scopes](/documentation/web-api/concepts/scopes/#list-of-scopes)._
          collaborative: nil,
          # value for playlist description as displayed in Spotify Clients and in the Web
          # API.
          description: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              paths_request_body_content_application_json_schema_properties_published:
                T::Boolean,
              collaborative: T::Boolean,
              description: String,
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
