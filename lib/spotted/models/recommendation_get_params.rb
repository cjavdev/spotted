# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::Recommendations#get
    class RecommendationGetParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      # @!attribute limit
      #   The target size of the list of recommended tracks. For seeds with unusually
      #   small pools or when highly restrictive filtering is applied, it may be
      #   impossible to generate the requested number of recommended tracks. Debugging
      #   information for such cases is available in the response. Default: 20\. Minimum:
      #   1\. Maximum: 100.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute market
      #   An
      #   [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
      #   If a country code is specified, only content that is available in that market
      #   will be returned.<br/> If a valid user access token is specified in the request
      #   header, the country associated with the user account will take priority over
      #   this parameter.<br/> _**Note**: If neither market or user country are provided,
      #   the content is considered unavailable for the client._<br/> Users can view the
      #   country that is associated with their account in the
      #   [account settings](https://www.spotify.com/account/overview/).
      #
      #   @return [String, nil]
      optional :market, String

      # @!attribute max_acousticness
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Float, nil]
      optional :max_acousticness, Float

      # @!attribute max_danceability
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Float, nil]
      optional :max_danceability, Float

      # @!attribute max_duration_ms
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Integer, nil]
      optional :max_duration_ms, Integer

      # @!attribute max_energy
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Float, nil]
      optional :max_energy, Float

      # @!attribute max_instrumentalness
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Float, nil]
      optional :max_instrumentalness, Float

      # @!attribute max_key
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Integer, nil]
      optional :max_key, Integer

      # @!attribute max_liveness
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Float, nil]
      optional :max_liveness, Float

      # @!attribute max_loudness
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Float, nil]
      optional :max_loudness, Float

      # @!attribute max_mode
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Integer, nil]
      optional :max_mode, Integer

      # @!attribute max_popularity
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Integer, nil]
      optional :max_popularity, Integer

      # @!attribute max_speechiness
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Float, nil]
      optional :max_speechiness, Float

      # @!attribute max_tempo
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Float, nil]
      optional :max_tempo, Float

      # @!attribute max_time_signature
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Integer, nil]
      optional :max_time_signature, Integer

      # @!attribute max_valence
      #   For each tunable track attribute, a hard ceiling on the selected track
      #   attribute’s value can be provided. See tunable track attributes below for the
      #   list of available options. For example, `max_instrumentalness=0.35` would filter
      #   out most tracks that are likely to be instrumental.
      #
      #   @return [Float, nil]
      optional :max_valence, Float

      # @!attribute min_acousticness
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Float, nil]
      optional :min_acousticness, Float

      # @!attribute min_danceability
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Float, nil]
      optional :min_danceability, Float

      # @!attribute min_duration_ms
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Integer, nil]
      optional :min_duration_ms, Integer

      # @!attribute min_energy
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Float, nil]
      optional :min_energy, Float

      # @!attribute min_instrumentalness
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Float, nil]
      optional :min_instrumentalness, Float

      # @!attribute min_key
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Integer, nil]
      optional :min_key, Integer

      # @!attribute min_liveness
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Float, nil]
      optional :min_liveness, Float

      # @!attribute min_loudness
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Float, nil]
      optional :min_loudness, Float

      # @!attribute min_mode
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Integer, nil]
      optional :min_mode, Integer

      # @!attribute min_popularity
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Integer, nil]
      optional :min_popularity, Integer

      # @!attribute min_speechiness
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Float, nil]
      optional :min_speechiness, Float

      # @!attribute min_tempo
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Float, nil]
      optional :min_tempo, Float

      # @!attribute min_time_signature
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Integer, nil]
      optional :min_time_signature, Integer

      # @!attribute min_valence
      #   For each tunable track attribute, a hard floor on the selected track attribute’s
      #   value can be provided. See tunable track attributes below for the list of
      #   available options. For example, `min_tempo=140` would restrict results to only
      #   those tracks with a tempo of greater than 140 beats per minute.
      #
      #   @return [Float, nil]
      optional :min_valence, Float

      # @!attribute seed_artists
      #   A comma separated list of
      #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for seed
      #   artists. Up to 5 seed values may be provided in any combination of
      #   `seed_artists`, `seed_tracks` and `seed_genres`.<br/> _**Note**: only required
      #   if `seed_genres` and `seed_tracks` are not set_.
      #
      #   @return [String, nil]
      optional :seed_artists, String

      # @!attribute seed_genres
      #   A comma separated list of any genres in the set of
      #   [available genre seeds](/documentation/web-api/reference/get-recommendation-genres).
      #   Up to 5 seed values may be provided in any combination of `seed_artists`,
      #   `seed_tracks` and `seed_genres`.<br/> _**Note**: only required if `seed_artists`
      #   and `seed_tracks` are not set_.
      #
      #   @return [String, nil]
      optional :seed_genres, String

      # @!attribute seed_tracks
      #   A comma separated list of
      #   [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for a seed
      #   track. Up to 5 seed values may be provided in any combination of `seed_artists`,
      #   `seed_tracks` and `seed_genres`.<br/> _**Note**: only required if `seed_artists`
      #   and `seed_genres` are not set_.
      #
      #   @return [String, nil]
      optional :seed_tracks, String

      # @!attribute target_acousticness
      #   For each of the tunable track attributes (below) a target value may be provided.
      #   Tracks with the attribute values nearest to the target values will be preferred.
      #   For example, you might request `target_energy=0.6` and
      #   `target_danceability=0.8`. All target values will be weighed equally in ranking
      #   results.
      #
      #   @return [Float, nil]
      optional :target_acousticness, Float

      # @!attribute target_danceability
      #   For each of the tunable track attributes (below) a target value may be provided.
      #   Tracks with the attribute values nearest to the target values will be preferred.
      #   For example, you might request `target_energy=0.6` and
      #   `target_danceability=0.8`. All target values will be weighed equally in ranking
      #   results.
      #
      #   @return [Float, nil]
      optional :target_danceability, Float

      # @!attribute target_duration_ms
      #   Target duration of the track (ms)
      #
      #   @return [Integer, nil]
      optional :target_duration_ms, Integer

      # @!attribute target_energy
      #   For each of the tunable track attributes (below) a target value may be provided.
      #   Tracks with the attribute values nearest to the target values will be preferred.
      #   For example, you might request `target_energy=0.6` and
      #   `target_danceability=0.8`. All target values will be weighed equally in ranking
      #   results.
      #
      #   @return [Float, nil]
      optional :target_energy, Float

      # @!attribute target_instrumentalness
      #   For each of the tunable track attributes (below) a target value may be provided.
      #   Tracks with the attribute values nearest to the target values will be preferred.
      #   For example, you might request `target_energy=0.6` and
      #   `target_danceability=0.8`. All target values will be weighed equally in ranking
      #   results.
      #
      #   @return [Float, nil]
      optional :target_instrumentalness, Float

      # @!attribute target_key
      #   For each of the tunable track attributes (below) a target value may be provided.
      #   Tracks with the attribute values nearest to the target values will be preferred.
      #   For example, you might request `target_energy=0.6` and
      #   `target_danceability=0.8`. All target values will be weighed equally in ranking
      #   results.
      #
      #   @return [Integer, nil]
      optional :target_key, Integer

      # @!attribute target_liveness
      #   For each of the tunable track attributes (below) a target value may be provided.
      #   Tracks with the attribute values nearest to the target values will be preferred.
      #   For example, you might request `target_energy=0.6` and
      #   `target_danceability=0.8`. All target values will be weighed equally in ranking
      #   results.
      #
      #   @return [Float, nil]
      optional :target_liveness, Float

      # @!attribute target_loudness
      #   For each of the tunable track attributes (below) a target value may be provided.
      #   Tracks with the attribute values nearest to the target values will be preferred.
      #   For example, you might request `target_energy=0.6` and
      #   `target_danceability=0.8`. All target values will be weighed equally in ranking
      #   results.
      #
      #   @return [Float, nil]
      optional :target_loudness, Float

      # @!attribute target_mode
      #   For each of the tunable track attributes (below) a target value may be provided.
      #   Tracks with the attribute values nearest to the target values will be preferred.
      #   For example, you might request `target_energy=0.6` and
      #   `target_danceability=0.8`. All target values will be weighed equally in ranking
      #   results.
      #
      #   @return [Integer, nil]
      optional :target_mode, Integer

      # @!attribute target_popularity
      #   For each of the tunable track attributes (below) a target value may be provided.
      #   Tracks with the attribute values nearest to the target values will be preferred.
      #   For example, you might request `target_energy=0.6` and
      #   `target_danceability=0.8`. All target values will be weighed equally in ranking
      #   results.
      #
      #   @return [Integer, nil]
      optional :target_popularity, Integer

      # @!attribute target_speechiness
      #   For each of the tunable track attributes (below) a target value may be provided.
      #   Tracks with the attribute values nearest to the target values will be preferred.
      #   For example, you might request `target_energy=0.6` and
      #   `target_danceability=0.8`. All target values will be weighed equally in ranking
      #   results.
      #
      #   @return [Float, nil]
      optional :target_speechiness, Float

      # @!attribute target_tempo
      #   Target tempo (BPM)
      #
      #   @return [Float, nil]
      optional :target_tempo, Float

      # @!attribute target_time_signature
      #   For each of the tunable track attributes (below) a target value may be provided.
      #   Tracks with the attribute values nearest to the target values will be preferred.
      #   For example, you might request `target_energy=0.6` and
      #   `target_danceability=0.8`. All target values will be weighed equally in ranking
      #   results.
      #
      #   @return [Integer, nil]
      optional :target_time_signature, Integer

      # @!attribute target_valence
      #   For each of the tunable track attributes (below) a target value may be provided.
      #   Tracks with the attribute values nearest to the target values will be preferred.
      #   For example, you might request `target_energy=0.6` and
      #   `target_danceability=0.8`. All target values will be weighed equally in ranking
      #   results.
      #
      #   @return [Float, nil]
      optional :target_valence, Float

      # @!method initialize(limit: nil, market: nil, max_acousticness: nil, max_danceability: nil, max_duration_ms: nil, max_energy: nil, max_instrumentalness: nil, max_key: nil, max_liveness: nil, max_loudness: nil, max_mode: nil, max_popularity: nil, max_speechiness: nil, max_tempo: nil, max_time_signature: nil, max_valence: nil, min_acousticness: nil, min_danceability: nil, min_duration_ms: nil, min_energy: nil, min_instrumentalness: nil, min_key: nil, min_liveness: nil, min_loudness: nil, min_mode: nil, min_popularity: nil, min_speechiness: nil, min_tempo: nil, min_time_signature: nil, min_valence: nil, seed_artists: nil, seed_genres: nil, seed_tracks: nil, target_acousticness: nil, target_danceability: nil, target_duration_ms: nil, target_energy: nil, target_instrumentalness: nil, target_key: nil, target_liveness: nil, target_loudness: nil, target_mode: nil, target_popularity: nil, target_speechiness: nil, target_tempo: nil, target_time_signature: nil, target_valence: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::RecommendationGetParams} for more details.
      #
      #   @param limit [Integer] The target size of the list of recommended tracks. For seeds with unusually smal
      #
      #   @param market [String] An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      #   @param max_acousticness [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_danceability [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_duration_ms [Integer] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_energy [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_instrumentalness [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_key [Integer] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_liveness [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_loudness [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_mode [Integer] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_popularity [Integer] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_speechiness [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_tempo [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_time_signature [Integer] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param max_valence [Float] For each tunable track attribute, a hard ceiling on the selected track attribute
      #
      #   @param min_acousticness [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_danceability [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_duration_ms [Integer] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_energy [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_instrumentalness [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_key [Integer] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_liveness [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_loudness [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_mode [Integer] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_popularity [Integer] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_speechiness [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_tempo [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_time_signature [Integer] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param min_valence [Float] For each tunable track attribute, a hard floor on the selected track attribute’s
      #
      #   @param seed_artists [String] A comma separated list of [Spotify IDs](/documentation/web-api/concepts/spotify-
      #
      #   @param seed_genres [String] A comma separated list of any genres in the set of [available genre seeds](/docu
      #
      #   @param seed_tracks [String] A comma separated list of [Spotify IDs](/documentation/web-api/concepts/spotify-
      #
      #   @param target_acousticness [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      #   @param target_danceability [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      #   @param target_duration_ms [Integer] Target duration of the track (ms)
      #
      #   @param target_energy [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      #   @param target_instrumentalness [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      #   @param target_key [Integer] For each of the tunable track attributes (below) a target value may be provided.
      #
      #   @param target_liveness [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      #   @param target_loudness [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      #   @param target_mode [Integer] For each of the tunable track attributes (below) a target value may be provided.
      #
      #   @param target_popularity [Integer] For each of the tunable track attributes (below) a target value may be provided.
      #
      #   @param target_speechiness [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      #   @param target_tempo [Float] Target tempo (BPM)
      #
      #   @param target_time_signature [Integer] For each of the tunable track attributes (below) a target value may be provided.
      #
      #   @param target_valence [Float] For each of the tunable track attributes (below) a target value may be provided.
      #
      #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
