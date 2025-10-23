# frozen_string_literal: true

module Spotted
  module Resources
    class Playlists
      # @return [Spotted::Resources::Playlists::Tracks]
      attr_reader :tracks

      # @return [Spotted::Resources::Playlists::Followers]
      attr_reader :followers

      # @return [Spotted::Resources::Playlists::Images]
      attr_reader :images

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::PlaylistRetrieveParams} for more details.
      #
      # Get a playlist owned by a Spotify user.
      #
      # @overload retrieve(playlist_id, additional_types: nil, fields: nil, market: nil, request_options: {})
      #
      # @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
      #
      # @param additional_types [String] A comma-separated list of item types that your client supports besides the defau
      #
      # @param fields [String] Filters for the query: a comma-separated list of the
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::PlaylistRetrieveResponse]
      #
      # @see Spotted::Models::PlaylistRetrieveParams
      def retrieve(playlist_id, params = {})
        parsed, options = Spotted::PlaylistRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["playlists/%1$s", playlist_id],
          query: parsed,
          model: Spotted::Models::PlaylistRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Spotted::Models::PlaylistUpdateParams} for more details.
      #
      # Change a playlist's name and public/private state. (The user must, of course,
      # own the playlist.)
      #
      # @overload update(playlist_id, collaborative: nil, description: nil, name: nil, public: nil, request_options: {})
      #
      # @param playlist_id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playli
      #
      # @param collaborative [Boolean] If `true`, the playlist will become collaborative and other users will be able t
      #
      # @param description [String] Value for playlist description as displayed in Spotify Clients and in the Web AP
      #
      # @param name [String] The new name for the playlist, for example `"My New Playlist Title"`
      #
      # @param public [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Spotted::Models::PlaylistUpdateParams
      def update(playlist_id, params = {})
        parsed, options = Spotted::PlaylistUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["playlists/%1$s", playlist_id],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @api private
      #
      # @param client [Spotted::Client]
      def initialize(client:)
        @client = client
        @tracks = Spotted::Resources::Playlists::Tracks.new(client: client)
        @followers = Spotted::Resources::Playlists::Followers.new(client: client)
        @images = Spotted::Resources::Playlists::Images.new(client: client)
      end
    end
  end
end
