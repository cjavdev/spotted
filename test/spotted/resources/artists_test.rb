# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::ArtistsTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.artists.retrieve("0TnOYISbd1XYRBk9myaseg")

    assert_pattern do
      response => Spotted::Models::ArtistRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        external_urls: Spotted::Models::ArtistRetrieveResponse::ExternalURLs | nil,
        followers: Spotted::Models::ArtistRetrieveResponse::Followers | nil,
        genres: ^(Spotted::Internal::Type::ArrayOf[String]) | nil,
        href: String | nil,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::ArtistRetrieveResponse::Image]) | nil,
        name: String | nil,
        popularity: Integer | nil,
        type: Spotted::Models::ArtistRetrieveResponse::Type | nil,
        uri: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.artists.list(ids: "2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6")

    assert_pattern do
      response => Spotted::Models::ArtistListResponse
    end

    assert_pattern do
      response => {
        artists: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::ArtistListResponse::Artist])
      }
    end
  end

  def test_list_albums
    skip("Prism tests are disabled")

    response = @spotted.artists.list_albums("0TnOYISbd1XYRBk9myaseg")

    assert_pattern do
      response => Spotted::Models::ArtistListAlbumsResponse
    end

    assert_pattern do
      response => {
        href: String,
        items: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::ArtistListAlbumsResponse::Item]),
        limit: Integer,
        next_: String | nil,
        offset: Integer,
        previous: String | nil,
        total: Integer
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
        artists: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::ArtistListRelatedArtistsResponse::Artist])
      }
    end
  end

  def test_list_top_tracks
    skip("Prism tests are disabled")

    response = @spotted.artists.list_top_tracks("0TnOYISbd1XYRBk9myaseg")

    assert_pattern do
      response => Spotted::Models::ArtistListTopTracksResponse
    end

    assert_pattern do
      response => {
        tracks: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::ArtistListTopTracksResponse::Track])
      }
    end
  end
end
