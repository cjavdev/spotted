# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Shows#list
    class ShowListResponse < Spotted::Internal::Type::BaseModel
      # @!attribute shows
      #
      #   @return [Array<Spotted::Models::ShowBase>]
      required :shows, -> { Spotted::Internal::Type::ArrayOf[Spotted::ShowBase] }

      # @!method initialize(shows:)
      #   @param shows [Array<Spotted::Models::ShowBase>]
    end
  end
end
