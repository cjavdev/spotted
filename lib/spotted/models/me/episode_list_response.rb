# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Episodes#list
      class EpisodeListResponse < Spotted::Internal::Type::BaseModel
        # @!attribute added_at
        #   The date and time the episode was saved. Timestamps are returned in ISO 8601
        #   format as Coordinated Universal Time (UTC) with a zero offset:
        #   YYYY-MM-DDTHH:MM:SSZ.
        #
        #   @return [Time, nil]
        optional :added_at, Time

        # @!attribute episode
        #   Information about the episode.
        #
        #   @return [Spotted::Models::EpisodeObject, nil]
        optional :episode, -> { Spotted::EpisodeObject }

        # @!method initialize(added_at: nil, episode: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::EpisodeListResponse} for more details.
        #
        #   @param added_at [Time] The date and time the episode was saved.
        #
        #   @param episode [Spotted::Models::EpisodeObject] Information about the episode.
      end
    end
  end
end
