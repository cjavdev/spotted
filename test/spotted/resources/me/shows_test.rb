# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::ShowsTest < Spotted::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @spotted.me.shows.list

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::Models::Me::ShowListResponse
    end

    assert_pattern do
      row => {
        added_at: Time | nil,
        show: Spotted::Models::Me::ShowListResponse::Show | nil
      }
    end
  end

  def test_check_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.shows.check(ids: "5CfCWKI5pZ28U0uOzXkDHe,5as3aKmN2k11yfDDDSrvaZ")

    assert_pattern do
      response => ^(Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean])
    end
  end

  def test_remove_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.shows.remove(ids: "5CfCWKI5pZ28U0uOzXkDHe,5as3aKmN2k11yfDDDSrvaZ")

    assert_pattern do
      response => nil
    end
  end

  def test_save_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.shows.save(ids: "5CfCWKI5pZ28U0uOzXkDHe,5as3aKmN2k11yfDDDSrvaZ")

    assert_pattern do
      response => nil
    end
  end
end
