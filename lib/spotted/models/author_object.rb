# frozen_string_literal: true

module Spotted
  module Models
    class AuthorObject < Spotted::Internal::Type::BaseModel
      # @!attribute name
      #   The name of the author.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(name: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::AuthorObject} for more details.
      #
      #   @param name [String] The name of the author.
    end
  end
end
