# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Playlists::ImagesTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.playlists.images.retrieve("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::Playlists::ImageRetrieveResponseItem])
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @spotted.playlists.images.update("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => nil
    end
  end
end
