# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Artists#bulk_retrieve
    class ArtistBulkRetrieveResponse < Spotted::Internal::Type::BaseModel
      # @!attribute artists
      #
      #   @return [Array<Spotted::Models::ArtistObject>]
      required :artists, -> { Spotted::Internal::Type::ArrayOf[Spotted::ArtistObject] }

      # @!method initialize(artists:)
      #   @param artists [Array<Spotted::Models::ArtistObject>]
    end
  end
end
