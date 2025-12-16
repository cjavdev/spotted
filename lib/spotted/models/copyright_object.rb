# frozen_string_literal: true

module Spotted
  module Models
    class CopyrightObject < Spotted::Internal::Type::BaseModel
      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

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

      # @!method initialize(published: nil, text: nil, type: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::CopyrightObject} for more details.
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param text [String] The copyright text for this content.
      #
      #   @param type [String] The type of copyright: `C` = the copyright, `P` = the sound recording (performan
    end
  end
end
