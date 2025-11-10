# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::SearchTest < Spotted::Test::ResourceTest
  def test_query_required_params
    skip("Prism tests are disabled")

    response = @spotted.search.query(q: "remaster%20track:Doxy%20artist:Miles%20Davis", type: [:album])

    assert_pattern do
      response => Spotted::Models::SearchQueryResponse
    end

    assert_pattern do
      response => {
        albums: Spotted::Models::SearchQueryResponse::Albums | nil,
        artists: Spotted::Models::SearchQueryResponse::Artists | nil,
        audiobooks: Spotted::Models::SearchQueryResponse::Audiobooks | nil,
        episodes: Spotted::Models::SearchQueryResponse::Episodes | nil,
        playlists: Spotted::PagingPlaylistObject | nil,
        shows: Spotted::Models::SearchQueryResponse::Shows | nil,
        tracks: Spotted::Models::SearchQueryResponse::Tracks | nil
      }
    end
  end
end
