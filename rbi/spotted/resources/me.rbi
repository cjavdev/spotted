# typed: strong

module Spotted
  module Resources
    class Me
      sig { returns(Spotted::Resources::Me::Audiobooks) }
      attr_reader :audiobooks

      sig { returns(Spotted::Resources::Me::Playlists) }
      attr_reader :playlists

      sig { returns(Spotted::Resources::Me::Top) }
      attr_reader :top

      sig { returns(Spotted::Resources::Me::Albums) }
      attr_reader :albums

      sig { returns(Spotted::Resources::Me::Tracks) }
      attr_reader :tracks

      sig { returns(Spotted::Resources::Me::Episodes) }
      attr_reader :episodes

      sig { returns(Spotted::Resources::Me::Shows) }
      attr_reader :shows

      sig { returns(Spotted::Resources::Me::Following) }
      attr_reader :following

      sig { returns(Spotted::Resources::Me::Player) }
      attr_reader :player

      # Get detailed profile information about the current user (including the current
      # user's username).
      sig do
        params(request_options: Spotted::RequestOptions::OrHash).returns(
          Spotted::Models::MeRetrieveResponse
        )
      end
      def retrieve(request_options: {})
      end

      # @api private
      sig { params(client: Spotted::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
