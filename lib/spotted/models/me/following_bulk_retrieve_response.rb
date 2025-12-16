# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Following#bulk_retrieve
      class FollowingBulkRetrieveResponse < Spotted::Internal::Type::BaseModel
        # @!attribute artists
        #
        #   @return [Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists]
        required :artists, -> { Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists }

        # @!method initialize(artists:)
        #   @param artists [Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists]

        # @see Spotted::Models::Me::FollowingBulkRetrieveResponse#artists
        class Artists < Spotted::Internal::Type::BaseModel
          # @!attribute cursors
          #   The cursors used to find the next set of items.
          #
          #   @return [Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists::Cursors, nil]
          optional :cursors, -> { Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists::Cursors }

          # @!attribute href
          #   A link to the Web API endpoint returning the full result of the request.
          #
          #   @return [String, nil]
          optional :href, String

          # @!attribute items
          #
          #   @return [Array<Spotted::Models::ArtistObject>, nil]
          optional :items, -> { Spotted::Internal::Type::ArrayOf[Spotted::ArtistObject] }

          # @!attribute limit
          #   The maximum number of items in the response (as set in the query or by default).
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute next_
          #   URL to the next page of items. ( `null` if none)
          #
          #   @return [String, nil]
          optional :next_, String, api_name: :next

          # @!attribute published
          #   The playlist's public/private status (if it should be added to the user's
          #   profile or not): `true` the playlist will be public, `false` the playlist will
          #   be private, `null` the playlist status is not relevant. For more about
          #   public/private status, see
          #   [Working with Playlists](/documentation/web-api/concepts/playlists)
          #
          #   @return [Boolean, nil]
          optional :published, Spotted::Internal::Type::Boolean

          # @!attribute total
          #   The total number of items available to return.
          #
          #   @return [Integer, nil]
          optional :total, Integer

          # @!method initialize(cursors: nil, href: nil, items: nil, limit: nil, next_: nil, published: nil, total: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists} for more details.
          #
          #   @param cursors [Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists::Cursors] The cursors used to find the next set of items.
          #
          #   @param href [String] A link to the Web API endpoint returning the full result of the request.
          #
          #   @param items [Array<Spotted::Models::ArtistObject>]
          #
          #   @param limit [Integer] The maximum number of items in the response (as set in the query or by default).
          #
          #   @param next_ [String] URL to the next page of items. ( `null` if none)
          #
          #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
          #
          #   @param total [Integer] The total number of items available to return.

          # @see Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists#cursors
          class Cursors < Spotted::Internal::Type::BaseModel
            # @!attribute after
            #   The cursor to use as key to find the next page of items.
            #
            #   @return [String, nil]
            optional :after, String

            # @!attribute before
            #   The cursor to use as key to find the previous page of items.
            #
            #   @return [String, nil]
            optional :before, String

            # @!attribute published
            #   The playlist's public/private status (if it should be added to the user's
            #   profile or not): `true` the playlist will be public, `false` the playlist will
            #   be private, `null` the playlist status is not relevant. For more about
            #   public/private status, see
            #   [Working with Playlists](/documentation/web-api/concepts/playlists)
            #
            #   @return [Boolean, nil]
            optional :published, Spotted::Internal::Type::Boolean

            # @!method initialize(after: nil, before: nil, published: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::Me::FollowingBulkRetrieveResponse::Artists::Cursors} for more
            #   details.
            #
            #   The cursors used to find the next set of items.
            #
            #   @param after [String] The cursor to use as key to find the next page of items.
            #
            #   @param before [String] The cursor to use as key to find the previous page of items.
            #
            #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
          end
        end
      end
    end
  end
end
