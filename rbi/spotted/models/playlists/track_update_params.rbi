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

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :body_uris

        sig { params(body_uris: T::Array[String]).void }
        attr_writer :body_uris

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

        sig do
          params(
            body_uris: T::Array[String],
            insert_before: Integer,
            range_length: Integer,
            range_start: Integer,
            snapshot_id: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          body_uris: nil,
          # The position where the items should be inserted.<br/>To reorder the items to the
          # end of the playlist, simply set _insert_before_ to the position after the last
          # item.<br/>Examples:<br/>To reorder the first item to the last position in a
          # playlist with 10 items, set _range_start_ to 0, and _insert_before_
          # to 10.<br/>To reorder the last item in a playlist with 10 items to the start of
          # the playlist, set _range_start_ to 9, and _insert_before_ to 0.
          insert_before: nil,
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
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              body_uris: T::Array[String],
              insert_before: Integer,
              range_length: Integer,
              range_start: Integer,
              snapshot_id: String,
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
