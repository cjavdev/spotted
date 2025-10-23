# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Shows#get_episodes
    class ShowGetEpisodesParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      # @!attribute limit
      #   The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
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
      #   The index of the first item to return. Default: 0 (the first item). Use with
      #   limit to get the next set of items.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(limit: nil, market: nil, offset: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::ShowGetEpisodesParams} for more details.
      #
      #   @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
      #
      #   @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      #   @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
      #
      #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
