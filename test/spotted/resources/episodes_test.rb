# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::EpisodesTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.episodes.retrieve("512ojhOuo1ktJprKbVcKyQ")

    assert_pattern do
      response => Spotted::EpisodeObject
    end

    assert_pattern do
      response => {
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
        release_date_precision: Spotted::EpisodeObject::ReleaseDatePrecision,
        show: Spotted::ShowBase,
        type: Symbol,
        uri: String,
        language: String | nil,
        restrictions: Spotted::EpisodeRestrictionObject | nil,
        resume_point: Spotted::ResumePointObject | nil
      }
    end
  end

  def test_bulk_retrieve_required_params
    skip("Prism tests are disabled")

    response = @spotted.episodes.bulk_retrieve(ids: "77o6BIVlYM3msb4MMIL1jH,0Q86acNRm6V9GYx55SXKwf")

    assert_pattern do
      response => Spotted::Models::EpisodeBulkRetrieveResponse
    end

    assert_pattern do
      response => {
        episodes: ^(Spotted::Internal::Type::ArrayOf[Spotted::EpisodeObject])
      }
    end
  end
end
