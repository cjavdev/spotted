# frozen_string_literal: true

require_relative "../test_helper"

class Spotted::Test::Resources::AudioAnalysisTest < Spotted::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @spotted.audio_analysis.retrieve("11dFghVXANMlKmJXsNCbNl")

    assert_pattern do
      response => Spotted::Models::AudioAnalysisRetrieveResponse
    end

    assert_pattern do
      response => {
        bars: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::AudioAnalysisRetrieveResponse::Bar]) | nil,
        beats: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::AudioAnalysisRetrieveResponse::Beat]) | nil,
        meta: Spotted::Models::AudioAnalysisRetrieveResponse::Meta | nil,
        sections: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::AudioAnalysisRetrieveResponse::Section]) | nil,
        segments: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::AudioAnalysisRetrieveResponse::Segment]) | nil,
        tatums: ^(Spotted::Internal::Type::ArrayOf[Spotted::Models::AudioAnalysisRetrieveResponse::Tatum]) | nil,
        track: Spotted::Models::AudioAnalysisRetrieveResponse::Track | nil
      }
    end
  end
end
