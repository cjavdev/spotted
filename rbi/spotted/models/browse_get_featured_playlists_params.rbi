# typed: strong

module Spotted
  module Models
    class BrowseGetFeaturedPlaylistsParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Spotted::BrowseGetFeaturedPlaylistsParams,
            Spotted::Internal::AnyHash
          )
        end

      # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The desired language, consisting of an
      # [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code and an
      # [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2),
      # joined by an underscore. For example: `es_MX`, meaning &quot;Spanish
      # (Mexico)&quot;. Provide this parameter if you want the category strings returned
      # in a particular language.<br/> _**Note**: if `locale` is not supplied, or if the
      # specified language is not available, the category strings returned will be in
      # the Spotify default language (American English)._
      sig { returns(T.nilable(String)) }
      attr_reader :locale

      sig { params(locale: String).void }
      attr_writer :locale

      # The index of the first item to return. Default: 0 (the first item). Use with
      # limit to get the next set of items.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          limit: Integer,
          locale: String,
          offset: Integer,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            limit: Integer,
            locale: String,
            offset: Integer,
            request_options: Spotted::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
