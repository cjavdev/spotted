# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::TopTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.me.top.retrieve(:artists)

    assert_pattern do
      response => Spotted::Models::Me::TopRetrieveResponse
    end

    assert_pattern do
      response => {
        href: String,
        items: ^(Spotted::Internal::Type::ArrayOf[union: Spotted::Models::Me::TopRetrieveResponse::Item]),
        limit: Integer,
        next_: String | nil,
        offset: Integer,
        previous: String | nil,
        total: Integer
      }
    end
  end
end
