# frozen_string_literal: true

module Spotted
  module Models
    class ExternalURLObject < Spotted::Internal::Type::BaseModel
      # @!attribute spotify
      #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
      #   object.
      #
      #   @return [String, nil]
      optional :spotify, String

      # @!method initialize(spotify: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ExternalURLObject} for more details.
      #
      #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
    end
  end
end
