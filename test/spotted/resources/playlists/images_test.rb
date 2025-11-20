# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Playlists::ImagesTest < Spotted::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @spotted.playlists.images.list("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject])
    end
  end
end
