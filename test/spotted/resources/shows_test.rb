# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::ShowsTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.shows.retrieve("38bS44xjbVVZ3No3ByF1dJ")

    assert_pattern do
      response => Spotted::Models::ShowRetrieveResponse
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @spotted.shows.list(ids: "5CfCWKI5pZ28U0uOzXkDHe,5as3aKmN2k11yfDDDSrvaZ")

    assert_pattern do
      response => Spotted::Models::ShowListResponse
    end

    assert_pattern do
      response => {
        shows: ^(Spotted::Internal::Type::ArrayOf[Spotted::ShowBase])
      }
    end
  end

  def test_list_episodes
    skip("Prism tests are disabled")

    response = @spotted.shows.list_episodes("38bS44xjbVVZ3No3ByF1dJ")

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::SimplifiedEpisodeObject
    end

    assert_pattern do
      row => {
        id: String,
        audio_preview_url: String | nil,
        description: String,
        duration_ms: Integer,
        explicit: Spotted::Internal::Type::Boolean,
        external_urls: Spotted::ExternalURLObject,
        href: String,
        html_description: String,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject]),
        is_externally_hosted: Spotted::Internal::Type::Boolean,
        is_playable: Spotted::Internal::Type::Boolean,
        languages: ^(Spotted::Internal::Type::ArrayOf[String]),
        name: String,
        release_date: String,
        release_date_precision: Spotted::SimplifiedEpisodeObject::ReleaseDatePrecision,
        type: Spotted::SimplifiedEpisodeObject::Type,
        uri: String,
        language: String | nil,
        restrictions: Spotted::EpisodeRestrictionObject | nil,
        resume_point: Spotted::ResumePointObject | nil
      }
    end
  end
end
