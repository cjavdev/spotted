# typed: strong

module Spotted
  module Models
    class AudioFeatureRetrieveResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::AudioFeatureRetrieveResponse,
            Spotted::Internal::AnyHash
          )
        end

      # The Spotify ID for the track.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0
      # represents high confidence the track is acoustic.
      sig { returns(T.nilable(Float)) }
      attr_reader :acousticness

      sig { params(acousticness: Float).void }
      attr_writer :acousticness

      # A URL to access the full audio analysis of this track. An access token is
      # required to access this data.
      sig { returns(T.nilable(String)) }
      attr_reader :analysis_url

      sig { params(analysis_url: String).void }
      attr_writer :analysis_url

      # Danceability describes how suitable a track is for dancing based on a
      # combination of musical elements including tempo, rhythm stability, beat
      # strength, and overall regularity. A value of 0.0 is least danceable and 1.0 is
      # most danceable.
      sig { returns(T.nilable(Float)) }
      attr_reader :danceability

      sig { params(danceability: Float).void }
      attr_writer :danceability

      # The duration of the track in milliseconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :duration_ms

      sig { params(duration_ms: Integer).void }
      attr_writer :duration_ms

      # Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of
      # intensity and activity. Typically, energetic tracks feel fast, loud, and noisy.
      # For example, death metal has high energy, while a Bach prelude scores low on the
      # scale. Perceptual features contributing to this attribute include dynamic range,
      # perceived loudness, timbre, onset rate, and general entropy.
      sig { returns(T.nilable(Float)) }
      attr_reader :energy

      sig { params(energy: Float).void }
      attr_writer :energy

      # Predicts whether a track contains no vocals. "Ooh" and "aah" sounds are treated
      # as instrumental in this context. Rap or spoken word tracks are clearly "vocal".
      # The closer the instrumentalness value is to 1.0, the greater likelihood the
      # track contains no vocal content. Values above 0.5 are intended to represent
      # instrumental tracks, but confidence is higher as the value approaches 1.0.
      sig { returns(T.nilable(Float)) }
      attr_reader :instrumentalness

      sig { params(instrumentalness: Float).void }
      attr_writer :instrumentalness

      # The key the track is in. Integers map to pitches using standard
      # [Pitch Class notation](https://en.wikipedia.org/wiki/Pitch_class). E.g. 0 = C, 1
      # = C♯/D♭, 2 = D, and so on. If no key was detected, the value is -1.
      sig { returns(T.nilable(Integer)) }
      attr_reader :key

      sig { params(key: Integer).void }
      attr_writer :key

      # Detects the presence of an audience in the recording. Higher liveness values
      # represent an increased probability that the track was performed live. A value
      # above 0.8 provides strong likelihood that the track is live.
      sig { returns(T.nilable(Float)) }
      attr_reader :liveness

      sig { params(liveness: Float).void }
      attr_writer :liveness

      # The overall loudness of a track in decibels (dB). Loudness values are averaged
      # across the entire track and are useful for comparing relative loudness of
      # tracks. Loudness is the quality of a sound that is the primary psychological
      # correlate of physical strength (amplitude). Values typically range between -60
      # and 0 db.
      sig { returns(T.nilable(Float)) }
      attr_reader :loudness

      sig { params(loudness: Float).void }
      attr_writer :loudness

      # Mode indicates the modality (major or minor) of a track, the type of scale from
      # which its melodic content is derived. Major is represented by 1 and minor is 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :mode

      sig { params(mode: Integer).void }
      attr_writer :mode

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

      # Speechiness detects the presence of spoken words in a track. The more
      # exclusively speech-like the recording (e.g. talk show, audio book, poetry), the
      # closer to 1.0 the attribute value. Values above 0.66 describe tracks that are
      # probably made entirely of spoken words. Values between 0.33 and 0.66 describe
      # tracks that may contain both music and speech, either in sections or layered,
      # including such cases as rap music. Values below 0.33 most likely represent music
      # and other non-speech-like tracks.
      sig { returns(T.nilable(Float)) }
      attr_reader :speechiness

      sig { params(speechiness: Float).void }
      attr_writer :speechiness

      # The overall estimated tempo of a track in beats per minute (BPM). In musical
      # terminology, tempo is the speed or pace of a given piece and derives directly
      # from the average beat duration.
      sig { returns(T.nilable(Float)) }
      attr_reader :tempo

      sig { params(tempo: Float).void }
      attr_writer :tempo

      # An estimated time signature. The time signature (meter) is a notational
      # convention to specify how many beats are in each bar (or measure). The time
      # signature ranges from 3 to 7 indicating time signatures of "3/4", to "7/4".
      sig { returns(T.nilable(Integer)) }
      attr_reader :time_signature

      sig { params(time_signature: Integer).void }
      attr_writer :time_signature

      # A link to the Web API endpoint providing full details of the track.
      sig { returns(T.nilable(String)) }
      attr_reader :track_href

      sig { params(track_href: String).void }
      attr_writer :track_href

      # The object type.
      sig do
        returns(
          T.nilable(
            Spotted::Models::AudioFeatureRetrieveResponse::Type::TaggedSymbol
          )
        )
      end
      attr_reader :type

      sig do
        params(
          type: Spotted::Models::AudioFeatureRetrieveResponse::Type::OrSymbol
        ).void
      end
      attr_writer :type

      # The Spotify URI for the track.
      sig { returns(T.nilable(String)) }
      attr_reader :uri

      sig { params(uri: String).void }
      attr_writer :uri

      # A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a
      # track. Tracks with high valence sound more positive (e.g. happy, cheerful,
      # euphoric), while tracks with low valence sound more negative (e.g. sad,
      # depressed, angry).
      sig { returns(T.nilable(Float)) }
      attr_reader :valence

      sig { params(valence: Float).void }
      attr_writer :valence

      sig do
        params(
          id: String,
          acousticness: Float,
          analysis_url: String,
          danceability: Float,
          duration_ms: Integer,
          energy: Float,
          instrumentalness: Float,
          key: Integer,
          liveness: Float,
          loudness: Float,
          mode: Integer,
          published: T::Boolean,
          speechiness: Float,
          tempo: Float,
          time_signature: Integer,
          track_href: String,
          type: Spotted::Models::AudioFeatureRetrieveResponse::Type::OrSymbol,
          uri: String,
          valence: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # The Spotify ID for the track.
        id: nil,
        # A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0
        # represents high confidence the track is acoustic.
        acousticness: nil,
        # A URL to access the full audio analysis of this track. An access token is
        # required to access this data.
        analysis_url: nil,
        # Danceability describes how suitable a track is for dancing based on a
        # combination of musical elements including tempo, rhythm stability, beat
        # strength, and overall regularity. A value of 0.0 is least danceable and 1.0 is
        # most danceable.
        danceability: nil,
        # The duration of the track in milliseconds.
        duration_ms: nil,
        # Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of
        # intensity and activity. Typically, energetic tracks feel fast, loud, and noisy.
        # For example, death metal has high energy, while a Bach prelude scores low on the
        # scale. Perceptual features contributing to this attribute include dynamic range,
        # perceived loudness, timbre, onset rate, and general entropy.
        energy: nil,
        # Predicts whether a track contains no vocals. "Ooh" and "aah" sounds are treated
        # as instrumental in this context. Rap or spoken word tracks are clearly "vocal".
        # The closer the instrumentalness value is to 1.0, the greater likelihood the
        # track contains no vocal content. Values above 0.5 are intended to represent
        # instrumental tracks, but confidence is higher as the value approaches 1.0.
        instrumentalness: nil,
        # The key the track is in. Integers map to pitches using standard
        # [Pitch Class notation](https://en.wikipedia.org/wiki/Pitch_class). E.g. 0 = C, 1
        # = C♯/D♭, 2 = D, and so on. If no key was detected, the value is -1.
        key: nil,
        # Detects the presence of an audience in the recording. Higher liveness values
        # represent an increased probability that the track was performed live. A value
        # above 0.8 provides strong likelihood that the track is live.
        liveness: nil,
        # The overall loudness of a track in decibels (dB). Loudness values are averaged
        # across the entire track and are useful for comparing relative loudness of
        # tracks. Loudness is the quality of a sound that is the primary psychological
        # correlate of physical strength (amplitude). Values typically range between -60
        # and 0 db.
        loudness: nil,
        # Mode indicates the modality (major or minor) of a track, the type of scale from
        # which its melodic content is derived. Major is represented by 1 and minor is 0.
        mode: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # Speechiness detects the presence of spoken words in a track. The more
        # exclusively speech-like the recording (e.g. talk show, audio book, poetry), the
        # closer to 1.0 the attribute value. Values above 0.66 describe tracks that are
        # probably made entirely of spoken words. Values between 0.33 and 0.66 describe
        # tracks that may contain both music and speech, either in sections or layered,
        # including such cases as rap music. Values below 0.33 most likely represent music
        # and other non-speech-like tracks.
        speechiness: nil,
        # The overall estimated tempo of a track in beats per minute (BPM). In musical
        # terminology, tempo is the speed or pace of a given piece and derives directly
        # from the average beat duration.
        tempo: nil,
        # An estimated time signature. The time signature (meter) is a notational
        # convention to specify how many beats are in each bar (or measure). The time
        # signature ranges from 3 to 7 indicating time signatures of "3/4", to "7/4".
        time_signature: nil,
        # A link to the Web API endpoint providing full details of the track.
        track_href: nil,
        # The object type.
        type: nil,
        # The Spotify URI for the track.
        uri: nil,
        # A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a
        # track. Tracks with high valence sound more positive (e.g. happy, cheerful,
        # euphoric), while tracks with low valence sound more negative (e.g. sad,
        # depressed, angry).
        valence: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            acousticness: Float,
            analysis_url: String,
            danceability: Float,
            duration_ms: Integer,
            energy: Float,
            instrumentalness: Float,
            key: Integer,
            liveness: Float,
            loudness: Float,
            mode: Integer,
            published: T::Boolean,
            speechiness: Float,
            tempo: Float,
            time_signature: Integer,
            track_href: String,
            type:
              Spotted::Models::AudioFeatureRetrieveResponse::Type::TaggedSymbol,
            uri: String,
            valence: Float
          }
        )
      end
      def to_hash
      end

      # The object type.
      module Type
        extend Spotted::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Spotted::Models::AudioFeatureRetrieveResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUDIO_FEATURES =
          T.let(
            :audio_features,
            Spotted::Models::AudioFeatureRetrieveResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Spotted::Models::AudioFeatureRetrieveResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
