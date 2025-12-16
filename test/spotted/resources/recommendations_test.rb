# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::RecommendationsTest < Spotted::Test::ResourceTest
  def test_get
    skip("Prism tests are disabled")

    response = @spotted.recommendations.get

    assert_pattern do
      response => Spotted::Models::RecommendationGetResponse
    end

    assert_pattern do
      response => {
        seeds: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::RecommendationGetResponse::Seed]),
        tracks: ^(Spotted::Internal::Type::ArrayOf[Spotted::TrackObject]),
        published: Spotted::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list_available_genre_seeds
    skip("Prism tests are disabled")

    response = @spotted.recommendations.list_available_genre_seeds

    assert_pattern do
      response => Spotted::Models::RecommendationListAvailableGenreSeedsResponse
    end

    assert_pattern do
      response => {
        genres: ^(Spotted::Internal::Type::ArrayOf[String])
      }
    end
  end
end
