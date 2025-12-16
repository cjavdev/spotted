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
        type: Symbol,
        uri: String,
        artists: ^(Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedArtistObject]) | nil,
        copyrights: ^(Spotted::Internal::Type::ArrayOf[Spotted::CopyrightObject]) | nil,
        external_ids: Spotted::ExternalIDObject | nil,
        genres: ^(Spotted::Internal::Type::ArrayOf[String]) | nil,
        label: String | nil,
        popularity: Integer | nil,
        published: Spotted::Internal::Type::Boolean | nil,
        restrictions: Spotted::AlbumRestrictionObject | nil,
        tracks: Spotted::Models::AlbumRetrieveResponse::Tracks | nil
      }
    end
  end

  def test_bulk_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.albums.bulk_retrieve(ids: "382ObEPsp2rxGrnsizN5TX,1A2GTWGtFfWp7KSQTwWOyo,2noRn2Aes5aoNVsU6iWThc")

    assert_pattern do
      response => Spotted::Models::AlbumBulkRetrieveResponse
    end

    assert_pattern do
      response => {
        albums: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::AlbumBulkRetrieveResponse::Album])
      }
    end
  end

  def test_list_tracks
    skip("Prism tests are disabled")

    response = @spotted.albums.list_tracks("4aawyAB9vmqN3uQ7FjRGTy")

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::SimplifiedTrackObject
    end

    assert_pattern do
      row => {
        id: String | nil,
        artists: ^(Spotted::Internal::Type::ArrayOf[Spotted::SimplifiedArtistObject]) | nil,
        available_markets: ^(Spotted::Internal::Type::ArrayOf[String]) | nil,
        disc_number: Integer | nil,
        duration_ms: Integer | nil,
        explicit: Spotted::Internal::Type::Boolean | nil,
        external_urls: Spotted::ExternalURLObject | nil,
        href: String | nil,
        is_local: Spotted::Internal::Type::Boolean | nil,
        is_playable: Spotted::Internal::Type::Boolean | nil,
        linked_from: Spotted::LinkedTrackObject | nil,
        name: String | nil,
        preview_url: String | nil,
        published: Spotted::Internal::Type::Boolean | nil,
        restrictions: Spotted::TrackRestrictionObject | nil,
        track_number: Integer | nil,
        type: String | nil,
        uri: String | nil
      }
    end
  end
end
