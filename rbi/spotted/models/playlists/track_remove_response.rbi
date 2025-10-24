# typed: strong

module Spotted
  module Models
    module Playlists
      class TrackRemoveResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Playlists::TrackRemoveResponse,
              Spotted::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :snapshot_id

        sig { params(snapshot_id: String).void }
        attr_writer :snapshot_id

        sig { params(snapshot_id: String).returns(T.attached_class) }
        def self.new(snapshot_id: nil)
        end

        sig { override.returns({ snapshot_id: String }) }
        def to_hash
        end
      end
    end
  end
end
