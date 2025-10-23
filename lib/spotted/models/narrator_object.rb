# frozen_string_literal: true

module Spotted
  module Models
    class NarratorObject < Spotted::Internal::Type::BaseModel
      # @!attribute name
      #   The name of the Narrator.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(name: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::NarratorObject} for more details.
      #
      #   @param name [String] The name of the Narrator.
    end
  end
end
