# typed: strong

module Spotted
  module Models
    module Me
      class TrackSaveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Spotted::Me::TrackSaveParams, Spotted::Internal::AnyHash)
          end

        # A JSON array of the
        # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
        # `["4iV5W9uYEdYUVa79Axb7Rh", "1301WleyT98MSxVHPZCA6M"]`<br/>A maximum of 50 items
        # can be specified in one request. _**Note**: if the `timestamped_ids` is present
        # in the body, any IDs listed in the query parameters (deprecated) or the `ids`
        # field in the body will be ignored._
        sig { returns(T::Array[String]) }
        attr_accessor :ids

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        # A JSON array of objects containing track IDs with their corresponding
        # timestamps. Each object must include a track ID and an `added_at` timestamp.
        # This allows you to specify when tracks were added to maintain a specific
        # chronological order in the user's library.<br/>A maximum of 50 items can be
        # specified in one request. _**Note**: if the `timestamped_ids` is present in the
        # body, any IDs listed in the query parameters (deprecated) or the `ids` field in
        # the body will be ignored._
        sig do
          returns(
            T.nilable(T::Array[Spotted::Me::TrackSaveParams::TimestampedID])
          )
        end
        attr_reader :timestamped_ids

        sig do
          params(
            timestamped_ids:
              T::Array[Spotted::Me::TrackSaveParams::TimestampedID::OrHash]
          ).void
        end
        attr_writer :timestamped_ids

        sig do
          params(
            ids: T::Array[String],
            published: T::Boolean,
            timestamped_ids:
              T::Array[Spotted::Me::TrackSaveParams::TimestampedID::OrHash],
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A JSON array of the
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `["4iV5W9uYEdYUVa79Axb7Rh", "1301WleyT98MSxVHPZCA6M"]`<br/>A maximum of 50 items
          # can be specified in one request. _**Note**: if the `timestamped_ids` is present
          # in the body, any IDs listed in the query parameters (deprecated) or the `ids`
          # field in the body will be ignored._
          ids:,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # A JSON array of objects containing track IDs with their corresponding
          # timestamps. Each object must include a track ID and an `added_at` timestamp.
          # This allows you to specify when tracks were added to maintain a specific
          # chronological order in the user's library.<br/>A maximum of 50 items can be
          # specified in one request. _**Note**: if the `timestamped_ids` is present in the
          # body, any IDs listed in the query parameters (deprecated) or the `ids` field in
          # the body will be ignored._
          timestamped_ids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              ids: T::Array[String],
              published: T::Boolean,
              timestamped_ids:
                T::Array[Spotted::Me::TrackSaveParams::TimestampedID],
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end

        class TimestampedID < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Me::TrackSaveParams::TimestampedID,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # track.
          sig { returns(String) }
          attr_accessor :id

          # The timestamp when the track was added to the library. Use ISO 8601 format with
          # UTC timezone (e.g., `2023-01-15T14:30:00Z`). You can specify past timestamps to
          # insert tracks at specific positions in the library's chronological order. The
          # API uses minute-level granularity for ordering, though the timestamp supports
          # millisecond precision.
          sig { returns(Time) }
          attr_accessor :added_at

          sig { params(id: String, added_at: Time).returns(T.attached_class) }
          def self.new(
            # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
            # track.
            id:,
            # The timestamp when the track was added to the library. Use ISO 8601 format with
            # UTC timezone (e.g., `2023-01-15T14:30:00Z`). You can specify past timestamps to
            # insert tracks at specific positions in the library's chronological order. The
            # API uses minute-level granularity for ordering, though the timestamp supports
            # millisecond precision.
            added_at:
          )
          end

          sig { override.returns({ id: String, added_at: Time }) }
          def to_hash
          end
        end
      end
    end
  end
end
