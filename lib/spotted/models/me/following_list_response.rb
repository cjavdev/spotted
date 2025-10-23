# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Following#list
      class FollowingListResponse < Spotted::Internal::Type::BaseModel
        # @!attribute artists
        #
        #   @return [Spotted::Models::Me::FollowingListResponse::Artists]
        required :artists, -> { Spotted::Models::Me::FollowingListResponse::Artists }

        # @!method initialize(artists:)
        #   @param artists [Spotted::Models::Me::FollowingListResponse::Artists]

        # @see Spotted::Models::Me::FollowingListResponse#artists
        class Artists < Spotted::Internal::Type::BaseModel
          # @!attribute cursors
          #   The cursors used to find the next set of items.
          #
          #   @return [Spotted::Models::Me::FollowingListResponse::Artists::Cursors, nil]
          optional :cursors, -> { Spotted::Models::Me::FollowingListResponse::Artists::Cursors }

          # @!attribute href
          #   A link to the Web API endpoint returning the full result of the request.
          #
          #   @return [String, nil]
          optional :href, String

          # @!attribute items
          #
          #   @return [Array<Spotted::Models::Me::FollowingListResponse::Artists::Item>, nil]
          optional :items,
                   -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::FollowingListResponse::Artists::Item] }

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

          # @!attribute total
          #   The total number of items available to return.
          #
          #   @return [Integer, nil]
          optional :total, Integer

          # @!method initialize(cursors: nil, href: nil, items: nil, limit: nil, next_: nil, total: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Me::FollowingListResponse::Artists} for more details.
          #
          #   @param cursors [Spotted::Models::Me::FollowingListResponse::Artists::Cursors] The cursors used to find the next set of items.
          #
          #   @param href [String] A link to the Web API endpoint returning the full result of the request.
          #
          #   @param items [Array<Spotted::Models::Me::FollowingListResponse::Artists::Item>]
          #
          #   @param limit [Integer] The maximum number of items in the response (as set in the query or by default).
          #
          #   @param next_ [String] URL to the next page of items. ( `null` if none)
          #
          #   @param total [Integer] The total number of items available to return.

          # @see Spotted::Models::Me::FollowingListResponse::Artists#cursors
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

            # @!method initialize(after: nil, before: nil)
            #   The cursors used to find the next set of items.
            #
            #   @param after [String] The cursor to use as key to find the next page of items.
            #
            #   @param before [String] The cursor to use as key to find the previous page of items.
          end

          class Item < Spotted::Internal::Type::BaseModel
            # @!attribute id
            #   The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   artist.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute external_urls
            #   Known external URLs for this artist.
            #
            #   @return [Spotted::Models::Me::FollowingListResponse::Artists::Item::ExternalURLs, nil]
            optional :external_urls, -> { Spotted::Models::Me::FollowingListResponse::Artists::Item::ExternalURLs }

            # @!attribute followers
            #   Information about the followers of the artist.
            #
            #   @return [Spotted::Models::Me::FollowingListResponse::Artists::Item::Followers, nil]
            optional :followers, -> { Spotted::Models::Me::FollowingListResponse::Artists::Item::Followers }

            # @!attribute genres
            #   A list of the genres the artist is associated with. If not yet classified, the
            #   array is empty.
            #
            #   @return [Array<String>, nil]
            optional :genres, Spotted::Internal::Type::ArrayOf[String]

            # @!attribute href
            #   A link to the Web API endpoint providing full details of the artist.
            #
            #   @return [String, nil]
            optional :href, String

            # @!attribute images
            #   Images of the artist in various sizes, widest first.
            #
            #   @return [Array<Spotted::Models::Me::FollowingListResponse::Artists::Item::Image>, nil]
            optional :images,
                     -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::FollowingListResponse::Artists::Item::Image] }

            # @!attribute name
            #   The name of the artist.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute popularity
            #   The popularity of the artist. The value will be between 0 and 100, with 100
            #   being the most popular. The artist's popularity is calculated from the
            #   popularity of all the artist's tracks.
            #
            #   @return [Integer, nil]
            optional :popularity, Integer

            # @!attribute type
            #   The object type.
            #
            #   @return [Symbol, Spotted::Models::Me::FollowingListResponse::Artists::Item::Type, nil]
            optional :type, enum: -> { Spotted::Models::Me::FollowingListResponse::Artists::Item::Type }

            # @!attribute uri
            #   The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
            #   artist.
            #
            #   @return [String, nil]
            optional :uri, String

            # @!method initialize(id: nil, external_urls: nil, followers: nil, genres: nil, href: nil, images: nil, name: nil, popularity: nil, type: nil, uri: nil)
            #   Some parameter documentations has been truncated, see
            #   {Spotted::Models::Me::FollowingListResponse::Artists::Item} for more details.
            #
            #   @param id [String] The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artis
            #
            #   @param external_urls [Spotted::Models::Me::FollowingListResponse::Artists::Item::ExternalURLs] Known external URLs for this artist.
            #
            #   @param followers [Spotted::Models::Me::FollowingListResponse::Artists::Item::Followers] Information about the followers of the artist.
            #
            #   @param genres [Array<String>] A list of the genres the artist is associated with. If not yet classified, the a
            #
            #   @param href [String] A link to the Web API endpoint providing full details of the artist.
            #
            #   @param images [Array<Spotted::Models::Me::FollowingListResponse::Artists::Item::Image>] Images of the artist in various sizes, widest first.
            #
            #   @param name [String] The name of the artist.
            #
            #   @param popularity [Integer] The popularity of the artist. The value will be between 0 and 100, with 100 bein
            #
            #   @param type [Symbol, Spotted::Models::Me::FollowingListResponse::Artists::Item::Type] The object type.
            #
            #   @param uri [String] The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the arti

            # @see Spotted::Models::Me::FollowingListResponse::Artists::Item#external_urls
            class ExternalURLs < Spotted::Internal::Type::BaseModel
              # @!attribute spotify
              #   The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
              #   object.
              #
              #   @return [String, nil]
              optional :spotify, String

              # @!method initialize(spotify: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Me::FollowingListResponse::Artists::Item::ExternalURLs} for
              #   more details.
              #
              #   Known external URLs for this artist.
              #
              #   @param spotify [String] The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the obje
            end

            # @see Spotted::Models::Me::FollowingListResponse::Artists::Item#followers
            class Followers < Spotted::Internal::Type::BaseModel
              # @!attribute href
              #   This will always be set to null, as the Web API does not support it at the
              #   moment.
              #
              #   @return [String, nil]
              optional :href, String, nil?: true

              # @!attribute total
              #   The total number of followers.
              #
              #   @return [Integer, nil]
              optional :total, Integer

              # @!method initialize(href: nil, total: nil)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Me::FollowingListResponse::Artists::Item::Followers} for more
              #   details.
              #
              #   Information about the followers of the artist.
              #
              #   @param href [String, nil] This will always be set to null, as the Web API does not support it at the momen
              #
              #   @param total [Integer] The total number of followers.
            end

            class Image < Spotted::Internal::Type::BaseModel
              # @!attribute height
              #   The image height in pixels.
              #
              #   @return [Integer, nil]
              required :height, Integer, nil?: true

              # @!attribute url
              #   The source URL of the image.
              #
              #   @return [String]
              required :url, String

              # @!attribute width
              #   The image width in pixels.
              #
              #   @return [Integer, nil]
              required :width, Integer, nil?: true

              # @!method initialize(height:, url:, width:)
              #   Some parameter documentations has been truncated, see
              #   {Spotted::Models::Me::FollowingListResponse::Artists::Item::Image} for more
              #   details.
              #
              #   @param height [Integer, nil] The image height in pixels.
              #
              #   @param url [String] The source URL of the image.
              #
              #   @param width [Integer, nil] The image width in pixels.
            end

            # The object type.
            #
            # @see Spotted::Models::Me::FollowingListResponse::Artists::Item#type
            module Type
              extend Spotted::Internal::Type::Enum

              ARTIST = :artist

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
