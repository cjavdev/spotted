# frozen_string_literal: true

module Spotted
  module Models
    module Users
      # @see Spotted::Resources::Users::Playlists#create
      class PlaylistCreateParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute name
        #   The name for the new playlist, for example `"Your Coolest Playlist"`. This name
        #   does not need to be unique; a user may have several playlists with the same
        #   name.
        #
        #   @return [String]
        required :name, String

        # @!attribute paths_request_body_content_application_json_schema_properties_published
        #   Defaults to `true`. The playlist's public/private status (if it should be added
        #   to the user's profile or not): `true` the playlist will be public, `false` the
        #   playlist will be private. To be able to create private playlists, the user must
        #   have granted the `playlist-modify-private`
        #   [scope](/documentation/web-api/concepts/scopes/#list-of-scopes). For more about
        #   public/private status, see
        #   [Working with Playlists](/documentation/web-api/concepts/playlists)
        #
        #   @return [Boolean, nil]
        optional :paths_request_body_content_application_json_schema_properties_published,
                 Spotted::Internal::Type::Boolean,
                 api_name: :"$.paths['*'].*.requestBody.content['application/json'].schema.properties.published"

        # @!attribute collaborative
        #   Defaults to `false`. If `true` the playlist will be collaborative. _**Note**: to
        #   create a collaborative playlist you must also set `public` to `false`. To create
        #   collaborative playlists you must have granted `playlist-modify-private` and
        #   `playlist-modify-public`
        #   [scopes](/documentation/web-api/concepts/scopes/#list-of-scopes)._
        #
        #   @return [Boolean, nil]
        optional :collaborative, Spotted::Internal::Type::Boolean

        # @!attribute description
        #   value for playlist description as displayed in Spotify Clients and in the Web
        #   API.
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(name:, paths_request_body_content_application_json_schema_properties_published: nil, collaborative: nil, description: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Users::PlaylistCreateParams} for more details.
        #
        #   @param name [String] The name for the new playlist, for example `"Your Coolest Playlist"`. This name
        #
        #   @param paths_request_body_content_application_json_schema_properties_published [Boolean] Defaults to `true`. The playlist's public/private status (if it should be added
        #
        #   @param collaborative [Boolean] Defaults to `false`. If `true` the playlist will be collaborative. \_**Note**:
        #   to
        #
        #   @param description [String] value for playlist description as displayed in Spotify Clients and in the Web AP
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
