# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Playlists#update
    class PlaylistUpdateParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      # @!attribute collaborative
      #   If `true`, the playlist will become collaborative and other users will be able
      #   to modify the playlist in their Spotify client. <br/> _**Note**: You can only
      #   set `collaborative` to `true` on non-public playlists._
      #
      #   @return [Boolean, nil]
      optional :collaborative, Spotted::Internal::Type::Boolean

      # @!attribute description
      #   Value for playlist description as displayed in Spotify Clients and in the Web
      #   API.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute name
      #   The new name for the playlist, for example `"My New Playlist Title"`
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute public
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :public, Spotted::Internal::Type::Boolean

      # @!method initialize(collaborative: nil, description: nil, name: nil, public: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::PlaylistUpdateParams} for more details.
      #
      #   @param collaborative [Boolean] If `true`, the playlist will become collaborative and other users will be able t
      #
      #   @param description [String] Value for playlist description as displayed in Spotify Clients and in the Web AP
      #
      #   @param name [String] The new name for the playlist, for example `"My New Playlist Title"`
      #
      #   @param public [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
