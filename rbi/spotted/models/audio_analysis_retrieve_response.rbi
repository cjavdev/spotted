# typed: strong

module Spotted
  module Models
    class AudioAnalysisRetrieveResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::AudioAnalysisRetrieveResponse,
            Spotted::Internal::AnyHash
          )
        end

      # The time intervals of the bars throughout the track. A bar (or measure) is a
      # segment of time defined as a given number of beats.
      sig { returns(T.nilable(T::Array[Spotted::TimeIntervalObject])) }
      attr_reader :bars

      sig { params(bars: T::Array[Spotted::TimeIntervalObject::OrHash]).void }
      attr_writer :bars

      # The time intervals of beats throughout the track. A beat is the basic time unit
      # of a piece of music; for example, each tick of a metronome. Beats are typically
      # multiples of tatums.
      sig { returns(T.nilable(T::Array[Spotted::TimeIntervalObject])) }
      attr_reader :beats

      sig { params(beats: T::Array[Spotted::TimeIntervalObject::OrHash]).void }
      attr_writer :beats

      sig do
        returns(T.nilable(Spotted::Models::AudioAnalysisRetrieveResponse::Meta))
      end
      attr_reader :meta

      sig do
        params(
          meta: Spotted::Models::AudioAnalysisRetrieveResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

      # Sections are defined by large variations in rhythm or timbre, e.g. chorus,
      # verse, bridge, guitar solo, etc. Each section contains its own descriptions of
      # tempo, key, mode, time_signature, and loudness.
      sig do
        returns(
          T.nilable(
            T::Array[Spotted::Models::AudioAnalysisRetrieveResponse::Section]
          )
        )
      end
      attr_reader :sections

      sig do
        params(
          sections:
            T::Array[
              Spotted::Models::AudioAnalysisRetrieveResponse::Section::OrHash
            ]
        ).void
      end
      attr_writer :sections

      # Each segment contains a roughly conisistent sound throughout its duration.
      sig do
        returns(
          T.nilable(
            T::Array[Spotted::Models::AudioAnalysisRetrieveResponse::Segment]
          )
        )
      end
      attr_reader :segments

      sig do
        params(
          segments:
            T::Array[
              Spotted::Models::AudioAnalysisRetrieveResponse::Segment::OrHash
            ]
        ).void
      end
      attr_writer :segments

      # A tatum represents the lowest regular pulse train that a listener intuitively
      # infers from the timing of perceived musical events (segments).
      sig { returns(T.nilable(T::Array[Spotted::TimeIntervalObject])) }
      attr_reader :tatums

      sig { params(tatums: T::Array[Spotted::TimeIntervalObject::OrHash]).void }
      attr_writer :tatums

      sig do
        returns(
          T.nilable(Spotted::Models::AudioAnalysisRetrieveResponse::Track)
        )
      end
      attr_reader :track

      sig do
        params(
          track: Spotted::Models::AudioAnalysisRetrieveResponse::Track::OrHash
        ).void
      end
      attr_writer :track

      sig do
        params(
          bars: T::Array[Spotted::TimeIntervalObject::OrHash],
          beats: T::Array[Spotted::TimeIntervalObject::OrHash],
          meta: Spotted::Models::AudioAnalysisRetrieveResponse::Meta::OrHash,
          published: T::Boolean,
          sections:
            T::Array[
              Spotted::Models::AudioAnalysisRetrieveResponse::Section::OrHash
            ],
          segments:
            T::Array[
              Spotted::Models::AudioAnalysisRetrieveResponse::Segment::OrHash
            ],
          tatums: T::Array[Spotted::TimeIntervalObject::OrHash],
          track: Spotted::Models::AudioAnalysisRetrieveResponse::Track::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The time intervals of the bars throughout the track. A bar (or measure) is a
        # segment of time defined as a given number of beats.
        bars: nil,
        # The time intervals of beats throughout the track. A beat is the basic time unit
        # of a piece of music; for example, each tick of a metronome. Beats are typically
        # multiples of tatums.
        beats: nil,
        meta: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # Sections are defined by large variations in rhythm or timbre, e.g. chorus,
        # verse, bridge, guitar solo, etc. Each section contains its own descriptions of
        # tempo, key, mode, time_signature, and loudness.
        sections: nil,
        # Each segment contains a roughly conisistent sound throughout its duration.
        segments: nil,
        # A tatum represents the lowest regular pulse train that a listener intuitively
        # infers from the timing of perceived musical events (segments).
        tatums: nil,
        track: nil
      )
      end

      sig do
        override.returns(
          {
            bars: T::Array[Spotted::TimeIntervalObject],
            beats: T::Array[Spotted::TimeIntervalObject],
            meta: Spotted::Models::AudioAnalysisRetrieveResponse::Meta,
            published: T::Boolean,
            sections:
              T::Array[Spotted::Models::AudioAnalysisRetrieveResponse::Section],
            segments:
              T::Array[Spotted::Models::AudioAnalysisRetrieveResponse::Segment],
            tatums: T::Array[Spotted::TimeIntervalObject],
            track: Spotted::Models::AudioAnalysisRetrieveResponse::Track
          }
        )
      end
      def to_hash
      end

      class Meta < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::AudioAnalysisRetrieveResponse::Meta,
              Spotted::Internal::AnyHash
            )
          end

        # The amount of time taken to analyze this track.
        sig { returns(T.nilable(Float)) }
        attr_reader :analysis_time

        sig { params(analysis_time: Float).void }
        attr_writer :analysis_time

        # The version of the Analyzer used to analyze this track.
        sig { returns(T.nilable(String)) }
        attr_reader :analyzer_version

        sig { params(analyzer_version: String).void }
        attr_writer :analyzer_version

        # A detailed status code for this track. If analysis data is missing, this code
        # may explain why.
        sig { returns(T.nilable(String)) }
        attr_reader :detailed_status

        sig { params(detailed_status: String).void }
        attr_writer :detailed_status

        # The method used to read the track's audio data.
        sig { returns(T.nilable(String)) }
        attr_reader :input_process

        sig { params(input_process: String).void }
        attr_writer :input_process

        # The platform used to read the track's audio data.
        sig { returns(T.nilable(String)) }
        attr_reader :platform

        sig { params(platform: String).void }
        attr_writer :platform

        # The return code of the analyzer process. 0 if successful, 1 if any errors
        # occurred.
        sig { returns(T.nilable(Integer)) }
        attr_reader :status_code

        sig { params(status_code: Integer).void }
        attr_writer :status_code

        # The Unix timestamp (in seconds) at which this track was analyzed.
        sig { returns(T.nilable(Integer)) }
        attr_reader :timestamp

        sig { params(timestamp: Integer).void }
        attr_writer :timestamp

        sig do
          params(
            analysis_time: Float,
            analyzer_version: String,
            detailed_status: String,
            input_process: String,
            platform: String,
            status_code: Integer,
            timestamp: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount of time taken to analyze this track.
          analysis_time: nil,
          # The version of the Analyzer used to analyze this track.
          analyzer_version: nil,
          # A detailed status code for this track. If analysis data is missing, this code
          # may explain why.
          detailed_status: nil,
          # The method used to read the track's audio data.
          input_process: nil,
          # The platform used to read the track's audio data.
          platform: nil,
          # The return code of the analyzer process. 0 if successful, 1 if any errors
          # occurred.
          status_code: nil,
          # The Unix timestamp (in seconds) at which this track was analyzed.
          timestamp: nil
        )
        end

        sig do
          override.returns(
            {
              analysis_time: Float,
              analyzer_version: String,
              detailed_status: String,
              input_process: String,
              platform: String,
              status_code: Integer,
              timestamp: Integer
            }
          )
        end
        def to_hash
        end
      end

      class Section < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::AudioAnalysisRetrieveResponse::Section,
              Spotted::Internal::AnyHash
            )
          end

        # The confidence, from 0.0 to 1.0, of the reliability of the section's
        # "designation".
        sig { returns(T.nilable(Float)) }
        attr_reader :confidence

        sig { params(confidence: Float).void }
        attr_writer :confidence

        # The duration (in seconds) of the section.
        sig { returns(T.nilable(Float)) }
        attr_reader :duration

        sig { params(duration: Float).void }
        attr_writer :duration

        # The estimated overall key of the section. The values in this field ranging from
        # 0 to 11 mapping to pitches using standard Pitch Class notation (E.g. 0 = C, 1 =
        # C♯/D♭, 2 = D, and so on). If no key was detected, the value is -1.
        sig { returns(T.nilable(Integer)) }
        attr_reader :key

        sig { params(key: Integer).void }
        attr_writer :key

        # The confidence, from 0.0 to 1.0, of the reliability of the key. Songs with many
        # key changes may correspond to low values in this field.
        sig { returns(T.nilable(Float)) }
        attr_reader :key_confidence

        sig { params(key_confidence: Float).void }
        attr_writer :key_confidence

        # The overall loudness of the section in decibels (dB). Loudness values are useful
        # for comparing relative loudness of sections within tracks.
        sig { returns(T.nilable(Float)) }
        attr_reader :loudness

        sig { params(loudness: Float).void }
        attr_writer :loudness

        # Indicates the modality (major or minor) of a section, the type of scale from
        # which its melodic content is derived. This field will contain a 0 for "minor", a
        # 1 for "major", or a -1 for no result. Note that the major key (e.g. C major)
        # could more likely be confused with the minor key at 3 semitones lower (e.g. A
        # minor) as both keys carry the same pitches.
        sig do
          returns(
            T.nilable(
              Spotted::Models::AudioAnalysisRetrieveResponse::Section::Mode::TaggedFloat
            )
          )
        end
        attr_reader :mode

        sig do
          params(
            mode:
              Spotted::Models::AudioAnalysisRetrieveResponse::Section::Mode::OrFloat
          ).void
        end
        attr_writer :mode

        # The confidence, from 0.0 to 1.0, of the reliability of the `mode`.
        sig { returns(T.nilable(Float)) }
        attr_reader :mode_confidence

        sig { params(mode_confidence: Float).void }
        attr_writer :mode_confidence

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        # The starting point (in seconds) of the section.
        sig { returns(T.nilable(Float)) }
        attr_reader :start

        sig { params(start: Float).void }
        attr_writer :start

        # The overall estimated tempo of the section in beats per minute (BPM). In musical
        # terminology, tempo is the speed or pace of a given piece and derives directly
        # from the average beat duration.
        sig { returns(T.nilable(Float)) }
        attr_reader :tempo

        sig { params(tempo: Float).void }
        attr_writer :tempo

        # The confidence, from 0.0 to 1.0, of the reliability of the tempo. Some tracks
        # contain tempo changes or sounds which don't contain tempo (like pure speech)
        # which would correspond to a low value in this field.
        sig { returns(T.nilable(Float)) }
        attr_reader :tempo_confidence

        sig { params(tempo_confidence: Float).void }
        attr_writer :tempo_confidence

        # An estimated time signature. The time signature (meter) is a notational
        # convention to specify how many beats are in each bar (or measure). The time
        # signature ranges from 3 to 7 indicating time signatures of "3/4", to "7/4".
        sig { returns(T.nilable(Integer)) }
        attr_reader :time_signature

        sig { params(time_signature: Integer).void }
        attr_writer :time_signature

        # The confidence, from 0.0 to 1.0, of the reliability of the `time_signature`.
        # Sections with time signature changes may correspond to low values in this field.
        sig { returns(T.nilable(Float)) }
        attr_reader :time_signature_confidence

        sig { params(time_signature_confidence: Float).void }
        attr_writer :time_signature_confidence

        sig do
          params(
            confidence: Float,
            duration: Float,
            key: Integer,
            key_confidence: Float,
            loudness: Float,
            mode:
              Spotted::Models::AudioAnalysisRetrieveResponse::Section::Mode::OrFloat,
            mode_confidence: Float,
            published: T::Boolean,
            start: Float,
            tempo: Float,
            tempo_confidence: Float,
            time_signature: Integer,
            time_signature_confidence: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The confidence, from 0.0 to 1.0, of the reliability of the section's
          # "designation".
          confidence: nil,
          # The duration (in seconds) of the section.
          duration: nil,
          # The estimated overall key of the section. The values in this field ranging from
          # 0 to 11 mapping to pitches using standard Pitch Class notation (E.g. 0 = C, 1 =
          # C♯/D♭, 2 = D, and so on). If no key was detected, the value is -1.
          key: nil,
          # The confidence, from 0.0 to 1.0, of the reliability of the key. Songs with many
          # key changes may correspond to low values in this field.
          key_confidence: nil,
          # The overall loudness of the section in decibels (dB). Loudness values are useful
          # for comparing relative loudness of sections within tracks.
          loudness: nil,
          # Indicates the modality (major or minor) of a section, the type of scale from
          # which its melodic content is derived. This field will contain a 0 for "minor", a
          # 1 for "major", or a -1 for no result. Note that the major key (e.g. C major)
          # could more likely be confused with the minor key at 3 semitones lower (e.g. A
          # minor) as both keys carry the same pitches.
          mode: nil,
          # The confidence, from 0.0 to 1.0, of the reliability of the `mode`.
          mode_confidence: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # The starting point (in seconds) of the section.
          start: nil,
          # The overall estimated tempo of the section in beats per minute (BPM). In musical
          # terminology, tempo is the speed or pace of a given piece and derives directly
          # from the average beat duration.
          tempo: nil,
          # The confidence, from 0.0 to 1.0, of the reliability of the tempo. Some tracks
          # contain tempo changes or sounds which don't contain tempo (like pure speech)
          # which would correspond to a low value in this field.
          tempo_confidence: nil,
          # An estimated time signature. The time signature (meter) is a notational
          # convention to specify how many beats are in each bar (or measure). The time
          # signature ranges from 3 to 7 indicating time signatures of "3/4", to "7/4".
          time_signature: nil,
          # The confidence, from 0.0 to 1.0, of the reliability of the `time_signature`.
          # Sections with time signature changes may correspond to low values in this field.
          time_signature_confidence: nil
        )
        end

        sig do
          override.returns(
            {
              confidence: Float,
              duration: Float,
              key: Integer,
              key_confidence: Float,
              loudness: Float,
              mode:
                Spotted::Models::AudioAnalysisRetrieveResponse::Section::Mode::TaggedFloat,
              mode_confidence: Float,
              published: T::Boolean,
              start: Float,
              tempo: Float,
              tempo_confidence: Float,
              time_signature: Integer,
              time_signature_confidence: Float
            }
          )
        end
        def to_hash
        end

        # Indicates the modality (major or minor) of a section, the type of scale from
        # which its melodic content is derived. This field will contain a 0 for "minor", a
        # 1 for "major", or a -1 for no result. Note that the major key (e.g. C major)
        # could more likely be confused with the minor key at 3 semitones lower (e.g. A
        # minor) as both keys carry the same pitches.
        module Mode
          extend Spotted::Internal::Type::Enum

          TaggedFloat =
            T.type_alias do
              T.all(
                Float,
                Spotted::Models::AudioAnalysisRetrieveResponse::Section::Mode
              )
            end
          OrFloat = T.type_alias { Float }

          MODE_NO_RESULT =
            T.let(
              -1,
              Spotted::Models::AudioAnalysisRetrieveResponse::Section::Mode::TaggedFloat
            )
          MODE_MINOR =
            T.let(
              0,
              Spotted::Models::AudioAnalysisRetrieveResponse::Section::Mode::TaggedFloat
            )
          MODE_MAJOR =
            T.let(
              1,
              Spotted::Models::AudioAnalysisRetrieveResponse::Section::Mode::TaggedFloat
            )

          sig do
            override.returns(
              T::Array[
                Spotted::Models::AudioAnalysisRetrieveResponse::Section::Mode::TaggedFloat
              ]
            )
          end
          def self.values
          end
        end
      end

      class Segment < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::AudioAnalysisRetrieveResponse::Segment,
              Spotted::Internal::AnyHash
            )
          end

        # The confidence, from 0.0 to 1.0, of the reliability of the segmentation.
        # Segments of the song which are difficult to logically segment (e.g: noise) may
        # correspond to low values in this field.
        sig { returns(T.nilable(Float)) }
        attr_reader :confidence

        sig { params(confidence: Float).void }
        attr_writer :confidence

        # The duration (in seconds) of the segment.
        sig { returns(T.nilable(Float)) }
        attr_reader :duration

        sig { params(duration: Float).void }
        attr_writer :duration

        # The offset loudness of the segment in decibels (dB). This value should be
        # equivalent to the loudness_start of the following segment.
        sig { returns(T.nilable(Float)) }
        attr_reader :loudness_end

        sig { params(loudness_end: Float).void }
        attr_writer :loudness_end

        # The peak loudness of the segment in decibels (dB). Combined with
        # `loudness_start` and `loudness_max_time`, these components can be used to
        # describe the "attack" of the segment.
        sig { returns(T.nilable(Float)) }
        attr_reader :loudness_max

        sig { params(loudness_max: Float).void }
        attr_writer :loudness_max

        # The segment-relative offset of the segment peak loudness in seconds. Combined
        # with `loudness_start` and `loudness_max`, these components can be used to
        # desctibe the "attack" of the segment.
        sig { returns(T.nilable(Float)) }
        attr_reader :loudness_max_time

        sig { params(loudness_max_time: Float).void }
        attr_writer :loudness_max_time

        # The onset loudness of the segment in decibels (dB). Combined with `loudness_max`
        # and `loudness_max_time`, these components can be used to describe the "attack"
        # of the segment.
        sig { returns(T.nilable(Float)) }
        attr_reader :loudness_start

        sig { params(loudness_start: Float).void }
        attr_writer :loudness_start

        # Pitch content is given by a “chroma” vector, corresponding to the 12 pitch
        # classes C, C#, D to B, with values ranging from 0 to 1 that describe the
        # relative dominance of every pitch in the chromatic scale. For example a C Major
        # chord would likely be represented by large values of C, E and G (i.e. classes 0,
        # 4, and 7).
        #
        # Vectors are normalized to 1 by their strongest dimension, therefore noisy sounds
        # are likely represented by values that are all close to 1, while pure tones are
        # described by one value at 1 (the pitch) and others near 0. As can be seen below,
        # the 12 vector indices are a combination of low-power spectrum values at their
        # respective pitch frequencies. ![pitch vector](/assets/audio/Pitch_vector.png)
        sig { returns(T.nilable(T::Array[Float])) }
        attr_reader :pitches

        sig { params(pitches: T::Array[Float]).void }
        attr_writer :pitches

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        # The starting point (in seconds) of the segment.
        sig { returns(T.nilable(Float)) }
        attr_reader :start

        sig { params(start: Float).void }
        attr_writer :start

        # Timbre is the quality of a musical note or sound that distinguishes different
        # types of musical instruments, or voices. It is a complex notion also referred to
        # as sound color, texture, or tone quality, and is derived from the shape of a
        # segment’s spectro-temporal surface, independently of pitch and loudness. The
        # timbre feature is a vector that includes 12 unbounded values roughly centered
        # around 0. Those values are high level abstractions of the spectral surface,
        # ordered by degree of importance.
        #
        # For completeness however, the first dimension represents the average loudness of
        # the segment; second emphasizes brightness; third is more closely correlated to
        # the flatness of a sound; fourth to sounds with a stronger attack; etc. See an
        # image below representing the 12 basis functions (i.e. template segments).
        # ![timbre basis functions](/assets/audio/Timbre_basis_functions.png)
        #
        # The actual timbre of the segment is best described as a linear combination of
        # these 12 basis functions weighted by the coefficient values: timbre = c1 x b1 +
        # c2 x b2 + ... + c12 x b12, where c1 to c12 represent the 12 coefficients and b1
        # to b12 the 12 basis functions as displayed below. Timbre vectors are best used
        # in comparison with each other.
        sig { returns(T.nilable(T::Array[Float])) }
        attr_reader :timbre

        sig { params(timbre: T::Array[Float]).void }
        attr_writer :timbre

        sig do
          params(
            confidence: Float,
            duration: Float,
            loudness_end: Float,
            loudness_max: Float,
            loudness_max_time: Float,
            loudness_start: Float,
            pitches: T::Array[Float],
            published: T::Boolean,
            start: Float,
            timbre: T::Array[Float]
          ).returns(T.attached_class)
        end
        def self.new(
          # The confidence, from 0.0 to 1.0, of the reliability of the segmentation.
          # Segments of the song which are difficult to logically segment (e.g: noise) may
          # correspond to low values in this field.
          confidence: nil,
          # The duration (in seconds) of the segment.
          duration: nil,
          # The offset loudness of the segment in decibels (dB). This value should be
          # equivalent to the loudness_start of the following segment.
          loudness_end: nil,
          # The peak loudness of the segment in decibels (dB). Combined with
          # `loudness_start` and `loudness_max_time`, these components can be used to
          # describe the "attack" of the segment.
          loudness_max: nil,
          # The segment-relative offset of the segment peak loudness in seconds. Combined
          # with `loudness_start` and `loudness_max`, these components can be used to
          # desctibe the "attack" of the segment.
          loudness_max_time: nil,
          # The onset loudness of the segment in decibels (dB). Combined with `loudness_max`
          # and `loudness_max_time`, these components can be used to describe the "attack"
          # of the segment.
          loudness_start: nil,
          # Pitch content is given by a “chroma” vector, corresponding to the 12 pitch
          # classes C, C#, D to B, with values ranging from 0 to 1 that describe the
          # relative dominance of every pitch in the chromatic scale. For example a C Major
          # chord would likely be represented by large values of C, E and G (i.e. classes 0,
          # 4, and 7).
          #
          # Vectors are normalized to 1 by their strongest dimension, therefore noisy sounds
          # are likely represented by values that are all close to 1, while pure tones are
          # described by one value at 1 (the pitch) and others near 0. As can be seen below,
          # the 12 vector indices are a combination of low-power spectrum values at their
          # respective pitch frequencies. ![pitch vector](/assets/audio/Pitch_vector.png)
          pitches: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # The starting point (in seconds) of the segment.
          start: nil,
          # Timbre is the quality of a musical note or sound that distinguishes different
          # types of musical instruments, or voices. It is a complex notion also referred to
          # as sound color, texture, or tone quality, and is derived from the shape of a
          # segment’s spectro-temporal surface, independently of pitch and loudness. The
          # timbre feature is a vector that includes 12 unbounded values roughly centered
          # around 0. Those values are high level abstractions of the spectral surface,
          # ordered by degree of importance.
          #
          # For completeness however, the first dimension represents the average loudness of
          # the segment; second emphasizes brightness; third is more closely correlated to
          # the flatness of a sound; fourth to sounds with a stronger attack; etc. See an
          # image below representing the 12 basis functions (i.e. template segments).
          # ![timbre basis functions](/assets/audio/Timbre_basis_functions.png)
          #
          # The actual timbre of the segment is best described as a linear combination of
          # these 12 basis functions weighted by the coefficient values: timbre = c1 x b1 +
          # c2 x b2 + ... + c12 x b12, where c1 to c12 represent the 12 coefficients and b1
          # to b12 the 12 basis functions as displayed below. Timbre vectors are best used
          # in comparison with each other.
          timbre: nil
        )
        end

        sig do
          override.returns(
            {
              confidence: Float,
              duration: Float,
              loudness_end: Float,
              loudness_max: Float,
              loudness_max_time: Float,
              loudness_start: Float,
              pitches: T::Array[Float],
              published: T::Boolean,
              start: Float,
              timbre: T::Array[Float]
            }
          )
        end
        def to_hash
        end
      end

      class Track < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::AudioAnalysisRetrieveResponse::Track,
              Spotted::Internal::AnyHash
            )
          end

        # The number of channels used for analysis. If 1, all channels are summed together
        # to mono before analysis.
        sig { returns(T.nilable(Integer)) }
        attr_reader :analysis_channels

        sig { params(analysis_channels: Integer).void }
        attr_writer :analysis_channels

        # The sample rate used to decode and analyze this track. May differ from the
        # actual sample rate of this track available on Spotify.
        sig { returns(T.nilable(Integer)) }
        attr_reader :analysis_sample_rate

        sig { params(analysis_sample_rate: Integer).void }
        attr_writer :analysis_sample_rate

        # A version number for the Echo Nest Musical Fingerprint format used in the
        # codestring field.
        sig { returns(T.nilable(Float)) }
        attr_reader :code_version

        sig { params(code_version: Float).void }
        attr_writer :code_version

        # An
        # [Echo Nest Musical Fingerprint (ENMFP)](https://academiccommons.columbia.edu/doi/10.7916/D8Q248M4)
        # codestring for this track.
        sig { returns(T.nilable(String)) }
        attr_reader :codestring

        sig { params(codestring: String).void }
        attr_writer :codestring

        # Length of the track in seconds.
        sig { returns(T.nilable(Float)) }
        attr_reader :duration

        sig { params(duration: Float).void }
        attr_writer :duration

        # A version number for the EchoPrint format used in the echoprintstring field.
        sig { returns(T.nilable(Float)) }
        attr_reader :echoprint_version

        sig { params(echoprint_version: Float).void }
        attr_writer :echoprint_version

        # An [EchoPrint](https://github.com/spotify/echoprint-codegen) codestring for this
        # track.
        sig { returns(T.nilable(String)) }
        attr_reader :echoprintstring

        sig { params(echoprintstring: String).void }
        attr_writer :echoprintstring

        # The time, in seconds, at which the track's fade-in period ends. If the track has
        # no fade-in, this will be 0.0.
        sig { returns(T.nilable(Float)) }
        attr_reader :end_of_fade_in

        sig { params(end_of_fade_in: Float).void }
        attr_writer :end_of_fade_in

        # The key the track is in. Integers map to pitches using standard
        # [Pitch Class notation](https://en.wikipedia.org/wiki/Pitch_class). E.g. 0 = C, 1
        # = C♯/D♭, 2 = D, and so on. If no key was detected, the value is -1.
        sig { returns(T.nilable(Integer)) }
        attr_reader :key

        sig { params(key: Integer).void }
        attr_writer :key

        # The confidence, from 0.0 to 1.0, of the reliability of the `key`.
        sig { returns(T.nilable(Float)) }
        attr_reader :key_confidence

        sig { params(key_confidence: Float).void }
        attr_writer :key_confidence

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

        # The confidence, from 0.0 to 1.0, of the reliability of the `mode`.
        sig { returns(T.nilable(Float)) }
        attr_reader :mode_confidence

        sig { params(mode_confidence: Float).void }
        attr_writer :mode_confidence

        # The exact number of audio samples analyzed from this track. See also
        # `analysis_sample_rate`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_samples

        sig { params(num_samples: Integer).void }
        attr_writer :num_samples

        # An offset to the start of the region of the track that was analyzed. (As the
        # entire track is analyzed, this should always be 0.)
        sig { returns(T.nilable(Integer)) }
        attr_reader :offset_seconds

        sig { params(offset_seconds: Integer).void }
        attr_writer :offset_seconds

        # A version number for the Rhythmstring used in the rhythmstring field.
        sig { returns(T.nilable(Float)) }
        attr_reader :rhythm_version

        sig { params(rhythm_version: Float).void }
        attr_writer :rhythm_version

        # A Rhythmstring for this track. The format of this string is similar to the
        # Synchstring.
        sig { returns(T.nilable(String)) }
        attr_reader :rhythmstring

        sig { params(rhythmstring: String).void }
        attr_writer :rhythmstring

        # This field will always contain the empty string.
        sig { returns(T.nilable(String)) }
        attr_reader :sample_md5

        sig { params(sample_md5: String).void }
        attr_writer :sample_md5

        # The time, in seconds, at which the track's fade-out period starts. If the track
        # has no fade-out, this should match the track's length.
        sig { returns(T.nilable(Float)) }
        attr_reader :start_of_fade_out

        sig { params(start_of_fade_out: Float).void }
        attr_writer :start_of_fade_out

        # A version number for the Synchstring used in the synchstring field.
        sig { returns(T.nilable(Float)) }
        attr_reader :synch_version

        sig { params(synch_version: Float).void }
        attr_writer :synch_version

        # A [Synchstring](https://github.com/echonest/synchdata) for this track.
        sig { returns(T.nilable(String)) }
        attr_reader :synchstring

        sig { params(synchstring: String).void }
        attr_writer :synchstring

        # The overall estimated tempo of a track in beats per minute (BPM). In musical
        # terminology, tempo is the speed or pace of a given piece and derives directly
        # from the average beat duration.
        sig { returns(T.nilable(Float)) }
        attr_reader :tempo

        sig { params(tempo: Float).void }
        attr_writer :tempo

        # The confidence, from 0.0 to 1.0, of the reliability of the `tempo`.
        sig { returns(T.nilable(Float)) }
        attr_reader :tempo_confidence

        sig { params(tempo_confidence: Float).void }
        attr_writer :tempo_confidence

        # An estimated time signature. The time signature (meter) is a notational
        # convention to specify how many beats are in each bar (or measure). The time
        # signature ranges from 3 to 7 indicating time signatures of "3/4", to "7/4".
        sig { returns(T.nilable(Integer)) }
        attr_reader :time_signature

        sig { params(time_signature: Integer).void }
        attr_writer :time_signature

        # The confidence, from 0.0 to 1.0, of the reliability of the `time_signature`.
        sig { returns(T.nilable(Float)) }
        attr_reader :time_signature_confidence

        sig { params(time_signature_confidence: Float).void }
        attr_writer :time_signature_confidence

        # The length of the region of the track was analyzed, if a subset of the track was
        # analyzed. (As the entire track is analyzed, this should always be 0.)
        sig { returns(T.nilable(Integer)) }
        attr_reader :window_seconds

        sig { params(window_seconds: Integer).void }
        attr_writer :window_seconds

        sig do
          params(
            analysis_channels: Integer,
            analysis_sample_rate: Integer,
            code_version: Float,
            codestring: String,
            duration: Float,
            echoprint_version: Float,
            echoprintstring: String,
            end_of_fade_in: Float,
            key: Integer,
            key_confidence: Float,
            loudness: Float,
            mode: Integer,
            mode_confidence: Float,
            num_samples: Integer,
            offset_seconds: Integer,
            rhythm_version: Float,
            rhythmstring: String,
            sample_md5: String,
            start_of_fade_out: Float,
            synch_version: Float,
            synchstring: String,
            tempo: Float,
            tempo_confidence: Float,
            time_signature: Integer,
            time_signature_confidence: Float,
            window_seconds: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The number of channels used for analysis. If 1, all channels are summed together
          # to mono before analysis.
          analysis_channels: nil,
          # The sample rate used to decode and analyze this track. May differ from the
          # actual sample rate of this track available on Spotify.
          analysis_sample_rate: nil,
          # A version number for the Echo Nest Musical Fingerprint format used in the
          # codestring field.
          code_version: nil,
          # An
          # [Echo Nest Musical Fingerprint (ENMFP)](https://academiccommons.columbia.edu/doi/10.7916/D8Q248M4)
          # codestring for this track.
          codestring: nil,
          # Length of the track in seconds.
          duration: nil,
          # A version number for the EchoPrint format used in the echoprintstring field.
          echoprint_version: nil,
          # An [EchoPrint](https://github.com/spotify/echoprint-codegen) codestring for this
          # track.
          echoprintstring: nil,
          # The time, in seconds, at which the track's fade-in period ends. If the track has
          # no fade-in, this will be 0.0.
          end_of_fade_in: nil,
          # The key the track is in. Integers map to pitches using standard
          # [Pitch Class notation](https://en.wikipedia.org/wiki/Pitch_class). E.g. 0 = C, 1
          # = C♯/D♭, 2 = D, and so on. If no key was detected, the value is -1.
          key: nil,
          # The confidence, from 0.0 to 1.0, of the reliability of the `key`.
          key_confidence: nil,
          # The overall loudness of a track in decibels (dB). Loudness values are averaged
          # across the entire track and are useful for comparing relative loudness of
          # tracks. Loudness is the quality of a sound that is the primary psychological
          # correlate of physical strength (amplitude). Values typically range between -60
          # and 0 db.
          loudness: nil,
          # Mode indicates the modality (major or minor) of a track, the type of scale from
          # which its melodic content is derived. Major is represented by 1 and minor is 0.
          mode: nil,
          # The confidence, from 0.0 to 1.0, of the reliability of the `mode`.
          mode_confidence: nil,
          # The exact number of audio samples analyzed from this track. See also
          # `analysis_sample_rate`.
          num_samples: nil,
          # An offset to the start of the region of the track that was analyzed. (As the
          # entire track is analyzed, this should always be 0.)
          offset_seconds: nil,
          # A version number for the Rhythmstring used in the rhythmstring field.
          rhythm_version: nil,
          # A Rhythmstring for this track. The format of this string is similar to the
          # Synchstring.
          rhythmstring: nil,
          # This field will always contain the empty string.
          sample_md5: nil,
          # The time, in seconds, at which the track's fade-out period starts. If the track
          # has no fade-out, this should match the track's length.
          start_of_fade_out: nil,
          # A version number for the Synchstring used in the synchstring field.
          synch_version: nil,
          # A [Synchstring](https://github.com/echonest/synchdata) for this track.
          synchstring: nil,
          # The overall estimated tempo of a track in beats per minute (BPM). In musical
          # terminology, tempo is the speed or pace of a given piece and derives directly
          # from the average beat duration.
          tempo: nil,
          # The confidence, from 0.0 to 1.0, of the reliability of the `tempo`.
          tempo_confidence: nil,
          # An estimated time signature. The time signature (meter) is a notational
          # convention to specify how many beats are in each bar (or measure). The time
          # signature ranges from 3 to 7 indicating time signatures of "3/4", to "7/4".
          time_signature: nil,
          # The confidence, from 0.0 to 1.0, of the reliability of the `time_signature`.
          time_signature_confidence: nil,
          # The length of the region of the track was analyzed, if a subset of the track was
          # analyzed. (As the entire track is analyzed, this should always be 0.)
          window_seconds: nil
        )
        end

        sig do
          override.returns(
            {
              analysis_channels: Integer,
              analysis_sample_rate: Integer,
              code_version: Float,
              codestring: String,
              duration: Float,
              echoprint_version: Float,
              echoprintstring: String,
              end_of_fade_in: Float,
              key: Integer,
              key_confidence: Float,
              loudness: Float,
              mode: Integer,
              mode_confidence: Float,
              num_samples: Integer,
              offset_seconds: Integer,
              rhythm_version: Float,
              rhythmstring: String,
              sample_md5: String,
              start_of_fade_out: Float,
              synch_version: Float,
              synchstring: String,
              tempo: Float,
              tempo_confidence: Float,
              time_signature: Integer,
              time_signature_confidence: Float,
              window_seconds: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
