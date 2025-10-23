# frozen_string_literal: true

module Spotted
  module Models
    class FollowersObject < Spotted::Internal::Type::BaseModel
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
      #   {Spotted::Models::FollowersObject} for more details.
      #
      #   @param href [String, nil] This will always be set to null, as the Web API does not support it at the momen
      #
      #   @param total [Integer] The total number of followers.
    end
  end
end
