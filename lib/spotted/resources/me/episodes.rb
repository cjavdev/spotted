# frozen_string_literal: true

module Spotted
  module Resources
    class Me
      class Episodes
        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::EpisodeListParams} for more details.
        #
        # Get a list of the episodes saved in the current Spotify user's library.<br/>
        # This API endpoint is in **beta** and could change without warning. Please share
        # any feedback that you have, or issues that you discover, in our
        # [developer community forum](https://community.spotify.com/t5/Spotify-for-Developers/bd-p/Spotify_Developer).
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
        # @return [Spotted::Internal::CursorURLPage<Spotted::Models::Me::EpisodeListResponse>]
        #
        # @see Spotted::Models::Me::EpisodeListParams
        def list(params = {})
          parsed, options = Spotted::Me::EpisodeListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/episodes",
            query: parsed,
            page: Spotted::Internal::CursorURLPage,
            model: Spotted::Models::Me::EpisodeListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::EpisodeCheckParams} for more details.
        #
        # Check if one or more episodes is already saved in the current Spotify user's
        # 'Your Episodes' library.<br/> This API endpoint is in **beta** and could change
        # without warning. Please share any feedback that you have, or issues that you
        # discover, in our
        # [developer community forum](https://community.spotify.com/t5/Spotify-for-Developers/bd-p/Spotify_Developer)..
        #
        # @overload check(ids:, request_options: {})
        #
        # @param ids [String] A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spot
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Boolean>]
        #
        # @see Spotted::Models::Me::EpisodeCheckParams
        def check(params)
          parsed, options = Spotted::Me::EpisodeCheckParams.dump_request(params)
          @client.request(
            method: :get,
            path: "me/episodes/contains",
            query: parsed,
            model: Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean],
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::EpisodeRemoveParams} for more details.
        #
        # Remove one or more episodes from the current user's library.<br/> This API
        # endpoint is in **beta** and could change without warning. Please share any
        # feedback that you have, or issues that you discover, in our
        # [developer community forum](https://community.spotify.com/t5/Spotify-for-Developers/bd-p/Spotify_Developer).
        #
        # @overload remove(ids: nil, published: nil, request_options: {})
        #
        # @param ids [Array<String>] A JSON array of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-i
        #
        # @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::EpisodeRemoveParams
        def remove(params = {})
          parsed, options = Spotted::Me::EpisodeRemoveParams.dump_request(params)
          @client.request(
            method: :delete,
            path: "me/episodes",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Spotted::Models::Me::EpisodeSaveParams} for more details.
        #
        # Save one or more episodes to the current user's library.<br/> This API endpoint
        # is in **beta** and could change without warning. Please share any feedback that
        # you have, or issues that you discover, in our
        # [developer community forum](https://community.spotify.com/t5/Spotify-for-Developers/bd-p/Spotify_Developer).
        #
        # @overload save(ids:, published: nil, request_options: {})
        #
        # @param ids [Array<String>] A JSON array of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-i
        #
        # @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
        #
        # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Spotted::Models::Me::EpisodeSaveParams
        def save(params)
          parsed, options = Spotted::Me::EpisodeSaveParams.dump_request(params)
          @client.request(method: :put, path: "me/episodes", body: parsed, model: NilClass, options: options)
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
