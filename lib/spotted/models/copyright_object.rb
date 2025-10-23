# frozen_string_literal: true

module Spotted
  module Models
    class CopyrightObject < Spotted::Internal::Type::BaseModel
      # @!attribute text
      #   The copyright text for this content.
      #
      #   @return [String, nil]
      optional :text, String

      # @!attribute type
      #   The type of copyright: `C` = the copyright, `P` = the sound recording
      #   (performance) copyright.
      #
      #   @return [String, nil]
      optional :type, String

      # @!method initialize(text: nil, type: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::CopyrightObject} for more details.
      #
      #   @param text [String] The copyright text for this content.
      #
      #   @param type [String] The type of copyright: `C` = the copyright, `P` = the sound recording (performan
    end
  end
end
