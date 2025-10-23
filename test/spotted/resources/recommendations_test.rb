# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::RecommendationsTest < Spotted::Test::ResourceTest
  def test_get_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.recommendations.get(
        seed_artists: "4NHQUGzhtTLFvgF5SZesLK",
        seed_genres: "classical,country",
        seed_tracks: "0c6xIDDpzE81m2q797ordA"
      )

    assert_pattern do
      response => Spotted::Models::RecommendationGetResponse
    end

    assert_pattern do
      response => {
        seeds: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::RecommendationGetResponse::Seed]),
        tracks: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::RecommendationGetResponse::Track])
      }
    end
  end

  def test_get_available_genre_seeds
    skip("Prism tests are disabled")

    response = @spotted.recommendations.get_available_genre_seeds

    assert_pattern do
      response => Spotted::Models::RecommendationGetAvailableGenreSeedsResponse
    end

    assert_pattern do
      response => {
        genres: ^(Spotted::Internal::Type::ArrayOf[String])
      }
    end
  end
end
