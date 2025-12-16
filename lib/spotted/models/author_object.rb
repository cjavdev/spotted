# frozen_string_literal: true

module Spotted
  module Models
    class AuthorObject < Spotted::Internal::Type::BaseModel
      # @!attribute name
      #   The name of the author.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!method initialize(name: nil, published: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::AuthorObject} for more details.
      #
      #   @param name [String] The name of the author.
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
    end
  end
end
