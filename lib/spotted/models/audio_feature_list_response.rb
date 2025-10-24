# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::AudioFeatures#list
    class AudioFeatureListResponse < Spotted::Internal::Type::BaseModel
      # @!attribute audio_features
      #
      #   @return [Array<Spotted::Models::AudioFeatureListResponse::AudioFeature>]
      required :audio_features,
               -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::AudioFeatureListResponse::AudioFeature] }

      # @!method initialize(audio_features:)
      #   @param audio_features [Array<Spotted::Models::AudioFeatureListResponse::AudioFeature>]

      class AudioFeature < Spotted::Internal::Type::BaseModel
        # @!attribute id
        #   The Spotify ID for the track.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute acousticness
        #   A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0
        #   represents high confidence the track is acoustic.
        #
        #   @return [Float, nil]
        optional :acousticness, Float

        # @!attribute analysis_url
        #   A URL to access the full audio analysis of this track. An access token is
        #   required to access this data.
        #
        #   @return [String, nil]
        optional :analysis_url, String

        # @!attribute danceability
        #   Danceability describes how suitable a track is for dancing based on a
        #   combination of musical elements including tempo, rhythm stability, beat
        #   strength, and overall regularity. A value of 0.0 is least danceable and 1.0 is
        #   most danceable.
        #
        #   @return [Float, nil]
        optional :danceability, Float

        # @!attribute duration_ms
        #   The duration of the track in milliseconds.
        #
        #   @return [Integer, nil]
        optional :duration_ms, Integer

        # @!attribute energy
        #   Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of
        #   intensity and activity. Typically, energetic tracks feel fast, loud, and noisy.
        #   For example, death metal has high energy, while a Bach prelude scores low on the
        #   scale. Perceptual features contributing to this attribute include dynamic range,
        #   perceived loudness, timbre, onset rate, and general entropy.
        #
        #   @return [Float, nil]
        optional :energy, Float

        # @!attribute instrumentalness
        #   Predicts whether a track contains no vocals. "Ooh" and "aah" sounds are treated
        #   as instrumental in this context. Rap or spoken word tracks are clearly "vocal".
        #   The closer the instrumentalness value is to 1.0, the greater likelihood the
        #   track contains no vocal content. Values above 0.5 are intended to represent
        #   instrumental tracks, but confidence is higher as the value approaches 1.0.
        #
        #   @return [Float, nil]
        optional :instrumentalness, Float

        # @!attribute key
        #   The key the track is in. Integers map to pitches using standard
        #   [Pitch Class notation](https://en.wikipedia.org/wiki/Pitch_class). E.g. 0 = C, 1
        #   = C♯/D♭, 2 = D, and so on. If no key was detected, the value is -1.
        #
        #   @return [Integer, nil]
        optional :key, Integer

        # @!attribute liveness
        #   Detects the presence of an audience in the recording. Higher liveness values
        #   represent an increased probability that the track was performed live. A value
        #   above 0.8 provides strong likelihood that the track is live.
        #
        #   @return [Float, nil]
        optional :liveness, Float

        # @!attribute loudness
        #   The overall loudness of a track in decibels (dB). Loudness values are averaged
        #   across the entire track and are useful for comparing relative loudness of
        #   tracks. Loudness is the quality of a sound that is the primary psychological
        #   correlate of physical strength (amplitude). Values typically range between -60
        #   and 0 db.
        #
        #   @return [Float, nil]
        optional :loudness, Float

        # @!attribute mode
        #   Mode indicates the modality (major or minor) of a track, the type of scale from
        #   which its melodic content is derived. Major is represented by 1 and minor is 0.
        #
        #   @return [Integer, nil]
        optional :mode, Integer

        # @!attribute speechiness
        #   Speechiness detects the presence of spoken words in a track. The more
        #   exclusively speech-like the recording (e.g. talk show, audio book, poetry), the
        #   closer to 1.0 the attribute value. Values above 0.66 describe tracks that are
        #   probably made entirely of spoken words. Values between 0.33 and 0.66 describe
        #   tracks that may contain both music and speech, either in sections or layered,
        #   including such cases as rap music. Values below 0.33 most likely represent music
        #   and other non-speech-like tracks.
        #
        #   @return [Float, nil]
        optional :speechiness, Float

        # @!attribute tempo
        #   The overall estimated tempo of a track in beats per minute (BPM). In musical
        #   terminology, tempo is the speed or pace of a given piece and derives directly
        #   from the average beat duration.
        #
        #   @return [Float, nil]
        optional :tempo, Float

        # @!attribute time_signature
        #   An estimated time signature. The time signature (meter) is a notational
        #   convention to specify how many beats are in each bar (or measure). The time
        #   signature ranges from 3 to 7 indicating time signatures of "3/4", to "7/4".
        #
        #   @return [Integer, nil]
        optional :time_signature, Integer

        # @!attribute track_href
        #   A link to the Web API endpoint providing full details of the track.
        #
        #   @return [String, nil]
        optional :track_href, String

        # @!attribute type
        #   The object type.
        #
        #   @return [Symbol, Spotted::Models::AudioFeatureListResponse::AudioFeature::Type, nil]
        optional :type, enum: -> { Spotted::Models::AudioFeatureListResponse::AudioFeature::Type }

        # @!attribute uri
        #   The Spotify URI for the track.
        #
        #   @return [String, nil]
        optional :uri, String

        # @!attribute valence
        #   A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a
        #   track. Tracks with high valence sound more positive (e.g. happy, cheerful,
        #   euphoric), while tracks with low valence sound more negative (e.g. sad,
        #   depressed, angry).
        #
        #   @return [Float, nil]
        optional :valence, Float

        # @!method initialize(id: nil, acousticness: nil, analysis_url: nil, danceability: nil, duration_ms: nil, energy: nil, instrumentalness: nil, key: nil, liveness: nil, loudness: nil, mode: nil, speechiness: nil, tempo: nil, time_signature: nil, track_href: nil, type: nil, uri: nil, valence: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::AudioFeatureListResponse::AudioFeature} for more details.
        #
        #   @param id [String] The Spotify ID for the track.
        #
        #   @param acousticness [Float] A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0 repre
        #
        #   @param analysis_url [String] A URL to access the full audio analysis of this track. An access token is requir
        #
        #   @param danceability [Float] Danceability describes how suitable a track is for dancing based on a combinatio
        #
        #   @param duration_ms [Integer] The duration of the track in milliseconds.
        #
        #   @param energy [Float] Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of inten
        #
        #   @param instrumentalness [Float] Predicts whether a track contains no vocals. "Ooh" and "aah" sounds are treated
        #
        #   @param key [Integer] The key the track is in. Integers map to pitches using standard [Pitch Class not
        #
        #   @param liveness [Float] Detects the presence of an audience in the recording. Higher liveness values rep
        #
        #   @param loudness [Float] The overall loudness of a track in decibels (dB). Loudness values are averaged a
        #
        #   @param mode [Integer] Mode indicates the modality (major or minor) of a track, the type of scale from
        #
        #   @param speechiness [Float] Speechiness detects the presence of spoken words in a track. The more exclusivel
        #
        #   @param tempo [Float] The overall estimated tempo of a track in beats per minute (BPM). In musical ter
        #
        #   @param time_signature [Integer] An estimated time signature. The time signature (meter) is a notational conventi
        #
        #   @param track_href [String] A link to the Web API endpoint providing full details of the track.
        #
        #   @param type [Symbol, Spotted::Models::AudioFeatureListResponse::AudioFeature::Type] The object type.
        #
        #   @param uri [String] The Spotify URI for the track.
        #
        #   @param valence [Float] A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a trac

        # The object type.
        #
        # @see Spotted::Models::AudioFeatureListResponse::AudioFeature#type
        module Type
          extend Spotted::Internal::Type::Enum

          AUDIO_FEATURES = :audio_features

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
