# typed: strong

module Spotted
  module Models
    module Playlists
      class TrackUpdateParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Spotted::Playlists::TrackUpdateParams,
              Spotted::Internal::AnyHash
            )
          end

        # The position where the items should be inserted.<br/>To reorder the items to the
        # end of the playlist, simply set _insert_before_ to the position after the last
        # item.<br/>Examples:<br/>To reorder the first item to the last position in a
        # playlist with 10 items, set _range_start_ to 0, and _insert_before_
        # to 10.<br/>To reorder the last item in a playlist with 10 items to the start of
        # the playlist, set _range_start_ to 9, and _insert_before_ to 0.
        sig { returns(T.nilable(Integer)) }
        attr_reader :insert_before

        sig { params(insert_before: Integer).void }
        attr_writer :insert_before

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        # The amount of items to be reordered. Defaults to 1 if not set.<br/>The range of
        # items to be reordered begins from the _range_start_ position, and includes the
        # _range_length_ subsequent items.<br/>Example:<br/>To move the items at index
        # 9-10 to the start of the playlist, _range_start_ is set to 9, and _range_length_
        # is set to 2.
        sig { returns(T.nilable(Integer)) }
        attr_reader :range_length

        sig { params(range_length: Integer).void }
        attr_writer :range_length

        # The position of the first item to be reordered.
        sig { returns(T.nilable(Integer)) }
        attr_reader :range_start

        sig { params(range_start: Integer).void }
        attr_writer :range_start

        # The playlist's snapshot ID against which you want to make the changes.
        sig { returns(T.nilable(String)) }
        attr_reader :snapshot_id

        sig { params(snapshot_id: String).void }
        attr_writer :snapshot_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :uris

        sig { params(uris: T::Array[String]).void }
        attr_writer :uris

        sig do
          params(
            insert_before: Integer,
            published: T::Boolean,
            range_length: Integer,
            range_start: Integer,
            snapshot_id: String,
            uris: T::Array[String],
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The position where the items should be inserted.<br/>To reorder the items to the
          # end of the playlist, simply set _insert_before_ to the position after the last
          # item.<br/>Examples:<br/>To reorder the first item to the last position in a
          # playlist with 10 items, set _range_start_ to 0, and _insert_before_
          # to 10.<br/>To reorder the last item in a playlist with 10 items to the start of
          # the playlist, set _range_start_ to 9, and _insert_before_ to 0.
          insert_before: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # The amount of items to be reordered. Defaults to 1 if not set.<br/>The range of
          # items to be reordered begins from the _range_start_ position, and includes the
          # _range_length_ subsequent items.<br/>Example:<br/>To move the items at index
          # 9-10 to the start of the playlist, _range_start_ is set to 9, and _range_length_
          # is set to 2.
          range_length: nil,
          # The position of the first item to be reordered.
          range_start: nil,
          # The playlist's snapshot ID against which you want to make the changes.
          snapshot_id: nil,
          uris: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              insert_before: Integer,
              published: T::Boolean,
              range_length: Integer,
              range_start: Integer,
              snapshot_id: String,
              uris: T::Array[String],
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
