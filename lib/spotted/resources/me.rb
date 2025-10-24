# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      # @return [Spotted::Resources::Me::Audiobooks]
      attr_reader :audiobooks

      # @return [Spotted::Resources::Me::Playlists]
      attr_reader :playlists

      # @return [Spotted::Resources::Me::Top]
      attr_reader :top

      # @return [Spotted::Resources::Me::Albums]
      attr_reader :albums

      # @return [Spotted::Resources::Me::Tracks]
      attr_reader :tracks

      # @return [Spotted::Resources::Me::Episodes]
      attr_reader :episodes

      # @return [Spotted::Resources::Me::Shows]
      attr_reader :shows

      # @return [Spotted::Resources::Me::Following]
      attr_reader :following

      # @return [Spotted::Resources::Me::Player]
      attr_reader :player

      # Get detailed profile information about the current user (including the current
      # user's username).
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::MeRetrieveResponse]
      #
      # @see Spotted::Models::MeRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "me",
          model: Spotted::Models::MeRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Spotted::Client]
      def initialize(client:)
        @client = client
        @audiobooks = Spotted::Resources::Me::Audiobooks.new(client: client)
        @playlists = Spotted::Resources::Me::Playlists.new(client: client)
        @top = Spotted::Resources::Me::Top.new(client: client)
        @albums = Spotted::Resources::Me::Albums.new(client: client)
        @tracks = Spotted::Resources::Me::Tracks.new(client: client)
        @episodes = Spotted::Resources::Me::Episodes.new(client: client)
        @shows = Spotted::Resources::Me::Shows.new(client: client)
        @following = Spotted::Resources::Me::Following.new(client: client)
        @player = Spotted::Resources::Me::Player.new(client: client)
      end
    end
  end
end
