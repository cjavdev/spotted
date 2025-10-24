# frozen_string_literal: true

module Spotted
  module Models
    module Playlists
      # @see Spotted::Resources::Playlists::Tracks#add
      class TrackAddResponse < Spotted::Internal::Type::BaseModel
        # @!attribute snapshot_id
        #
        #   @return [String, nil]
        optional :snapshot_id, String

        # @!method initialize(snapshot_id: nil)
        #   @param snapshot_id [String]
      end
    end
  end
end
