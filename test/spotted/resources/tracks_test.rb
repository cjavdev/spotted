# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::TracksTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.tracks.retrieve("11dFghVXANMlKmJXsNCbNl")

    assert_pattern do
      response => Spotted::TrackObject
    end

    assert_pattern do
      response => {
        id: String | nil,
        album: Spotted::TrackObject::Album | nil,
        artists: ^(Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedArtistObject]) | nil,
        available_markets: ^(Spotted::Internal::Type::ArrayOf[String]) | nil,
        disc_number: Integer | nil,
        duration_ms: Integer | nil,
        explicit: Spotted::Internal::Type::Boolean | nil,
        external_ids: Spotted::ExternalIDObject | nil,
        external_urls: Spotted::ExternalURLObject | nil,
        href: String | nil,
        is_local: Spotted::Internal::Type::Boolean | nil,
        is_playable: Spotted::Internal::Type::Boolean | nil,
        linked_from: Spotted::LinkedTrackObject | nil,
        name: String | nil,
        popularity: Integer | nil,
        preview_url: String | nil,
        restrictions: Spotted::TrackRestrictionObject | nil,
        track_number: Integer | nil,
        type: Spotted::TrackObject::Type | nil,
        uri: String | nil
      }
    end
  end

  def test_bulk_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.tracks.bulk_retrieve(ids: "7ouMYWpwJ422jRcDASZB7P,4VqPOruhp5EdPBeR92t6lQ,2takcwOaAZWiXQijPHIx7B")

    assert_pattern do
      response => Spotted::Models::TrackBulkRetrieveResponse
    end

    assert_pattern do
      response => {
        tracks: ^(Spotted::Internal::Type::ArrayOf[Spotted::TrackObject])
      }
    end
  end
end
