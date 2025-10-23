# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Users::PlaylistsTest < Spotted::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @spotted.users.playlists.create("smedjan", name: "New Playlist")

    assert_pattern do
      response => Spotted::Models::Users::PlaylistCreateResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        collaborative: Spotted::Internal::Type::Boolean | nil,
        description: String | nil,
        external_urls: Spotted::ExternalURLObject | nil,
        href: String | nil,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject]) | nil,
        name: String | nil,
        owner: Spotted::Models::Users::PlaylistCreateResponse::Owner | nil,
        public: Spotted::Internal::Type::Boolean | nil,
        snapshot_id: String | nil,
        tracks: Spotted::Models::Users::PlaylistCreateResponse::Tracks | nil,
        type: String | nil,
        uri: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @spotted.users.playlists.list("smedjan")

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
