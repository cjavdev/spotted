# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Browse::CategoriesTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.browse.categories.retrieve("dinner")

    assert_pattern do
      response => Spotted::Models::Browse::CategoryRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        href: String,
        icons: ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject]),
        name: String,
        published: Spotted::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @spotted.browse.categories.list

    assert_pattern do
      response => Spotted::Models::Browse::CategoryListResponse
    end

    assert_pattern do
      response => {
        categories: Spotted::Models::Browse::CategoryListResponse::Categories
      }
    end
  end

  def test_get_playlists
    skip("Prism tests are disabled")

    response = @spotted.browse.categories.get_playlists("dinner")

    assert_pattern do
      response => Spotted::Models::Browse::CategoryGetPlaylistsResponse
    end

    assert_pattern do
      response => {
        message: String | nil,
        playlists: Spotted::PagingPlaylistObject | nil,
        published: Spotted::Internal::Type::Boolean | nil
      }
    end
  end
end
