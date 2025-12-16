# frozen_string_literal: true

module Spotted
  module Models
    module Me
      module Player
        # @see Spotted::Resources::Me::Player::Queue#get
        class QueueGetResponse < Spotted::Internal::Type::BaseModel
          # @!attribute currently_playing
          #   The currently playing track or episode. Can be `null`.
          #
          #   @return [Spotted::Models::TrackObject, Spotted::Models::EpisodeObject, nil]
          optional :currently_playing, union: -> { Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying }

          # @!attribute published
          #   The playlist's public/private status (if it should be added to the user's
          #   profile or not): `true` the playlist will be public, `false` the playlist will
          #   be private, `null` the playlist status is not relevant. For more about
          #   public/private status, see
          #   [Working with Playlists](/documentation/web-api/concepts/playlists)
          #
          #   @return [Boolean, nil]
          optional :published, Spotted::Internal::Type::Boolean

          # @!attribute queue
          #   The tracks or episodes in the queue. Can be empty.
          #
          #   @return [Array<Spotted::Models::TrackObject, Spotted::Models::EpisodeObject>, nil]
          optional :queue,
                   -> { Spotted::Internal::Type::ArrayOf[union: Spotted::Models::Me::Player::QueueGetResponse::Queue] }

          # @!method initialize(currently_playing: nil, published: nil, queue: nil)
          #   Some parameter documentations has been truncated, see
          #   {Spotted::Models::Me::Player::QueueGetResponse} for more details.
          #
          #   @param currently_playing [Spotted::Models::TrackObject, Spotted::Models::EpisodeObject] The currently playing track or episode. Can be `null`.
          #
          #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
          #
          #   @param queue [Array<Spotted::Models::TrackObject, Spotted::Models::EpisodeObject>] The tracks or episodes in the queue. Can be empty.

          # The currently playing track or episode. Can be `null`.
          #
          # @see Spotted::Models::Me::Player::QueueGetResponse#currently_playing
          module CurrentlyPlaying
            extend Spotted::Internal::Type::Union

            discriminator :type

            variant :track, -> { Spotted::TrackObject }

            variant :episode, -> { Spotted::EpisodeObject }

            # @!method self.variants
            #   @return [Array(Spotted::Models::TrackObject, Spotted::Models::EpisodeObject)]
          end

          module Queue
            extend Spotted::Internal::Type::Union

            discriminator :type

            variant :track, -> { Spotted::TrackObject }

            variant :episode, -> { Spotted::EpisodeObject }

            # @!method self.variants
            #   @return [Array(Spotted::Models::TrackObject, Spotted::Models::EpisodeObject)]
          end
        end
      end
    end
  end
end
