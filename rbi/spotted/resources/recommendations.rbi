# typed: strong

module Spotted
  module Resources
    class Recommendations
      # Recommendations are generated based on the available information for a given
      # seed entity and matched against similar artists and tracks. If there is
      # sufficient information about the provided seeds, a list of tracks will be
      # returned together with pool size details.
      #
      # For artists and tracks that are very new or obscure there might not be enough
      # data to generate a list of tracks.
      sig do
        params(
          seed_artists: String,
          seed_genres: String,
          seed_tracks: String,
          limit: Integer,
          market: String,
          max_acousticness: Float,
          max_danceability: Float,
          max_duration_ms: Integer,
          max_energy: Float,
          max_instrumentalness: Float,
          max_key: Integer,
          max_liveness: Float,
          max_loudness: Float,
          max_mode: Integer,
          max_popularity: Integer,
          max_speechiness: Float,
          max_tempo: Float,
          max_time_signature: Integer,
          max_valence: Float,
          min_acousticness: Float,
          min_danceability: Float,
          min_duration_ms: Integer,
          min_energy: Float,
          min_instrumentalness: Float,
          min_key: Integer,
          min_liveness: Float,
          min_loudness: Float,
          min_mode: Integer,
          min_popularity: Integer,
          min_speechiness: Float,
          min_tempo: Float,
          min_time_signature: Integer,
          min_valence: Float,
          target_acousticness: Float,
          target_danceability: Float,
          target_duration_ms: Integer,
          target_energy: Float,
          target_instrumentalness: Float,
          target_key: Integer,
          target_liveness: Float,
          target_loudness: Float,
          target_mode: Integer,
          target_popularity: Integer,
          target_speechiness: Float,
          target_tempo: Float,
          target_time_signature: Integer,
          target_valence: Float,
          request_options: Spotted::RequestOptions::OrHash
        ).returns(Spotted::Models::RecommendationGetResponse)
      end
      def get(
        # A comma separated list of
        # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for seed
        # artists. Up to 5 seed values may be provided in any combination of
        # `seed_artists`, `seed_tracks` and `seed_genres`.<br/> _**Note**: only required
        # if `seed_genres` and `seed_tracks` are not set_.
        seed_artists:,
        # A comma separated list of any genres in the set of
        # [available genre seeds](/documentation/web-api/reference/get-recommendation-genres).
        # Up to 5 seed values may be provided in any combination of `seed_artists`,
        # `seed_tracks` and `seed_genres`.<br/> _**Note**: only required if `seed_artists`
        # and `seed_tracks` are not set_.
        seed_genres:,
        # A comma separated list of
        # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for a seed
        # track. Up to 5 seed values may be provided in any combination of `seed_artists`,
        # `seed_tracks` and `seed_genres`.<br/> _**Note**: only required if `seed_artists`
        # and `seed_genres` are not set_.
        seed_tracks:,
        # The target size of the list of recommended tracks. For seeds with unusually
        # small pools or when highly restrictive filtering is applied, it may be
        # impossible to generate the requested number of recommended tracks. Debugging
        # information for such cases is available in the response. Default: 20\. Minimum:
        # 1\. Maximum: 100.
        limit: nil,
        # An
        # [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
        # If a country code is specified, only content that is available in that market
        # will be returned.<br/> If a valid user access token is specified in the request
        # header, the country associated with the user account will take priority over
        # this parameter.<br/> _**Note**: If neither market or user country are provided,
        # the content is considered unavailable for the client._<br/> Users can view the
        # country that is associated with their account in the
        # [account settings](https://www.spotify.com/account/overview/).
        market: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_acousticness: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_danceability: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_duration_ms: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_energy: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_instrumentalness: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_key: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_liveness: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_loudness: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_mode: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_popularity: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_speechiness: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_tempo: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_time_signature: nil,
        # For each tunable track attribute, a hard ceiling on the selected track
        # attribute’s value can be provided. See tunable track attributes below for the
        # list of available options. For example, `max_instrumentalness=0.35` would filter
        # out most tracks that are likely to be instrumental.
        max_valence: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_acousticness: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_danceability: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_duration_ms: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_energy: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_instrumentalness: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_key: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_liveness: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_loudness: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_mode: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_popularity: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_speechiness: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_tempo: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_time_signature: nil,
        # For each tunable track attribute, a hard floor on the selected track attribute’s
        # value can be provided. See tunable track attributes below for the list of
        # available options. For example, `min_tempo=140` would restrict results to only
        # those tracks with a tempo of greater than 140 beats per minute.
        min_valence: nil,
        # For each of the tunable track attributes (below) a target value may be provided.
        # Tracks with the attribute values nearest to the target values will be preferred.
        # For example, you might request `target_energy=0.6` and
        # `target_danceability=0.8`. All target values will be weighed equally in ranking
        # results.
        target_acousticness: nil,
        # For each of the tunable track attributes (below) a target value may be provided.
        # Tracks with the attribute values nearest to the target values will be preferred.
        # For example, you might request `target_energy=0.6` and
        # `target_danceability=0.8`. All target values will be weighed equally in ranking
        # results.
        target_danceability: nil,
        # Target duration of the track (ms)
        target_duration_ms: nil,
        # For each of the tunable track attributes (below) a target value may be provided.
        # Tracks with the attribute values nearest to the target values will be preferred.
        # For example, you might request `target_energy=0.6` and
        # `target_danceability=0.8`. All target values will be weighed equally in ranking
        # results.
        target_energy: nil,
        # For each of the tunable track attributes (below) a target value may be provided.
        # Tracks with the attribute values nearest to the target values will be preferred.
        # For example, you might request `target_energy=0.6` and
        # `target_danceability=0.8`. All target values will be weighed equally in ranking
        # results.
        target_instrumentalness: nil,
        # For each of the tunable track attributes (below) a target value may be provided.
        # Tracks with the attribute values nearest to the target values will be preferred.
        # For example, you might request `target_energy=0.6` and
        # `target_danceability=0.8`. All target values will be weighed equally in ranking
        # results.
        target_key: nil,
        # For each of the tunable track attributes (below) a target value may be provided.
        # Tracks with the attribute values nearest to the target values will be preferred.
        # For example, you might request `target_energy=0.6` and
        # `target_danceability=0.8`. All target values will be weighed equally in ranking
        # results.
        target_liveness: nil,
        # For each of the tunable track attributes (below) a target value may be provided.
        # Tracks with the attribute values nearest to the target values will be preferred.
        # For example, you might request `target_energy=0.6` and
        # `target_danceability=0.8`. All target values will be weighed equally in ranking
        # results.
        target_loudness: nil,
        # For each of the tunable track attributes (below) a target value may be provided.
        # Tracks with the attribute values nearest to the target values will be preferred.
        # For example, you might request `target_energy=0.6` and
        # `target_danceability=0.8`. All target values will be weighed equally in ranking
        # results.
        target_mode: nil,
        # For each of the tunable track attributes (below) a target value may be provided.
        # Tracks with the attribute values nearest to the target values will be preferred.
        # For example, you might request `target_energy=0.6` and
        # `target_danceability=0.8`. All target values will be weighed equally in ranking
        # results.
        target_popularity: nil,
        # For each of the tunable track attributes (below) a target value may be provided.
        # Tracks with the attribute values nearest to the target values will be preferred.
        # For example, you might request `target_energy=0.6` and
        # `target_danceability=0.8`. All target values will be weighed equally in ranking
        # results.
        target_speechiness: nil,
        # Target tempo (BPM)
        target_tempo: nil,
        # For each of the tunable track attributes (below) a target value may be provided.
        # Tracks with the attribute values nearest to the target values will be preferred.
        # For example, you might request `target_energy=0.6` and
        # `target_danceability=0.8`. All target values will be weighed equally in ranking
        # results.
        target_time_signature: nil,
        # For each of the tunable track attributes (below) a target value may be provided.
        # Tracks with the attribute values nearest to the target values will be preferred.
        # For example, you might request `target_energy=0.6` and
        # `target_danceability=0.8`. All target values will be weighed equally in ranking
        # results.
        target_valence: nil,
        request_options: {}
      )
      end

      # Retrieve a list of available genres seed parameter values for
      # [recommendations](/documentation/web-api/reference/get-recommendations).
      sig do
        params(request_options: Spotted::RequestOptions::OrHash).returns(
          Spotted::Models::RecommendationGetAvailableGenreSeedsResponse
        )
      end
      def get_available_genre_seeds(request_options: {})
      end

      # @api private
      sig { params(client: Spotted::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
