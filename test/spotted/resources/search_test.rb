# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::SearchTest < Spotted::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @spotted.search.retrieve(q: "remaster%20track:Doxy%20artist:Miles%20Davis", type: [:album])

    assert_pattern do
      response => Spotted::Models::SearchRetrieveResponse
    end

    assert_pattern do
      response => {
        albums: Spotted::Models::SearchRetrieveResponse::Albums | nil,
        artists: Spotted::Models::SearchRetrieveResponse::Artists | nil,
        audiobooks: Spotted::Models::SearchRetrieveResponse::Audiobooks | nil,
        episodes: Spotted::Models::SearchRetrieveResponse::Episodes | nil,
        playlists: Spotted::Models::SearchRetrieveResponse::Playlists | nil,
        shows: Spotted::Models::SearchRetrieveResponse::Shows | nil,
        tracks: Spotted::Models::SearchRetrieveResponse::Tracks | nil
      }
    end
  end
end
