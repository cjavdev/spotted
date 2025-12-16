# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::ArtistsTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.artists.retrieve("0TnOYISbd1XYRBk9myaseg")

    assert_pattern do
      response => Spotted::ArtistObject
    end

    assert_pattern do
      response => {
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

  def test_bulk_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.artists.bulk_retrieve(
        ids: "2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6"
      )

    assert_pattern do
      response => Spotted::Models::ArtistBulkRetrieveResponse
    end

    assert_pattern do
      response => {
        artists: ^(Spotted::Internal::Type::ArrayOf[Spotted::ArtistObject])
      }
    end
  end

  def test_list_albums
    skip("Prism tests are disabled")

    response = @spotted.artists.list_albums("0TnOYISbd1XYRBk9myaseg")

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::Models::ArtistListAlbumsResponse
    end

    assert_pattern do
      row => {
        id: String,
        album_group: Spotted::Models::ArtistListAlbumsResponse::AlbumGroup,
        album_type: Spotted::Models::ArtistListAlbumsResponse::AlbumType,
        artists: ^(Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedArtistObject]),
        available_markets: ^(Spotted::Internal::Type::ArrayOf[String]),
        external_urls: Spotted::ExternalURLObject,
        href: String,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject]),
        name: String,
        release_date: String,
        release_date_precision: Spotted::Models::ArtistListAlbumsResponse::ReleaseDatePrecision,
        total_tracks: Integer,
        type: Symbol,
        uri: String,
        published: Spotted::Internal::Type::Boolean | nil,
        restrictions: Spotted::AlbumRestrictionObject | nil
      }
    end
  end

  def test_list_related_artists
    skip("Prism tests are disabled")

    response = @spotted.artists.list_related_artists("0TnOYISbd1XYRBk9myaseg")

    assert_pattern do
      response => Spotted::Models::ArtistListRelatedArtistsResponse
    end

    assert_pattern do
      response => {
        artists: ^(Spotted::Internal::Type::ArrayOf[Spotted::ArtistObject])
      }
    end
  end

  def test_top_tracks
    skip("Prism tests are disabled")

    response = @spotted.artists.top_tracks("0TnOYISbd1XYRBk9myaseg")

    assert_pattern do
      response => Spotted::Models::ArtistTopTracksResponse
    end

    assert_pattern do
      response => {
        tracks: ^(Spotted::Internal::Type::ArrayOf[Spotted::TrackObject])
      }
    end
  end
end
