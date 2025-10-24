# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      class Tracks
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::TrackListParams} for more details.
        #
        # Get a list of the songs saved in the current Spotify user's 'Your Music'
        # library.
        #
        # @overload list(limit: nil, market: nil, offset: nil, request_options: {})
        #
        # @param limit [Integer] The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        #
        # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
        #
        # @param offset [Integer] The index of the first item to return. Default: 0 (the first item). Use with lim
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Spotted::Internal::CursorURLPage<Spotted::Models::Me::TrackListResponse>]
        #
        # @see Spotted::Models::Me::TrackListParams
        def list(params = {})
          parsed, options = Spotted::Me::TrackListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/tracks",
            query: parsed,
            page: Spotted::Internal::CursorURLPage,
            model: Spotted::Models::Me::TrackListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::TrackCheckParams} for more details.
        #
        # Check if one or more tracks is already saved in the current Spotify user's 'Your
        # Music' library.
        #
        # @overload check(ids:, request_options: {})
        #
        # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Boolean>]
        #
        # @see Spotted::Models::Me::TrackCheckParams
        def check(params)
          parsed, options = Spotted::Me::TrackCheckParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/tracks/contains",
            query: parsed,
            model: Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean],
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::TrackRemoveParams} for more details.
        #
        # Remove one or more tracks from the current user's 'Your Music' library.
        #
        # @overload remove(body_ids: nil, request_options: {})
        #
        # @param body_ids [Array<String>] Body param: A JSON array of the [Spotify IDs](/documentation/web-api/concepts/sp
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::TrackRemoveParams
        def remove(params = {})
          parsed, options = Spotted::Me::TrackRemoveParams.dump_request(params)
          query_params = [:query_ids]
          @client.request(
            method: :delete,
            path: "me/tracks",
            query: parsed.slice(*query_params).transform_keys(query_ids: "ids"),
            body: parsed.except(*query_params),
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::TrackSaveParams} for more details.
        #
        # Save one or more tracks to the current user's 'Your Music' library.
        #
        # @overload save(ids:, timestamped_ids: nil, request_options: {})
        #
        # @param ids [Array<String>] A JSON array of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-i
        #
        # @param timestamped_ids [Array<Spotted::Models::Me::TrackSaveParams::TimestampedID>] A JSON array of objects containing track IDs with their corresponding timestamps
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::TrackSaveParams
        def save(params)
          parsed, options = Spotted::Me::TrackSaveParams.dump_request(params)
          @client.request(method: :put, path: "me/tracks", body: parsed, model: NilClass, options: options)
        end

        # @api private
        #
        # @param client [Spotted::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
