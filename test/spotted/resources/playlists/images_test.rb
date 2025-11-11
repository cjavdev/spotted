# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Playlists::ImagesTest < Spotted::Test::ResourceTest
  def test_update_required_params
    skip("Prism doesn't support application/binary responses")

    # Ignore Layout/LineLength
    # rubocop:disable Layout/LineLength
    response = @spotted.playlists.images.update("3cEYpjA9oz9GiPac4AsH4n", body: Pathname(__FILE__))
    # rubocop:enable Layout/LineLength

    assert_pattern do
      response => StringIO
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @spotted.playlists.images.list("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject])
    end
  end
end
