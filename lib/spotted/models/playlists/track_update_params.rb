# frozen_string_literal: true

module Spotted
  module Models
    module Playlists
      # @see Spotted::Resources::Playlists::Tracks#update
      class TrackUpdateParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute body_uris
        #
        #   @return [Array<String>, nil]
        optional :body_uris, Spotted::Internal::Type::ArrayOf[String], api_name: :uris

        # @!attribute insert_before
        #   The position where the items should be inserted.<br/>To reorder the items to the
        #   end of the playlist, simply set _insert_before_ to the position after the last
        #   item.<br/>Examples:<br/>To reorder the first item to the last position in a
        #   playlist with 10 items, set _range_start_ to 0, and _insert_before_
        #   to 10.<br/>To reorder the last item in a playlist with 10 items to the start of
        #   the playlist, set _range_start_ to 9, and _insert_before_ to 0.
        #
        #   @return [Integer, nil]
        optional :insert_before, Integer

        # @!attribute range_length
        #   The amount of items to be reordered. Defaults to 1 if not set.<br/>The range of
        #   items to be reordered begins from the _range_start_ position, and includes the
        #   _range_length_ subsequent items.<br/>Example:<br/>To move the items at index
        #   9-10 to the start of the playlist, _range_start_ is set to 9, and _range_length_
        #   is set to 2.
        #
        #   @return [Integer, nil]
        optional :range_length, Integer

        # @!attribute range_start
        #   The position of the first item to be reordered.
        #
        #   @return [Integer, nil]
        optional :range_start, Integer

        # @!attribute snapshot_id
        #   The playlist's snapshot ID against which you want to make the changes.
        #
        #   @return [String, nil]
        optional :snapshot_id, String

        # @!method initialize(body_uris: nil, insert_before: nil, range_length: nil, range_start: nil, snapshot_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Playlists::TrackUpdateParams} for more details.
        #
        #   @param body_uris [Array<String>]
        #
        #   @param insert_before [Integer] The position where the items should be inserted.<br/>To reorder the items to the
        #
        #   @param range_length [Integer] The amount of items to be reordered. Defaults to 1 if not set.<br/>The range of
        #
        #   @param range_start [Integer] The position of the first item to be reordered.
        #
        #   @param snapshot_id [String] The playlist's snapshot ID against which you want to make the changes.
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
