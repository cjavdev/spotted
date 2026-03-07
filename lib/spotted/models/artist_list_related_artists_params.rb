# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Artists#list_related_artists
    class ArtistListRelatedArtistsParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      # @!attribute id
      #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the
      #   artist.
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ArtistListRelatedArtistsParams} for more details.
      #
      #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist
      #
      #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
