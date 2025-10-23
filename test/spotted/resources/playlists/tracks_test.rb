# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Playlists::TracksTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.playlists.tracks.retrieve("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => Spotted::Models::Playlists::TrackRetrieveResponse
    end

    assert_pattern do
      response => {
        href: String,
        items: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::Playlists::TrackRetrieveResponse::Item]),
        limit: Integer,
        next_: String | nil,
        offset: Integer,
        previous: String | nil,
        total: Integer
      }
    end
  end

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
