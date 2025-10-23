# typed: strong

module Spotted
  module Models
    class RecommendationGetParams < Spotted::Internal::Type::BaseModel
      extend Spotted::Internal::Type::RequestParameters::Converter
      include Spotted::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Spotted::RecommendationGetParams, Spotted::Internal::AnyHash)
        end

      # A comma separated list of
      # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for seed
      # artists. Up to 5 seed values may be provided in any combination of
      # `seed_artists`, `seed_tracks` and `seed_genres`.<br/> _**Note**: only required
      # if `seed_genres` and `seed_tracks` are not set_.
      sig { returns(String) }
      attr_accessor :seed_artists

      # A comma separated list of any genres in the set of
      # [available genre seeds](/documentation/web-api/reference/get-recommendation-genres).
      # Up to 5 seed values may be provided in any combination of `seed_artists`,
      # `seed_tracks` and `seed_genres`.<br/> _**Note**: only required if `seed_artists`
      # and `seed_tracks` are not set_.
      sig { returns(String) }
      attr_accessor :seed_genres

      # A comma separated list of
      # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for a seed
      # track. Up to 5 seed values may be provided in any combination of `seed_artists`,
      # `seed_tracks` and `seed_genres`.<br/> _**Note**: only required if `seed_artists`
      # and `seed_genres` are not set_.
      sig { returns(String) }
      attr_accessor :seed_tracks

      # The target size of the list of recommended tracks. For seeds with unusually
      # small pools or when highly restrictive filtering is applied, it may be
      # impossible to generate the requested number of recommended tracks. Debugging
      # information for such cases is available in the response. Default: 20\. Minimum:
      # 1\. Maximum: 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # An
      # [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).
      # If a country code is specified, only content that is available in that market
      # will be returned.<br/> If a valid user access token is specified in the request
      # header, the country associated with the user account will take priority over
      # this parameter.<br/> _**Note**: If neither market or user country are provided,
      # the content is considered unavailable for the client._<br/> Users can view the
      # country that is associated with their account in the
      # [account settings](https://www.spotify.com/account/overview/).
      sig { returns(T.nilable(String)) }
      attr_reader :market

      sig { params(market: String).void }
      attr_writer :market

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Float)) }
      attr_reader :max_acousticness

      sig { params(max_acousticness: Float).void }
      attr_writer :max_acousticness

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Float)) }
      attr_reader :max_danceability

      sig { params(max_danceability: Float).void }
      attr_writer :max_danceability

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_duration_ms

      sig { params(max_duration_ms: Integer).void }
      attr_writer :max_duration_ms

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Float)) }
      attr_reader :max_energy

      sig { params(max_energy: Float).void }
      attr_writer :max_energy

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Float)) }
      attr_reader :max_instrumentalness

      sig { params(max_instrumentalness: Float).void }
      attr_writer :max_instrumentalness

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_key

      sig { params(max_key: Integer).void }
      attr_writer :max_key

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Float)) }
      attr_reader :max_liveness

      sig { params(max_liveness: Float).void }
      attr_writer :max_liveness

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Float)) }
      attr_reader :max_loudness

      sig { params(max_loudness: Float).void }
      attr_writer :max_loudness

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_mode

      sig { params(max_mode: Integer).void }
      attr_writer :max_mode

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_popularity

      sig { params(max_popularity: Integer).void }
      attr_writer :max_popularity

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Float)) }
      attr_reader :max_speechiness

      sig { params(max_speechiness: Float).void }
      attr_writer :max_speechiness

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Float)) }
      attr_reader :max_tempo

      sig { params(max_tempo: Float).void }
      attr_writer :max_tempo

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_time_signature

      sig { params(max_time_signature: Integer).void }
      attr_writer :max_time_signature

      # For each tunable track attribute, a hard ceiling on the selected track
      # attribute’s value can be provided. See tunable track attributes below for the
      # list of available options. For example, `max_instrumentalness=0.35` would filter
      # out most tracks that are likely to be instrumental.
      sig { returns(T.nilable(Float)) }
      attr_reader :max_valence

      sig { params(max_valence: Float).void }
      attr_writer :max_valence

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Float)) }
      attr_reader :min_acousticness

      sig { params(min_acousticness: Float).void }
      attr_writer :min_acousticness

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Float)) }
      attr_reader :min_danceability

      sig { params(min_danceability: Float).void }
      attr_writer :min_danceability

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Integer)) }
      attr_reader :min_duration_ms

      sig { params(min_duration_ms: Integer).void }
      attr_writer :min_duration_ms

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Float)) }
      attr_reader :min_energy

      sig { params(min_energy: Float).void }
      attr_writer :min_energy

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Float)) }
      attr_reader :min_instrumentalness

      sig { params(min_instrumentalness: Float).void }
      attr_writer :min_instrumentalness

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Integer)) }
      attr_reader :min_key

      sig { params(min_key: Integer).void }
      attr_writer :min_key

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Float)) }
      attr_reader :min_liveness

      sig { params(min_liveness: Float).void }
      attr_writer :min_liveness

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Float)) }
      attr_reader :min_loudness

      sig { params(min_loudness: Float).void }
      attr_writer :min_loudness

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Integer)) }
      attr_reader :min_mode

      sig { params(min_mode: Integer).void }
      attr_writer :min_mode

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Integer)) }
      attr_reader :min_popularity

      sig { params(min_popularity: Integer).void }
      attr_writer :min_popularity

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Float)) }
      attr_reader :min_speechiness

      sig { params(min_speechiness: Float).void }
      attr_writer :min_speechiness

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Float)) }
      attr_reader :min_tempo

      sig { params(min_tempo: Float).void }
      attr_writer :min_tempo

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Integer)) }
      attr_reader :min_time_signature

      sig { params(min_time_signature: Integer).void }
      attr_writer :min_time_signature

      # For each tunable track attribute, a hard floor on the selected track attribute’s
      # value can be provided. See tunable track attributes below for the list of
      # available options. For example, `min_tempo=140` would restrict results to only
      # those tracks with a tempo of greater than 140 beats per minute.
      sig { returns(T.nilable(Float)) }
      attr_reader :min_valence

      sig { params(min_valence: Float).void }
      attr_writer :min_valence

      # For each of the tunable track attributes (below) a target value may be provided.
      # Tracks with the attribute values nearest to the target values will be preferred.
      # For example, you might request `target_energy=0.6` and
      # `target_danceability=0.8`. All target values will be weighed equally in ranking
      # results.
      sig { returns(T.nilable(Float)) }
      attr_reader :target_acousticness

      sig { params(target_acousticness: Float).void }
      attr_writer :target_acousticness

      # For each of the tunable track attributes (below) a target value may be provided.
      # Tracks with the attribute values nearest to the target values will be preferred.
      # For example, you might request `target_energy=0.6` and
      # `target_danceability=0.8`. All target values will be weighed equally in ranking
      # results.
      sig { returns(T.nilable(Float)) }
      attr_reader :target_danceability

      sig { params(target_danceability: Float).void }
      attr_writer :target_danceability

      # Target duration of the track (ms)
      sig { returns(T.nilable(Integer)) }
      attr_reader :target_duration_ms

      sig { params(target_duration_ms: Integer).void }
      attr_writer :target_duration_ms

      # For each of the tunable track attributes (below) a target value may be provided.
      # Tracks with the attribute values nearest to the target values will be preferred.
      # For example, you might request `target_energy=0.6` and
      # `target_danceability=0.8`. All target values will be weighed equally in ranking
      # results.
      sig { returns(T.nilable(Float)) }
      attr_reader :target_energy

      sig { params(target_energy: Float).void }
      attr_writer :target_energy

      # For each of the tunable track attributes (below) a target value may be provided.
      # Tracks with the attribute values nearest to the target values will be preferred.
      # For example, you might request `target_energy=0.6` and
      # `target_danceability=0.8`. All target values will be weighed equally in ranking
      # results.
      sig { returns(T.nilable(Float)) }
      attr_reader :target_instrumentalness

      sig { params(target_instrumentalness: Float).void }
      attr_writer :target_instrumentalness

      # For each of the tunable track attributes (below) a target value may be provided.
      # Tracks with the attribute values nearest to the target values will be preferred.
      # For example, you might request `target_energy=0.6` and
      # `target_danceability=0.8`. All target values will be weighed equally in ranking
      # results.
      sig { returns(T.nilable(Integer)) }
      attr_reader :target_key

      sig { params(target_key: Integer).void }
      attr_writer :target_key

      # For each of the tunable track attributes (below) a target value may be provided.
      # Tracks with the attribute values nearest to the target values will be preferred.
      # For example, you might request `target_energy=0.6` and
      # `target_danceability=0.8`. All target values will be weighed equally in ranking
      # results.
      sig { returns(T.nilable(Float)) }
      attr_reader :target_liveness

      sig { params(target_liveness: Float).void }
      attr_writer :target_liveness

      # For each of the tunable track attributes (below) a target value may be provided.
      # Tracks with the attribute values nearest to the target values will be preferred.
      # For example, you might request `target_energy=0.6` and
      # `target_danceability=0.8`. All target values will be weighed equally in ranking
      # results.
      sig { returns(T.nilable(Float)) }
      attr_reader :target_loudness

      sig { params(target_loudness: Float).void }
      attr_writer :target_loudness

      # For each of the tunable track attributes (below) a target value may be provided.
      # Tracks with the attribute values nearest to the target values will be preferred.
      # For example, you might request `target_energy=0.6` and
      # `target_danceability=0.8`. All target values will be weighed equally in ranking
      # results.
      sig { returns(T.nilable(Integer)) }
      attr_reader :target_mode

      sig { params(target_mode: Integer).void }
      attr_writer :target_mode

      # For each of the tunable track attributes (below) a target value may be provided.
      # Tracks with the attribute values nearest to the target values will be preferred.
      # For example, you might request `target_energy=0.6` and
      # `target_danceability=0.8`. All target values will be weighed equally in ranking
      # results.
      sig { returns(T.nilable(Integer)) }
      attr_reader :target_popularity

      sig { params(target_popularity: Integer).void }
      attr_writer :target_popularity

      # For each of the tunable track attributes (below) a target value may be provided.
      # Tracks with the attribute values nearest to the target values will be preferred.
      # For example, you might request `target_energy=0.6` and
      # `target_danceability=0.8`. All target values will be weighed equally in ranking
      # results.
      sig { returns(T.nilable(Float)) }
      attr_reader :target_speechiness

      sig { params(target_speechiness: Float).void }
      attr_writer :target_speechiness

      # Target tempo (BPM)
      sig { returns(T.nilable(Float)) }
      attr_reader :target_tempo

      sig { params(target_tempo: Float).void }
      attr_writer :target_tempo

      # For each of the tunable track attributes (below) a target value may be provided.
      # Tracks with the attribute values nearest to the target values will be preferred.
      # For example, you might request `target_energy=0.6` and
      # `target_danceability=0.8`. All target values will be weighed equally in ranking
      # results.
      sig { returns(T.nilable(Integer)) }
      attr_reader :target_time_signature

      sig { params(target_time_signature: Integer).void }
      attr_writer :target_time_signature

      # For each of the tunable track attributes (below) a target value may be provided.
      # Tracks with the attribute values nearest to the target values will be preferred.
      # For example, you might request `target_energy=0.6` and
      # `target_danceability=0.8`. All target values will be weighed equally in ranking
      # results.
      sig { returns(T.nilable(Float)) }
      attr_reader :target_valence

      sig { params(target_valence: Float).void }
      attr_writer :target_valence

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
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
            request_options: Spotted::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
