# frozen_string_literal: true

module Spotted
  module Models
    class ExternalIDObject < Spotted::Internal::Type::BaseModel
      # @!attribute ean
      #   [International Article Number](http://en.wikipedia.org/wiki/International_Article_Number_%28EAN%29)
      #
      #   @return [String, nil]
      optional :ean, String

      # @!attribute isrc
      #   [International Standard Recording Code](http://en.wikipedia.org/wiki/International_Standard_Recording_Code)
      #
      #   @return [String, nil]
      optional :isrc, String

      # @!attribute upc
      #   [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
      #
      #   @return [String, nil]
      optional :upc, String

      # @!method initialize(ean: nil, isrc: nil, upc: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ExternalIDObject} for more details.
      #
      #   @param ean [String] [International Article Number](http://en.wikipedia.org/wiki/International_Articl
      #
      #   @param isrc [String] [International Standard Recording Code](http://en.wikipedia.org/wiki/Internation
      #
      #   @param upc [String] [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
    end
  end
end
