# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Users#retrieve_profile
    class UserRetrieveProfileParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      # @!attribute user_id
      #   The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(user_id:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::UserRetrieveProfileParams} for more details.
      #
      #   @param user_id [String] The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
      #
      #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
