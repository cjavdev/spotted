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
        added_at: Time | nil,
        audiobook: Spotted::Models::Me::AudiobookListResponse::Audiobook | nil
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

    # Ignore Layout/LineLength
    response =
      @spotted.me.audiobooks.save(ids: "18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ,7iHfbu1YPACw6oZPAFJtqe")
    assert_pattern do
      response => nil
    end
  end
end
