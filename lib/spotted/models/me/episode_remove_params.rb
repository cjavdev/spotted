# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Episodes#remove
      class EpisodeRemoveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute ids
        #   A JSON array of the
        #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). <br/>A maximum
        #   of 50 items can be specified in one request. _**Note**: if the `ids` parameter
        #   is present in the query string, any IDs listed here in the body will be
        #   ignored._
        #
        #   @return [Array<String>, nil]
        optional :ids, Spotted::Internal::Type::ArrayOf[String]

        # @!attribute published
        #   The playlist's public/private status (if it should be added to the user's
        #   profile or not): `true` the playlist will be public, `false` the playlist will
        #   be private, `null` the playlist status is not relevant. For more about
        #   public/private status, see
        #   [Working with Playlists](/documentation/web-api/concepts/playlists)
        #
        #   @return [Boolean, nil]
        optional :published, Spotted::Internal::Type::Boolean

        # @!method initialize(ids: nil, published: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::EpisodeRemoveParams} for more details.
        #
        #   @param ids [Array<String>] A JSON array of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-i
        #
        #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
