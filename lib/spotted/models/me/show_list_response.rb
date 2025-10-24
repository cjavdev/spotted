# frozen_string_literal: true

module Spotted
  module Models
    module Me
      # @see Spotted::Resources::Me::Shows#list
      class ShowListResponse < Spotted::Internal::Type::BaseModel
        # @!attribute added_at
        #   The date and time the show was saved. Timestamps are returned in ISO 8601 format
        #   as Coordinated Universal Time (UTC) with a zero offset: YYYY-MM-DDTHH:MM:SSZ. If
        #   the time is imprecise (for example, the date/time of an album release), an
        #   additional field indicates the precision; see for example, release_date in an
        #   album object.
        #
        #   @return [Time, nil]
        optional :added_at, Time

        # @!attribute show
        #   Information about the show.
        #
        #   @return [Spotted::Models::ShowBase, nil]
        optional :show, -> { Spotted::ShowBase }

        # @!method initialize(added_at: nil, show: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::ShowListResponse} for more details.
        #
        #   @param added_at [Time] The date and time the show was saved.
        #
        #   @param show [Spotted::Models::ShowBase] Information about the show.
      end
    end
  end
end
