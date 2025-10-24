# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::PlaylistsTest < Spotted::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @spotted.me.playlists.list

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::SimplifiedPlaylistObject
    end

    assert_pattern do
      row => {
        id: String | nil,
        collaborative: Spotted::Internal::Type::Boolean | nil,
        description: String | nil,
        external_urls: Spotted::ExternalURLObject | nil,
        href: String | nil,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject]) | nil,
        name: String | nil,
        owner: Spotted::SimplifiedPlaylistObject::Owner | nil,
        public: Spotted::Internal::Type::Boolean | nil,
        snapshot_id: String | nil,
        tracks: Spotted::PlaylistTracksRefObject | nil,
        type: String | nil,
        uri: String | nil
      }
    end
  end
end
