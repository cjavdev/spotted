# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::AudioFeaturesTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.audio_features.retrieve("11dFghVXANMlKmJXsNCbNl")

    assert_pattern do
      response => Spotted::Models::AudioFeatureRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        acousticness: Float | nil,
        analysis_url: String | nil,
        danceability: Float | nil,
        duration_ms: Integer | nil,
        energy: Float | nil,
        instrumentalness: Float | nil,
        key: Integer | nil,
        liveness: Float | nil,
        loudness: Float | nil,
        mode: Integer | nil,
        published: Spotted::Internal::Type::Boolean | nil,
        speechiness: Float | nil,
        tempo: Float | nil,
        time_signature: Integer | nil,
        track_href: String | nil,
        type: Spotted::Models::AudioFeatureRetrieveResponse::Type | nil,
        uri: String | nil,
        valence: Float | nil
      }
    end
  end

  def test_bulk_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.audio_features.bulk_retrieve(
        ids: "7ouMYWpwJ422jRcDASZB7P,4VqPOruhp5EdPBeR92t6lQ,2takcwOaAZWiXQijPHIx7B"
      )

    assert_pattern do
      response => Spotted::Models::AudioFeatureBulkRetrieveResponse
    end

    assert_pattern do
      response => {
        audio_features: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::AudioFeatureBulkRetrieveResponse::AudioFeature])
      }
    end
  end
end
