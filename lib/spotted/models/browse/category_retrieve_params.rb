# frozen_string_literal: true

module Spotted
  module Models
    module Browse
      # @see Spotted::Resources::Browse::Categories#retrieve
      class CategoryRetrieveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute locale
        #   The desired language, consisting of an
        #   [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code and an
        #   [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2),
        #   joined by an underscore. For example: `es_MX`, meaning &quot;Spanish
        #   (Mexico)&quot;. Provide this parameter if you want the category strings returned
        #   in a particular language.<br/> _**Note**: if `locale` is not supplied, or if the
        #   specified language is not available, the category strings returned will be in
        #   the Spotify default language (American English)._
        #
        #   @return [String, nil]
        optional :locale, String

        # @!method initialize(locale: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Browse::CategoryRetrieveParams} for more details.
        #
        #   @param locale [String] The desired language, consisting of an [ISO 639-1](http://en.wikipedia.org/wiki/
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
