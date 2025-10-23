# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::TopTest < Spotted::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @spotted.me.top.list(:artists)

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::Models::Me::TopListResponse
    end

    assert_pattern do
      case row
      in Spotted::ArtistObject
      in Spotted::TrackObject
      end
    end

    assert_pattern do
      case row
      in {
        type: :artist,
        id: String | nil,
        external_urls: Spotted::ExternalURLObject | nil,
        followers: Spotted::FollowersObject | nil,
        genres: ^(Spotted::Internal::Type::ArrayOf[String]) | nil,
        href: String | nil,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject]) | nil,
        name: String | nil,
        popularity: Integer | nil,
        uri: String | nil
      }
      in {
        type: :track,
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
        linked_from: Spotted::Internal::Type::Unknown | nil,
        name: String | nil,
        popularity: Integer | nil,
        preview_url: String | nil,
        restrictions: Spotted::TrackRestrictionObject | nil,
        track_number: Integer | nil,
        uri: String | nil
      }
      end
    end
  end
end
