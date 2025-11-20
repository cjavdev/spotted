# typed: strong

module Spotted
  module Models
    class PlaylistUpdateParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Spotted::PlaylistUpdateParams, Spotted::Internal::AnyHash)
        end

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :components_schemas_properties_published

      sig { params(components_schemas_properties_published: T::Boolean).void }
      attr_writer :components_schemas_properties_published

      # If `true`, the playlist will become collaborative and other users will be able
      # to modify the playlist in their Spotify client. <br/> _**Note**: You can only
      # set `collaborative` to `true` on non-public playlists._
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :collaborative

      sig { params(collaborative: T::Boolean).void }
      attr_writer :collaborative

      # Value for playlist description as displayed in Spotify Clients and in the Web
      # API.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # The new name for the playlist, for example `"My New Playlist Title"`
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          components_schemas_properties_published: T::Boolean,
          collaborative: T::Boolean,
          description: String,
          name: String,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        components_schemas_properties_published: nil,
        # If `true`, the playlist will become collaborative and other users will be able
        # to modify the playlist in their Spotify client. <br/> _**Note**: You can only
        # set `collaborative` to `true` on non-public playlists._
        collaborative: nil,
        # Value for playlist description as displayed in Spotify Clients and in the Web
        # API.
        description: nil,
        # The new name for the playlist, for example `"My New Playlist Title"`
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            components_schemas_properties_published: T::Boolean,
            collaborative: T::Boolean,
            description: String,
            name: String,
            request_options: Spotted::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
