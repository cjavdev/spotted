# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Top#list
      module TopListResponse
        extend Spotted::Internal::Type::Union

        discriminator :type

        variant :artist, -> { Spotted::ArtistObject }

        variant :track, -> { Spotted::TrackObject }

        # @!method self.variants
        #   @return [Array(Spotted::Models::ArtistObject, Spotted::Models::TrackObject)]
      end
    end
  end
end
