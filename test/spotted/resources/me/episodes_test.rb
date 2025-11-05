# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::EpisodesTest < Spotted::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @spotted.me.episodes.list

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::Models::Me::EpisodeListResponse
    end

    assert_pattern do
      row => {
        added_at: Time | nil,
        episode: Spotted::EpisodeObject | nil
      }
    end
  end

  def test_check_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.episodes.check(ids: "77o6BIVlYM3msb4MMIL1jH,0Q86acNRm6V9GYx55SXKwf")

    assert_pattern do
      response => ^(Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean])
    end
  end

  def test_remove
    skip("Prism tests are disabled")

    response = @spotted.me.episodes.remove

    assert_pattern do
      response => nil
    end
  end

  def test_save_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.episodes.save(ids: ["string"])

    assert_pattern do
      response => nil
    end
  end
end
