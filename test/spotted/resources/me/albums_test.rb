# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::AlbumsTest < Spotted::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @spotted.me.albums.list

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::Models::Me::AlbumListResponse
    end

    assert_pattern do
      row => {
        added_at: Time | nil,
        album: Spotted::Models::Me::AlbumListResponse::Album | nil
      }
    end
  end

  def test_check_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.me.albums.check(ids: "382ObEPsp2rxGrnsizN5TX,1A2GTWGtFfWp7KSQTwWOyo,2noRn2Aes5aoNVsU6iWThc")

    assert_pattern do
      response => ^(Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean])
    end
  end

  def test_remove_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.me.albums.remove(
        query_ids: "382ObEPsp2rxGrnsizN5TX,1A2GTWGtFfWp7KSQTwWOyo,2noRn2Aes5aoNVsU6iWThc"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_save_required_params
    skip("Prism tests are disabled")

    # Ignore Layout/LineLength
    # rubocop:disable Layout/LineLength
    response =
      @spotted.me.albums.save(query_ids: "382ObEPsp2rxGrnsizN5TX,1A2GTWGtFfWp7KSQTwWOyo,2noRn2Aes5aoNVsU6iWThc")
    # rubocop:enable Layout/LineLength

    assert_pattern do
      response => nil
    end
  end
end
