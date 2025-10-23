# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::PlaylistsTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.me.playlists.retrieve

    assert_pattern do
      response => Spotted::PagingPlaylistObject
    end

    assert_pattern do
      response => {
        href: String,
        items: ^(Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedPlaylistObject]),
        limit: Integer,
        next_: String | nil,
        offset: Integer,
        previous: String | nil,
        total: Integer
      }
    end
  end
end
