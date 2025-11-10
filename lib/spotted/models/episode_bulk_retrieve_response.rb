# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Episodes#bulk_retrieve
    class EpisodeBulkRetrieveResponse < Spotted::Internal::Type::BaseModel
      # @!attribute episodes
      #
      #   @return [Array<Spotted::Models::EpisodeObject>]
      required :episodes, -> { Spotted::Internal::Type::ArrayOf[Spotted::EpisodeObject] }

      # @!method initialize(episodes:)
      #   @param episodes [Array<Spotted::Models::EpisodeObject>]
    end
  end
end
