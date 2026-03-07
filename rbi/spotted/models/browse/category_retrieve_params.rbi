# typed: strong

module Spotted
  module Models
    module Browse
      class CategoryRetrieveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Browse::CategoryRetrieveParams,
              Spotted::Internal::AnyHash
            )
          end

        # The [Spotify category ID](/documentation/web-api/concepts/spotify-uris-ids) for
        # the category.
        sig { returns(String) }
        attr_accessor :category_id

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

        sig do
          params(
            category_id: String,
            locale: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The [Spotify category ID](/documentation/web-api/concepts/spotify-uris-ids) for
          # the category.
          category_id:,
          # The desired language, consisting of an
          # [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code and an
          # [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2),
          # joined by an underscore. For example: `es_MX`, meaning &quot;Spanish
          # (Mexico)&quot;. Provide this parameter if you want the category strings returned
          # in a particular language.<br/> _**Note**: if `locale` is not supplied, or if the
          # specified language is not available, the category strings returned will be in
          # the Spotify default language (American English)._
          locale: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              category_id: String,
              locale: String,
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
