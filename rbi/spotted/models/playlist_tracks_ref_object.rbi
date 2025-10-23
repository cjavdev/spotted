# typed: strong

module Spotted
  module Models
    class PlaylistTracksRefObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::PlaylistTracksRefObject, Spotted::Internal::AnyHash)
        end

      # A link to the Web API endpoint where full details of the playlist's tracks can
      # be retrieved.
      sig { returns(T.nilable(String)) }
      attr_reader :href

      sig { params(href: String).void }
      attr_writer :href

      # Number of tracks in the playlist.
      sig { returns(T.nilable(Integer)) }
      attr_reader :total

      sig { params(total: Integer).void }
      attr_writer :total

      sig { params(href: String, total: Integer).returns(T.attached_class) }
      def self.new(
        # A link to the Web API endpoint where full details of the playlist's tracks can
        # be retrieved.
        href: nil,
        # Number of tracks in the playlist.
        total: nil
      )
      end

      sig { override.returns({ href: String, total: Integer }) }
      def to_hash
      end
    end
  end
end
