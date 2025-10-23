# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::UsersTest < Spotted::Test::ResourceTest
  def test_retrieve_profile
    skip("Prism tests are disabled")

    response = @spotted.users.retrieve_profile("smedjan")

    assert_pattern do
      response => Spotted::Models::UserRetrieveProfileResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        display_name: String | nil,
        external_urls: Spotted::Models::UserRetrieveProfileResponse::ExternalURLs | nil,
        followers: Spotted::Models::UserRetrieveProfileResponse::Followers | nil,
        href: String | nil,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::UserRetrieveProfileResponse::Image]) | nil,
        type: Spotted::Models::UserRetrieveProfileResponse::Type | nil,
        uri: String | nil
      }
    end
  end
end
