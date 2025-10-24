# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Markets#list
    class MarketListResponse < Spotted::Internal::Type::BaseModel
      # @!attribute markets
      #
      #   @return [Array<String>, nil]
      optional :markets, Spotted::Internal::Type::ArrayOf[String]

      # @!method initialize(markets: nil)
      #   @param markets [Array<String>]
    end
  end
end
