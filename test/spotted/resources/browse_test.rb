# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::BrowseTest < Spotted::Test::ResourceTest
  def test_get_featured_playlists
    skip("Prism tests are disabled")

    response = @spotted.browse.get_featured_playlists

    assert_pattern do
      response => Spotted::Models::BrowseGetFeaturedPlaylistsResponse
    end

    assert_pattern do
      response => {
        message: String | nil,
        playlists: Spotted::PagingPlaylistObject | nil,
        published: Spotted::Internal::Type::Boolean | nil
      }
    end
  end

  def test_get_new_releases
    skip("Prism tests are disabled")

    response = @spotted.browse.get_new_releases

    assert_pattern do
      response => Spotted::Models::BrowseGetNewReleasesResponse
    end

    assert_pattern do
      response => {
        albums: Spotted::Models::BrowseGetNewReleasesResponse::Albums
      }
    end
  end
end
