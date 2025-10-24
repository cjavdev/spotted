# typed: strong

module Spotted
  module Resources
    class Browse
      sig { returns(Spotted::Resources::Browse::Categories) }
      attr_reader :categories

      # Get a list of Spotify featured playlists (shown, for example, on a Spotify
      # player's 'Browse' tab).
      sig do
        params(
          limit: Integer,
          locale: String,
          offset: Integer,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::BrowseGetFeaturedPlaylistsResponse)
      end
      def get_featured_playlists(
        # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        limit: nil,
        # The desired language, consisting of an
        # [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code and an
        # [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2),
        # joined by an underscore. For example: `es_MX`, meaning &quot;Spanish
        # (Mexico)&quot;. Provide this parameter if you want the category strings returned
        # in a particular language.<br/> _**Note**: if `locale` is not supplied, or if the
        # specified language is not available, the category strings returned will be in
        # the Spotify default language (American English)._
        locale: nil,
        # The index of the first item to return. Default: 0 (the first item). Use with
        # limit to get the next set of items.
        offset: nil,
        request_options: {}
      )
      end

      # Get a list of new album releases featured in Spotify (shown, for example, on a
      # Spotify player’s “Browse” tab).
      sig do
        params(
          limit: Integer,
          offset: Integer,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::BrowseGetNewReleasesResponse)
      end
      def get_new_releases(
        # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        limit: nil,
        # The index of the first item to return. Default: 0 (the first item). Use with
        # limit to get the next set of items.
        offset: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Spotted::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
