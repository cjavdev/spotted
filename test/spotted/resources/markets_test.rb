# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::MarketsTest < Spotted::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @spotted.markets.list

    assert_pattern do
      response => Spotted::Models::MarketListResponse
    end

    assert_pattern do
      response => {
        markets: ^(Spotted::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
