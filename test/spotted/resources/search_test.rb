# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::SearchTest < Spotted::Test::ResourceTest
  def test_search_required_params
    skip("Prism tests are disabled")

    response = @spotted.search.search(q: "remaster%20track:Doxy%20artist:Miles%20Davis", type: [:album])

    assert_pattern do
      response => Spotted::Models::SearchSearchResponse
    end

    assert_pattern do
      response => {
        albums: Spotted::Models::SearchSearchResponse::Albums | nil,
        artists: Spotted::Models::SearchSearchResponse::Artists | nil,
        audiobooks: Spotted::Models::SearchSearchResponse::Audiobooks | nil,
        episodes: Spotted::Models::SearchSearchResponse::Episodes | nil,
        playlists: Spotted::PagingPlaylistObject | nil,
        shows: Spotted::Models::SearchSearchResponse::Shows | nil,
        tracks: Spotted::Models::SearchSearchResponse::Tracks | nil
      }
    end
  end
end
