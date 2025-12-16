# typed: strong

module Spotted
  module Models
    class RecommendationGetResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::RecommendationGetResponse,
            Spotted::Internal::AnyHash
          )
        end

      # An array of recommendation seed objects.
      sig do
        returns(T::Array[Spotted::Models::RecommendationGetResponse::Seed])
      end
      attr_accessor :seeds

      # An array of track objects ordered according to the parameters supplied.
      sig { returns(T::Array[Spotted::TrackObject]) }
      attr_accessor :tracks

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

      sig do
        params(
          seeds:
            T::Array[Spotted::Models::RecommendationGetResponse::Seed::OrHash],
          tracks: T::Array[Spotted::TrackObject::OrHash],
          published: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # An array of recommendation seed objects.
        seeds:,
        # An array of track objects ordered according to the parameters supplied.
        tracks:,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil
      )
      end

      sig do
        override.returns(
          {
            seeds: T::Array[Spotted::Models::RecommendationGetResponse::Seed],
            tracks: T::Array[Spotted::TrackObject],
            published: T::Boolean
          }
        )
      end
      def to_hash
      end

      class Seed < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::RecommendationGetResponse::Seed,
              Spotted::Internal::AnyHash
            )
          end

        # The id used to select this seed. This will be the same as the string used in the
        # `seed_artists`, `seed_tracks` or `seed_genres` parameter.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The number of tracks available after min\_\* and max\_\* filters have been
        # applied.
        sig { returns(T.nilable(Integer)) }
        attr_reader :after_filtering_size

        sig { params(after_filtering_size: Integer).void }
        attr_writer :after_filtering_size

        # The number of tracks available after relinking for regional availability.
        sig { returns(T.nilable(Integer)) }
        attr_reader :after_relinking_size

        sig { params(after_relinking_size: Integer).void }
        attr_writer :after_relinking_size

        # A link to the full track or artist data for this seed. For tracks this will be a
        # link to a Track Object. For artists a link to an Artist Object. For genre seeds,
        # this value will be `null`.
        sig { returns(T.nilable(String)) }
        attr_reader :href

        sig { params(href: String).void }
        attr_writer :href

        # The number of recommended tracks available for this seed.
        sig { returns(T.nilable(Integer)) }
        attr_reader :initial_pool_size

        sig { params(initial_pool_size: Integer).void }
        attr_writer :initial_pool_size

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        # The entity type of this seed. One of `artist`, `track` or `genre`.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig do
          params(
            id: String,
            after_filtering_size: Integer,
            after_relinking_size: Integer,
            href: String,
            initial_pool_size: Integer,
            published: T::Boolean,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The id used to select this seed. This will be the same as the string used in the
          # `seed_artists`, `seed_tracks` or `seed_genres` parameter.
          id: nil,
          # The number of tracks available after min\_\* and max\_\* filters have been
          # applied.
          after_filtering_size: nil,
          # The number of tracks available after relinking for regional availability.
          after_relinking_size: nil,
          # A link to the full track or artist data for this seed. For tracks this will be a
          # link to a Track Object. For artists a link to an Artist Object. For genre seeds,
          # this value will be `null`.
          href: nil,
          # The number of recommended tracks available for this seed.
          initial_pool_size: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # The entity type of this seed. One of `artist`, `track` or `genre`.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              after_filtering_size: Integer,
              after_relinking_size: Integer,
              href: String,
              initial_pool_size: Integer,
              published: T::Boolean,
              type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
