# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::TopTest < Spotted::Test::ResourceTest
  def test_list_top_artists
    skip("Prism tests are disabled")

    response = @spotted.me.top.list_top_artists

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::ArtistObject
    end

    assert_pattern do
      row => {
        id: String | nil,
        external_urls: Spotted::ExternalURLObject | nil,
        followers: Spotted::FollowersObject | nil,
        genres: ^(Spotted::Internal::Type::ArrayOf[String]) | nil,
        href: String | nil,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject]) | nil,
        name: String | nil,
        popularity: Integer | nil,
        published: Spotted::Internal::Type::Boolean | nil,
        type: Spotted::ArtistObject::Type | nil,
        uri: String | nil
      }
    end
  end

  def test_list_top_tracks
    skip("Prism tests are disabled")

    response = @spotted.me.top.list_top_tracks

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::TrackObject
    end

    assert_pattern do
      row => {
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
        published: Spotted::Internal::Type::Boolean | nil,
        restrictions: Spotted::TrackRestrictionObject | nil,
        track_number: Integer | nil,
        type: Spotted::TrackObject::Type | nil,
        uri: String | nil
      }
    end
  end
end
