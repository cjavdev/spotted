# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Playlists::TracksTest < Spotted::Test::ResourceTest
  def test_update
    skip("Prism tests are disabled")

    response = @spotted.playlists.tracks.update("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => Spotted::Models::Playlists::TrackUpdateResponse
    end

    assert_pattern do
      response => {
        snapshot_id: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @spotted.playlists.tracks.list("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::PlaylistTrackObject
    end

    assert_pattern do
      row => {
        added_at: Time | nil,
        added_by: Spotted::PlaylistUserObject | nil,
        is_local: Spotted::Internal::Type::Boolean | nil,
        published: Spotted::Internal::Type::Boolean | nil,
        track: Spotted::PlaylistTrackObject::Track | nil
      }
    end
  end

  def test_add
    skip("Prism tests are disabled")

    response = @spotted.playlists.tracks.add("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => Spotted::Models::Playlists::TrackAddResponse
    end

    assert_pattern do
      response => {
        snapshot_id: String | nil
      }
    end
  end

  def test_remove_required_params
    skip("Prism tests are disabled")

    response = @spotted.playlists.tracks.remove("3cEYpjA9oz9GiPac4AsH4n", tracks: [{}])

    assert_pattern do
      response => Spotted::Models::Playlists::TrackRemoveResponse
    end

    assert_pattern do
      response => {
        snapshot_id: String | nil
      }
    end
  end
end
