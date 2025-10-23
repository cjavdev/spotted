# frozen_string_literal: true

module Spotted
  module Resources
    class Recommendations
      # @deprecated
      #
      # Some parameter documentations has been truncated, see
      # {Spotted::Models::RecommendationGetParams} for more details.
      #
      # Recommendations are generated based on the available information for a given
      # seed entity and matched against similar artists and tracks. If there is
      # sufficient information about the provided seeds, a list of tracks will be
      # returned together with pool size details.
      #
      # For artists and tracks that are very new or obscure there might not be enough
      # data to generate a list of tracks.
      #
      # @overload get(seed_artists:, seed_genres:, seed_tracks:, limit: nil, market: nil, max_acousticness: nil, max_danceability: nil, max_duration_ms: nil, max_energy: nil, max_instrumentalness: nil, max_key: nil, max_liveness: nil, max_loudness: nil, max_mode: nil, max_popularity: nil, max_speechiness: nil, max_tempo: nil, max_time_signature: nil, max_valence: nil, min_acousticness: nil, min_danceability: nil, min_duration_ms: nil, min_energy: nil, min_instrumentalness: nil, min_key: nil, min_liveness: nil, min_loudness: nil, min_mode: nil, min_popularity: nil, min_speechiness: nil, min_tempo: nil, min_time_signature: nil, min_valence: nil, target_acousticness: nil, target_danceability: nil, target_duration_ms: nil, target_energy: nil, target_instrumentalness: nil, target_key: nil, target_liveness: nil, target_loudness: nil, target_mode: nil, target_popularity: nil, target_speechiness: nil, target_tempo: nil, target_time_signature: nil, target_valence: nil, request_options: {})
      #
      # @param seed_artists [String] A comma separated list of [Spotify IDs](/documentation/web-api/concepts/spotify-
      #
      # @param seed_genres [String] A comma separated list of any genres in the set of [available genre seeds](/docu
      #
      # @param seed_tracks [String] A comma separated list of [Spotify IDs](/documentation/web-api/concepts/spotify-
      #
      # @param limit [Integer] The target size of the list of recommended tracks. For seeds with unusually smal
      #
      # @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param max_acousticness [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_danceability [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_duration_ms [Integer] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_energy [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_instrumentalness [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_key [Integer] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_liveness [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_loudness [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_mode [Integer] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_popularity [Integer] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_speechiness [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_tempo [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_time_signature [Integer] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param max_valence [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      # @param min_acousticness [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_danceability [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_duration_ms [Integer] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_energy [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_instrumentalness [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_key [Integer] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_liveness [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_loudness [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_mode [Integer] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_popularity [Integer] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_speechiness [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_tempo [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_time_signature [Integer] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param min_valence [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      # @param target_acousticness [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      # @param target_danceability [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      # @param target_duration_ms [Integer] Target duration of the track (ms)
      #
      # @param target_energy [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      # @param target_instrumentalness [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      # @param target_key [Integer] For each of the tunable track attributes (below) a target value may be provided.
      #
      # @param target_liveness [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      # @param target_loudness [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      # @param target_mode [Integer] For each of the tunable track attributes (below) a target value may be provided.
      #
      # @param target_popularity [Integer] For each of the tunable track attributes (below) a target value may be provided.
      #
      # @param target_speechiness [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      # @param target_tempo [Float] Target tempo (BPM)
      #
      # @param target_time_signature [Integer] For each of the tunable track attributes (below) a target value may be provided.
      #
      # @param target_valence [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::RecommendationGetResponse]
      #
      # @see Spotted::Models::RecommendationGetParams
      def get(params)
        parsed, options = Spotted::RecommendationGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: "recommendations",
          query: parsed,
          model: Spotted::Models::RecommendationGetResponse,
          options: options
        )
      end

      # @deprecated
      #
      # Retrieve a list of available genres seed parameter values for
      # [recommendations](/documentation/web-api/reference/get-recommendations).
      #
      # @overload list_available_genre_seeds(request_options: {})
      #
      # @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Spotted::Models::RecommendationListAvailableGenreSeedsResponse]
      #
      # @see Spotted::Models::RecommendationListAvailableGenreSeedsParams
      def list_available_genre_seeds(params = {})
        @client.request(
          method: :get,
          path: "recommendations/available-genre-seeds",
          model: Spotted::Models::RecommendationListAvailableGenreSeedsResponse,
          options: params[:request_options]
        )
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
