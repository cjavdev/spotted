# typed: strong

module Spotted
  module Models
    class PlaylistTrackObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::PlaylistTrackObject, Spotted::Internal::AnyHash)
        end

      # The date and time the track or episode was added. _**Note**: some very old
      # playlists may return `null` in this field._
      sig { returns(T.nilable(Time)) }
      attr_reader :added_at

      sig { params(added_at: Time).void }
      attr_writer :added_at

      # The Spotify user who added the track or episode. _**Note**: some very old
      # playlists may return `null` in this field._
      sig { returns(T.nilable(Spotted::PlaylistUserObject)) }
      attr_reader :added_by

      sig { params(added_by: Spotted::PlaylistUserObject::OrHash).void }
      attr_writer :added_by

      # Whether this track or episode is a
      # [local file](/documentation/web-api/concepts/playlists/#local-files) or not.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_local

      sig { params(is_local: T::Boolean).void }
      attr_writer :is_local

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

      # Information about the track or episode.
      sig { returns(T.nilable(Spotted::PlaylistTrackObject::Track::Variants)) }
      attr_reader :track

      sig do
        params(
          track:
            T.any(Spotted::TrackObject::OrHash, Spotted::EpisodeObject::OrHash)
        ).void
      end
      attr_writer :track

      sig do
        params(
          added_at: Time,
          added_by: Spotted::PlaylistUserObject::OrHash,
          is_local: T::Boolean,
          published: T::Boolean,
          track:
            T.any(Spotted::TrackObject::OrHash, Spotted::EpisodeObject::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # The date and time the track or episode was added. _**Note**: some very old
        # playlists may return `null` in this field._
        added_at: nil,
        # The Spotify user who added the track or episode. _**Note**: some very old
        # playlists may return `null` in this field._
        added_by: nil,
        # Whether this track or episode is a
        # [local file](/documentation/web-api/concepts/playlists/#local-files) or not.
        is_local: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # Information about the track or episode.
        track: nil
      )
      end

      sig do
        override.returns(
          {
            added_at: Time,
            added_by: Spotted::PlaylistUserObject,
            is_local: T::Boolean,
            published: T::Boolean,
            track: Spotted::PlaylistTrackObject::Track::Variants
          }
        )
      end
      def to_hash
      end

      # Information about the track or episode.
      module Track
        extend Spotted::Internal::Type::Union

        Variants =
          T.type_alias { T.any(Spotted::TrackObject, Spotted::EpisodeObject) }

        sig do
          override.returns(
            T::Array[Spotted::PlaylistTrackObject::Track::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
