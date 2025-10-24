# typed: strong

module Spotted
  module Resources
    class Me
      class Top
        # Get the current user's top artists based on calculated affinity.
        sig do
          params(
            limit: Integer,
            offset: Integer,
            time_range: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(Spotted::Internal::CursorURLPage[Spotted::ArtistObject])
        end
        def list_top_artists(
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          # The index of the first item to return. Default: 0 (the first item). Use with
          # limit to get the next set of items.
          offset: nil,
          # Over what time frame the affinities are computed. Valid values: `long_term`
          # (calculated from ~1 year of data and including all new data as it becomes
          # available), `medium_term` (approximately last 6 months), `short_term`
          # (approximately last 4 weeks). Default: `medium_term`
          time_range: nil,
          request_options: {}
        )
        end

        # Get the current user's top tracks based on calculated affinity.
        sig do
          params(
            limit: Integer,
            offset: Integer,
            time_range: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(Spotted::Internal::CursorURLPage[Spotted::TrackObject])
        end
        def list_top_tracks(
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          # The index of the first item to return. Default: 0 (the first item). Use with
          # limit to get the next set of items.
          offset: nil,
          # Over what time frame the affinities are computed. Valid values: `long_term`
          # (calculated from ~1 year of data and including all new data as it becomes
          # available), `medium_term` (approximately last 6 months), `short_term`
          # (approximately last 4 weeks). Default: `medium_term`
          time_range: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Spotted::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
