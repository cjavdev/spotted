# frozen_string_literal: true

module Spotted
  module Models
    class ExternalURLObject < Spotted::Internal::Type::BaseModel
      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!attribute spotify
      #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   object.
      #
      #   @return [String, nil]
      optional :spotify, String

      # @!method initialize(published: nil, spotify: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ExternalURLObject} for more details.
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
    end
  end
end
