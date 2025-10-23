# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::AudiobooksTest < Spotted::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @spotted.me.audiobooks.list

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::Models::Me::AudiobookListResponse
    end

    assert_pattern do
      row => {
        id: String,
        authors: ^(Spotted::Internal::Type::ArrayOf[Spotted::AuthorObject]),
        available_markets: ^(Spotted::Internal::Type::ArrayOf[String]),
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
        type: Spotted::Models::Me::AudiobookListResponse::Type,
        uri: String,
        edition: String | nil
      }
    end
  end

  def test_check_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.me.audiobooks.check(ids: "18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ,7iHfbu1YPACw6oZPAFJtqe")

    assert_pattern do
      response => ^(Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean])
    end
  end

  def test_remove_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.me.audiobooks.remove(ids: "18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ,7iHfbu1YPACw6oZPAFJtqe")

    assert_pattern do
      response => nil
    end
  end

  def test_save_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.me.audiobooks.save(ids: "18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ,7iHfbu1YPACw6oZPAFJtqe")

    assert_pattern do
      response => nil
    end
  end
end
