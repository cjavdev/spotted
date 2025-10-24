# typed: strong

module Spotted
  module Models
    module Playlists
      FollowerCheckResponse =
        T.let(
          Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean],
          Spotted::Internal::Type::Converter
        )
    end
  end
end
