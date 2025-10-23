# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::TracksTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.tracks.retrieve("11dFghVXANMlKmJXsNCbNl")

    assert_pattern do
      response => Spotted::Models::TrackRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        album: Spotted::Models::TrackRetrieveResponse::Album | nil,
        artists: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::TrackRetrieveResponse::Artist]) | nil,
        available_markets: ^(Spotted::Internal::Type::ArrayOf[String]) | nil,
        disc_number: Integer | nil,
        duration_ms: Integer | nil,
        explicit: Spotted::Internal::Type::Boolean | nil,
        external_ids: Spotted::Models::TrackRetrieveResponse::ExternalIDs | nil,
        external_urls: Spotted::Models::TrackRetrieveResponse::ExternalURLs | nil,
        href: String | nil,
        is_local: Spotted::Internal::Type::Boolean | nil,
        is_playable: Spotted::Internal::Type::Boolean | nil,
        linked_from: Spotted::Internal::Type::Unknown | nil,
        name: String | nil,
        popularity: Integer | nil,
        preview_url: String | nil,
        restrictions: Spotted::Models::TrackRetrieveResponse::Restrictions | nil,
        track_number: Integer | nil,
        type: Spotted::Models::TrackRetrieveResponse::Type | nil,
        uri: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.tracks.list(ids: "7ouMYWpwJ422jRcDASZB7P,4VqPOruhp5EdPBeR92t6lQ,2takcwOaAZWiXQijPHIx7B")

    assert_pattern do
      response => Spotted::Models::TrackListResponse
    end

    assert_pattern do
      response => {
        tracks: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::TrackListResponse::Track])
      }
    end
  end
end
