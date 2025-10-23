# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::AudiobooksTest < Spotted::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @spotted.me.audiobooks.list

    assert_pattern do
      response => Spotted::Models::Me::AudiobookListResponse
    end

    assert_pattern do
      response => {
        href: String,
        items: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::Me::AudiobookListResponse::Item]),
        limit: Integer,
        next_: String | nil,
        offset: Integer,
        previous: String | nil,
        total: Integer
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
