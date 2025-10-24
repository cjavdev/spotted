# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::AudiobooksTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.audiobooks.retrieve("7iHfbu1YPACw6oZPAFJtqe")

    assert_pattern do
      response => Spotted::Models::AudiobookRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        authors: ^(Spotted::Internal::Type::ArrayOf[Spotted::AuthorObject]),
        available_markets: ^(Spotted::Internal::Type::ArrayOf[String]),
        chapters: Spotted::Models::AudiobookRetrieveResponse::Chapters,
        copyrights: ^(Spotted::Internal::Type::ArrayOf[Spotted::CopyrightObject]),
        description: String,
        explicit: Spotted::Internal::Type::Boolean,
        external_urls: Spotted::ExternalURLObject,
        href: String,
        html_description: String,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject]),
        languages: ^(Spotted::Internal::Type::ArrayOf[String]),
        media_type: String,
        name: String,
        narrators: ^(Spotted::Internal::Type::ArrayOf[Spotted::NarratorObject]),
        publisher: String,
        total_chapters: Integer,
        type: Spotted::Models::AudiobookRetrieveResponse::Type,
        uri: String,
        edition: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.audiobooks.list(ids: "18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ,7iHfbu1YPACw6oZPAFJtqe")

    assert_pattern do
      response => Spotted::Models::AudiobookListResponse
    end

    assert_pattern do
      response => {
        audiobooks: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::AudiobookListResponse::Audiobook])
      }
    end
  end

  def test_list_chapters
    skip("Prism tests are disabled")

    response = @spotted.audiobooks.list_chapters("7iHfbu1YPACw6oZPAFJtqe")

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::SimplifiedChapterObject
    end

    assert_pattern do
      row => {
        id: String,
        audio_preview_url: String | nil,
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
        release_date_precision: Spotted::SimplifiedChapterObject::ReleaseDatePrecision,
        type: Spotted::SimplifiedChapterObject::Type,
        uri: String,
        available_markets: ^(Spotted::Internal::Type::ArrayOf[String]) | nil,
        restrictions: Spotted::ChapterRestrictionObject | nil,
        resume_point: Spotted::ResumePointObject | nil
      }
    end
  end
end
