# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::ShowsTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.shows.retrieve("38bS44xjbVVZ3No3ByF1dJ")

    assert_pattern do
      response => Spotted::Models::ShowRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        available_markets: ^(Spotted::Internal::Type::ArrayOf[String]),
        copyrights: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::ShowRetrieveResponse::Copyright]),
        description: String,
        episodes: Spotted::Models::ShowRetrieveResponse::Episodes,
        explicit: Spotted::Internal::Type::Boolean,
        external_urls: Spotted::Models::ShowRetrieveResponse::ExternalURLs,
        href: String,
        html_description: String,
        images: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::ShowRetrieveResponse::Image]),
        is_externally_hosted: Spotted::Internal::Type::Boolean,
        languages: ^(Spotted::Internal::Type::ArrayOf[String]),
        media_type: String,
        name: String,
        publisher: String,
        total_episodes: Integer,
        type: Spotted::Models::ShowRetrieveResponse::Type,
        uri: String
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @spotted.shows.list(ids: "5CfCWKI5pZ28U0uOzXkDHe,5as3aKmN2k11yfDDDSrvaZ")

    assert_pattern do
      response => Spotted::Models::ShowListResponse
    end

    assert_pattern do
      response => {
        shows: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::ShowListResponse::Show])
      }
    end
  end

  def test_get_episodes
    skip("Prism tests are disabled")

    response = @spotted.shows.get_episodes("38bS44xjbVVZ3No3ByF1dJ")

    assert_pattern do
      response => Spotted::Models::ShowGetEpisodesResponse
    end

    assert_pattern do
      response => {
        href: String,
        items: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::ShowGetEpisodesResponse::Item]),
        limit: Integer,
        next_: String | nil,
        offset: Integer,
        previous: String | nil,
        total: Integer
      }
    end
  end
end
