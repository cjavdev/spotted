# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::TracksTest < Spotted::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @spotted.me.tracks.list

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::Models::Me::TrackListResponse
    end

    assert_pattern do
      row => {
        added_at: Time | nil,
        track: Spotted::TrackObject | nil
      }
    end
  end

  def test_check_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.me.tracks.check(ids: "7ouMYWpwJ422jRcDASZB7P,4VqPOruhp5EdPBeR92t6lQ,2takcwOaAZWiXQijPHIx7B")

    assert_pattern do
      response => ^(Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean])
    end
  end

  def test_remove
    skip("Prism tests are disabled")

    response = @spotted.me.tracks.remove

    assert_pattern do
      response => nil
    end
  end

  def test_save_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.tracks.save(ids: ["string"])

    assert_pattern do
      response => nil
    end
  end
end
