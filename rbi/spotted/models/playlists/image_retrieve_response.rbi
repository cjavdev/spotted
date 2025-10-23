# typed: strong

module Spotted
  module Models
    module Playlists
      ImageRetrieveResponse =
        T.let(
          Spotted::Internal::Type::ArrayOf[Spotted::ImageObject],
          Spotted::Internal::Type::Converter
        )
    end
  end
end
