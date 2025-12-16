# frozen_string_literal: true

module Spotted
  module Models
    module Browse
      # @see Spotted::Resources::Browse::Categories#retrieve
      class CategoryRetrieveResponse < Spotted::Internal::Type::BaseModel
        # @!attribute id
        #   The [Spotify category ID](/documentation/web-api/concepts/spotify-uris-ids) of
        #   the category.
        #
        #   @return [String]
        required :id, String

        # @!attribute href
        #   A link to the Web API endpoint returning full details of the category.
        #
        #   @return [String]
        required :href, String

        # @!attribute icons
        #   The category icon, in various sizes.
        #
        #   @return [Array<Spotted::Models::ImageObject>]
        required :icons, -> { Spotted::Internal::Type::ArrayOf[Spotted::ImageObject] }

        # @!attribute name
        #   The name of the category.
        #
        #   @return [String]
        required :name, String

        # @!attribute published
        #   The playlist's public/private status (if it should be added to the user's
        #   profile or not): `true` the playlist will be public, `false` the playlist will
        #   be private, `null` the playlist status is not relevant. For more about
        #   public/private status, see
        #   [Working with Playlists](/documentation/web-api/concepts/playlists)
        #
        #   @return [Boolean, nil]
        optional :published, Spotted::Internal::Type::Boolean

        # @!method initialize(id:, href:, icons:, name:, published: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Browse::CategoryRetrieveResponse} for more details.
        #
        #   @param id [String] The [Spotify category ID](/documentation/web-api/concepts/spotify-uris-ids) of t
        #
        #   @param href [String] A link to the Web API endpoint returning full details of the category.
        #
        #   @param icons [Array<Spotted::Models::ImageObject>] The category icon, in various sizes.
        #
        #   @param name [String] The name of the category.
        #
        #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      end
    end
  end
end
