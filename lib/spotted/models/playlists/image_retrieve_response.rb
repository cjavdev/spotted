# frozen_string_literal: true

module Spotted
  module Models
    module Playlists
      # @type [Spotted::Internal::Type::Converter]
      ImageRetrieveResponse = Spotted::Internal::Type::ArrayOf[-> { Spotted::ImageObject }]
    end
  end
end
