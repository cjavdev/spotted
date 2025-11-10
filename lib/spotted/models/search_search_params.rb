# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Search#search
    class SearchSearchParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      # @!attribute q
      #   Your search query.
      #
      #   You can narrow down your search using field filters. The available filters are
      #   `album`, `artist`, `track`, `year`, `upc`, `tag:hipster`, `tag:new`, `isrc`, and
      #   `genre`. Each field filter only applies to certain result types.
      #
      #   The `artist` and `year` filters can be used while searching albums, artists and
      #   tracks. You can filter on a single `year` or a range (e.g. 1955-1960).<br /> The
      #   `album` filter can be used while searching albums and tracks.<br /> The `genre`
      #   filter can be used while searching artists and tracks.<br /> The `isrc` and
      #   `track` filters can be used while searching tracks.<br /> The `upc`, `tag:new`
      #   and `tag:hipster` filters can only be used while searching albums. The `tag:new`
      #   filter will return albums released in the past two weeks and `tag:hipster` can
      #   be used to return only albums with the lowest 10% popularity.<br />
      #
      #   @return [String]
      required :q, String

      # @!attribute type
      #   A comma-separated list of item types to search across. Search results include
      #   hits from all the specified item types. For example: `q=abacab&type=album,track`
      #   returns both albums and tracks matching "abacab".
      #
      #   @return [Array<Symbol, Spotted::Models::SearchSearchParams::Type>]
      required :type, -> { Spotted::Internal::Type::ArrayOf[enum: Spotted::SearchSearchParams::Type] }

      # @!attribute include_external
      #   If `include_external=audio` is specified it signals that the client can play
      #   externally hosted audio content, and marks the content as playable in the
      #   response. By default externally hosted audio content is marked as unplayable in
      #   the response.
      #
      #   @return [Symbol, Spotted::Models::SearchSearchParams::IncludeExternal, nil]
      optional :include_external, enum: -> { Spotted::SearchSearchParams::IncludeExternal }

      # @!attribute limit
      #   The maximum number of results to return in each item type.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute market
      #   An
      #   [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
      #   If a country code is specified, only content that is available in that market
      #   will be returned.<br/> If a valid user access token is specified in the request
      #   header, the country associated with the user account will take priority over
      #   this parameter.<br/> _**Note**: If neither market or user country are provided,
      #   the content is considered unavailable for the client._<br/> Users can view the
      #   country that is associated with their account in the
      #   [account settings](https://www.spotify.com/account/overview/).
      #
      #   @return [String, nil]
      optional :market, String

      # @!attribute offset
      #   The index of the first result to return. Use with limit to get the next page of
      #   search results.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(q:, type:, include_external: nil, limit: nil, market: nil, offset: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::SearchSearchParams} for more details.
      #
      #   @param q [String] Your search query.
      #
      #   @param type [Array<Symbol, Spotted::Models::SearchSearchParams::Type>] A comma-separated list of item types to search across. Search results include hi
      #
      #   @param include_external [Symbol, Spotted::Models::SearchSearchParams::IncludeExternal] If `include_external=audio` is specified it signals that the client can play ext
      #
      #   @param limit [Integer] The maximum number of results to return in each item type.
      #
      #   @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      #   @param offset [Integer] The index of the first result to return. Use
      #
      #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]

      module Type
        extend Spotted::Internal::Type::Enum

        ALBUM = :album
        ARTIST = :artist
        PLAYLIST = :playlist
        TRACK = :track
        SHOW = :show
        EPISODE = :episode
        AUDIOBOOK = :audiobook

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # If `include_external=audio` is specified it signals that the client can play
      # externally hosted audio content, and marks the content as playable in the
      # response. By default externally hosted audio content is marked as unplayable in
      # the response.
      module IncludeExternal
        extend Spotted::Internal::Type::Enum

        AUDIO = :audio

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
