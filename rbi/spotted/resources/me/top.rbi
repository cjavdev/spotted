# typed: strong

module Spotted
  module Resources
    class Me
      class Top
        # Get the current user's top artists or tracks based on calculated affinity.
        sig do
          params(
            type: Spotted::Me::TopListParams::Type::OrSymbol,
            limit: Integer,
            offset: Integer,
            time_range: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(
            Spotted::Internal::CursorURLPage[
              Spotted::Models::Me::TopListResponse::Variants
            ]
          )
        end
        def list(
          # The type of entity to return. Valid values: `artists` or `tracks`
          type,
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
