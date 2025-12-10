# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::PlaylistsTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.playlists.retrieve("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => Spotted::Models::PlaylistRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        collaborative: Spotted::Internal::Type::Boolean | nil,
        description: String | nil,
        external_urls: Spotted::ExternalURLObject | nil,
        followers: Spotted::FollowersObject | nil,
        href: String | nil,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject]) | nil,
        name: String | nil,
        owner: Spotted::Models::PlaylistRetrieveResponse::Owner | nil,
        snapshot_id: String | nil,
        tracks: Spotted::Models::PlaylistRetrieveResponse::Tracks | nil,
        type: String | nil,
        uri: String | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @spotted.playlists.update("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => nil
    end
  end
end
