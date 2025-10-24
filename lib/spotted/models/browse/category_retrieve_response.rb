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

        # @!method initialize(id:, href:, icons:, name:)
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
      end
    end
  end
end
