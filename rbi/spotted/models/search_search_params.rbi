# typed: strong

module Spotted
  module Models
    class SearchSearchParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Spotted::SearchSearchParams, Spotted::Internal::AnyHash)
        end

      # Your search query.
      #
      # You can narrow down your search using field filters. The available filters are
      # `album`, `artist`, `track`, `year`, `upc`, `tag:hipster`, `tag:new`, `isrc`, and
      # `genre`. Each field filter only applies to certain result types.
      #
      # The `artist` and `year` filters can be used while searching albums, artists and
      # tracks. You can filter on a single `year` or a range (e.g. 1955-1960).<br /> The
      # `album` filter can be used while searching albums and tracks.<br /> The `genre`
      # filter can be used while searching artists and tracks.<br /> The `isrc` and
      # `track` filters can be used while searching tracks.<br /> The `upc`, `tag:new`
      # and `tag:hipster` filters can only be used while searching albums. The `tag:new`
      # filter will return albums released in the past two weeks and `tag:hipster` can
      # be used to return only albums with the lowest 10% popularity.<br />
      sig { returns(String) }
      attr_accessor :q

      # A comma-separated list of item types to search across. Search results include
      # hits from all the specified item types. For example: `q=abacab&type=album,track`
      # returns both albums and tracks matching "abacab".
      sig { returns(T::Array[Spotted::SearchSearchParams::Type::OrSymbol]) }
      attr_accessor :type

      # If `include_external=audio` is specified it signals that the client can play
      # externally hosted audio content, and marks the content as playable in the
      # response. By default externally hosted audio content is marked as unplayable in
      # the response.
      sig do
        returns(
          T.nilable(Spotted::SearchSearchParams::IncludeExternal::OrSymbol)
        )
      end
      attr_reader :include_external

      sig do
        params(
          include_external:
            Spotted::SearchSearchParams::IncludeExternal::OrSymbol
        ).void
      end
      attr_writer :include_external

      # The maximum number of results to return in each item type.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # An
      # [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
      # If a country code is specified, only content that is available in that market
      # will be returned.<br/> If a valid user access token is specified in the request
      # header, the country associated with the user account will take priority over
      # this parameter.<br/> _**Note**: If neither market or user country are provided,
      # the content is considered unavailable for the client._<br/> Users can view the
      # country that is associated with their account in the
      # [account settings](https://www.spotify.com/account/overview/).
      sig { returns(T.nilable(String)) }
      attr_reader :market

      sig { params(market: String).void }
      attr_writer :market

      # The index of the first result to return. Use with limit to get the next page of
      # search results.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          q: String,
          type: T::Array[Spotted::SearchSearchParams::Type::OrSymbol],
          include_external:
            Spotted::SearchSearchParams::IncludeExternal::OrSymbol,
          limit: Integer,
          market: String,
          offset: Integer,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Your search query.
        #
        # You can narrow down your search using field filters. The available filters are
        # `album`, `artist`, `track`, `year`, `upc`, `tag:hipster`, `tag:new`, `isrc`, and
        # `genre`. Each field filter only applies to certain result types.
        #
        # The `artist` and `year` filters can be used while searching albums, artists and
        # tracks. You can filter on a single `year` or a range (e.g. 1955-1960).<br /> The
        # `album` filter can be used while searching albums and tracks.<br /> The `genre`
        # filter can be used while searching artists and tracks.<br /> The `isrc` and
        # `track` filters can be used while searching tracks.<br /> The `upc`, `tag:new`
        # and `tag:hipster` filters can only be used while searching albums. The `tag:new`
        # filter will return albums released in the past two weeks and `tag:hipster` can
        # be used to return only albums with the lowest 10% popularity.<br />
        q:,
        # A comma-separated list of item types to search across. Search results include
        # hits from all the specified item types. For example: `q=abacab&type=album,track`
        # returns both albums and tracks matching "abacab".
        type:,
        # If `include_external=audio` is specified it signals that the client can play
        # externally hosted audio content, and marks the content as playable in the
        # response. By default externally hosted audio content is marked as unplayable in
        # the response.
        include_external: nil,
        # The maximum number of results to return in each item type.
        limit: nil,
        # An
        # [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
        # If a country code is specified, only content that is available in that market
        # will be returned.<br/> If a valid user access token is specified in the request
        # header, the country associated with the user account will take priority over
        # this parameter.<br/> _**Note**: If neither market or user country are provided,
        # the content is considered unavailable for the client._<br/> Users can view the
        # country that is associated with their account in the
        # [account settings](https://www.spotify.com/account/overview/).
        market: nil,
        # The index of the first result to return. Use with limit to get the next page of
        # search results.
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            q: String,
            type: T::Array[Spotted::SearchSearchParams::Type::OrSymbol],
            include_external:
              Spotted::SearchSearchParams::IncludeExternal::OrSymbol,
            limit: Integer,
            market: String,
            offset: Integer,
            request_options: Spotted::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Type
        extend Spotted::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Spotted::SearchSearchParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALBUM = T.let(:album, Spotted::SearchSearchParams::Type::TaggedSymbol)
        ARTIST = T.let(:artist, Spotted::SearchSearchParams::Type::TaggedSymbol)
        PLAYLIST =
          T.let(:playlist, Spotted::SearchSearchParams::Type::TaggedSymbol)
        TRACK = T.let(:track, Spotted::SearchSearchParams::Type::TaggedSymbol)
        SHOW = T.let(:show, Spotted::SearchSearchParams::Type::TaggedSymbol)
        EPISODE =
          T.let(:episode, Spotted::SearchSearchParams::Type::TaggedSymbol)
        AUDIOBOOK =
          T.let(:audiobook, Spotted::SearchSearchParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Spotted::SearchSearchParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # If `include_external=audio` is specified it signals that the client can play
      # externally hosted audio content, and marks the content as playable in the
      # response. By default externally hosted audio content is marked as unplayable in
      # the response.
      module IncludeExternal
        extend Spotted::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Spotted::SearchSearchParams::IncludeExternal)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUDIO =
          T.let(
            :audio,
            Spotted::SearchSearchParams::IncludeExternal::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Spotted::SearchSearchParams::IncludeExternal::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
