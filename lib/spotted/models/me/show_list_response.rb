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

        # @!attribute published
        #   The playlist's public/private status (if it should be added to the user's
        #   profile or not): `true` the playlist will be public, `false` the playlist will
        #   be private, `null` the playlist status is not relevant. For more about
        #   public/private status, see
        #   [Working with Playlists](/documentation/web-api/concepts/playlists)
        #
        #   @return [Boolean, nil]
        optional :published, Spotted::Internal::Type::Boolean

        # @!attribute show
        #   Information about the show.
        #
        #   @return [Spotted::Models::ShowBase, nil]
        optional :show, -> { Spotted::ShowBase }

        # @!method initialize(added_at: nil, published: nil, show: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::ShowListResponse} for more details.
        #
        #   @param added_at [Time] The date and time the show was saved.
        #
        #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
        #
        #   @param show [Spotted::Models::ShowBase] Information about the show.
      end
    end
  end
end
