# frozen_string_literal: true

module Spotted
  module Models
    module Browse
      # @see Spotted::Resources::Browse::Categories#list
      class CategoryListResponse < Spotted::Internal::Type::BaseModel
        # @!attribute categories
        #
        #   @return [Spotted::Models::Browse::CategoryListResponse::Categories]
        required :categories, -> { Spotted::Models::Browse::CategoryListResponse::Categories }

        # @!method initialize(categories:)
        #   @param categories [Spotted::Models::Browse::CategoryListResponse::Categories]

        # @see Spotted::Models::Browse::CategoryListResponse#categories
        class Categories < Spotted::Internal::Type::BaseModel
          # @!attribute href
          #   A link to the Web API endpoint returning the full result of the request
          #
          #   @return [String]
          required :href, String

          # @!attribute limit
          #   The maximum number of items in the response (as set in the query or by default).
          #
          #   @return [Integer]
          required :limit, Integer

          # @!attribute next_
          #   URL to the next page of items. ( `null` if none)
          #
          #   @return [String, nil]
          required :next_, String, api_name: :next, nil?: true

          # @!attribute offset
          #   The offset of the items returned (as set in the query or by default)
          #
          #   @return [Integer]
          required :offset, Integer

          # @!attribute previous
          #   URL to the previous page of items. ( `null` if none)
          #
          #   @return [String, nil]
          required :previous, String, nil?: true

          # @!attribute total
          #   The total number of items available to return.
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute items
          #
          #   @return [Array<Spotted::Models::Browse::CategoryListResponse::Categories::Item>, nil]
          optional :items,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Browse::CategoryListResponse::Categories::Item] }

          # @!method initialize(href:, limit:, next_:, offset:, previous:, total:, items: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Browse::CategoryListResponse::Categories} for more details.
          #
          #   @param href [String] A link to the Web API endpoint returning the full result of the request
          #
          #   @param limit [Integer] The maximum number of items in the response (as set in the query or by default).
          #
          #   @param next_ [String, nil] URL to the next page of items. ( `null` if none)
          #
          #   @param offset [Integer] The offset of the items returned (as set in the query or by default)
          #
          #   @param previous [String, nil] URL to the previous page of items. ( `null` if none)
          #
          #   @param total [Integer] The total number of items available to return.
          #
          #   @param items [Array<Spotted::Models::Browse::CategoryListResponse::Categories::Item>]

          class Item < Spotted::Internal::Type::BaseModel
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
            #   {Spotted::Models::Browse::CategoryListResponse::Categories::Item} for more
            #   details.
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
  end
end
