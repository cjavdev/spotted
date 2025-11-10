# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::ChaptersTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.chapters.retrieve("0D5wENdkdwbqlrHoaJ9g29")

    assert_pattern do
      response => Spotted::Models::ChapterRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        audio_preview_url: String | nil,
        audiobook: Spotted::AudiobookBase,
        chapter_number: Integer,
        description: String,
        duration_ms: Integer,
        explicit: Spotted::Internal::Type::Boolean,
        external_urls: Spotted::ExternalURLObject,
        href: String,
        html_description: String,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject]),
        is_playable: Spotted::Internal::Type::Boolean,
        languages: ^(Spotted::Internal::Type::ArrayOf[String]),
        name: String,
        release_date: String,
        release_date_precision: Spotted::Models::ChapterRetrieveResponse::ReleaseDatePrecision,
        type: Spotted::Models::ChapterRetrieveResponse::Type,
        uri: String,
        available_markets: ^(Spotted::Internal::Type::ArrayOf[String]) | nil,
        restrictions: Spotted::ChapterRestrictionObject | nil,
        resume_point: Spotted::ResumePointObject | nil
      }
    end
  end

  def test_bulk_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.chapters.bulk_retrieve(
        ids: "0IsXVP0JmcB2adSE338GkK,3ZXb8FKZGU0EHALYX6uCzU,0D5wENdkdwbqlrHoaJ9g29"
      )

    assert_pattern do
      response => Spotted::Models::ChapterBulkRetrieveResponse
    end

    assert_pattern do
      response => {
        chapters: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::ChapterBulkRetrieveResponse::Chapter])
      }
    end
  end
end
