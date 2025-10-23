# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::MeTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.me.retrieve

    assert_pattern do
      response => Spotted::Models::MeRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        country: String | nil,
        display_name: String | nil,
        email: String | nil,
        explicit_content: Spotted::Models::MeRetrieveResponse::ExplicitContent | nil,
        external_urls: Spotted::Models::MeRetrieveResponse::ExternalURLs | nil,
        followers: Spotted::Models::MeRetrieveResponse::Followers | nil,
        href: String | nil,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::MeRetrieveResponse::Image]) | nil,
        product: String | nil,
        type: String | nil,
        uri: String | nil
      }
    end
  end
end
