# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::AlbumsTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy")

    assert_pattern do
      response => Spotted::Models::AlbumRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        album_type: Spotted::Models::AlbumRetrieveResponse::AlbumType,
        available_markets: ^(Spotted::Internal::Type::ArrayOf[String]),
        external_urls: Spotted::ExternalURLObject,
        href: String,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject]),
        name: String,
        release_date: String,
        release_date_precision: Spotted::Models::AlbumRetrieveResponse::ReleaseDatePrecision,
        total_tracks: Integer,
        type: Spotted::Models::AlbumRetrieveResponse::Type,
        uri: String,
        artists: ^(Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedArtistObject]) | nil,
        copyrights: ^(Spotted::Internal::Type::ArrayOf[Spotted::CopyrightObject]) | nil,
        external_ids: Spotted::ExternalIDObject | nil,
        genres: ^(Spotted::Internal::Type::ArrayOf[String]) | nil,
        label: String | nil,
        popularity: Integer | nil,
        restrictions: Spotted::AlbumRestrictionObject | nil,
        tracks: Spotted::Models::AlbumRetrieveResponse::Tracks | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.albums.list(ids: "382ObEPsp2rxGrnsizN5TX,1A2GTWGtFfWp7KSQTwWOyo,2noRn2Aes5aoNVsU6iWThc")

    assert_pattern do
      response => Spotted::Models::AlbumListResponse
    end

    assert_pattern do
      response => {
        albums: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::AlbumListResponse::Album])
      }
    end
  end
end
