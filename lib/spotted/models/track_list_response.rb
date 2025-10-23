# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Tracks#list
    class TrackListResponse < Spotted::Internal::Type::BaseModel
      # @!attribute tracks
      #
      #   @return [Array<Spotted::Models::TrackObject>]
      required :tracks, -> { Spotted::Internal::Type::ArrayOf[Spotted::TrackObject] }

      # @!method initialize(tracks:)
      #   @param tracks [Array<Spotted::Models::TrackObject>]
    end
  end
end
