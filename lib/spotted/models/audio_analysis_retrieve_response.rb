# frozen_string_literal: true

module Spotted
  module Models
    # @see Spotted::Resources::AudioAnalysis#retrieve
    class AudioAnalysisRetrieveResponse < Spotted::Internal::Type::BaseModel
      # @!attribute bars
      #   The time intervals of the bars throughout the track. A bar (or measure) is a
      #   segment of time defined as a given number of beats.
      #
      #   @return [Array<Spotted::Models::TimeIntervalObject>, nil]
      optional :bars, -> { Spotted::Internal::Type::ArrayOf[Spotted::TimeIntervalObject] }

      # @!attribute beats
      #   The time intervals of beats throughout the track. A beat is the basic time unit
      #   of a piece of music; for example, each tick of a metronome. Beats are typically
      #   multiples of tatums.
      #
      #   @return [Array<Spotted::Models::TimeIntervalObject>, nil]
      optional :beats, -> { Spotted::Internal::Type::ArrayOf[Spotted::TimeIntervalObject] }

      # @!attribute meta
      #
      #   @return [Spotted::Models::AudioAnalysisRetrieveResponse::Meta, nil]
      optional :meta, -> { Spotted::Models::AudioAnalysisRetrieveResponse::Meta }

      # @!attribute sections
      #   Sections are defined by large variations in rhythm or timbre, e.g. chorus,
      #   verse, bridge, guitar solo, etc. Each section contains its own descriptions of
      #   tempo, key, mode, time_signature, and loudness.
      #
      #   @return [Array<Spotted::Models::AudioAnalysisRetrieveResponse::Section>, nil]
      optional :sections,
               -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::AudioAnalysisRetrieveResponse::Section] }

      # @!attribute segments
      #   Each segment contains a roughly conisistent sound throughout its duration.
      #
      #   @return [Array<Spotted::Models::AudioAnalysisRetrieveResponse::Segment>, nil]
      optional :segments,
               -> { Spotted::Internal::Type::ArrayOf[Spotted::Models::AudioAnalysisRetrieveResponse::Segment] }

      # @!attribute tatums
      #   A tatum represents the lowest regular pulse train that a listener intuitively
      #   infers from the timing of perceived musical events (segments).
      #
      #   @return [Array<Spotted::Models::TimeIntervalObject>, nil]
      optional :tatums, -> { Spotted::Internal::Type::ArrayOf[Spotted::TimeIntervalObject] }

      # @!attribute track
      #
      #   @return [Spotted::Models::AudioAnalysisRetrieveResponse::Track, nil]
      optional :track, -> { Spotted::Models::AudioAnalysisRetrieveResponse::Track }

      # @!method initialize(bars: nil, beats: nil, meta: nil, sections: nil, segments: nil, tatums: nil, track: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::AudioAnalysisRetrieveResponse} for more details.
      #
      #   @param bars [Array<Spotted::Models::TimeIntervalObject>] The time intervals of the bars throughout the track. A bar (or measure) is a seg
      #
      #   @param beats [Array<Spotted::Models::TimeIntervalObject>] The time intervals of beats throughout the track. A beat is the basic time unit
      #
      #   @param meta [Spotted::Models::AudioAnalysisRetrieveResponse::Meta]
      #
      #   @param sections [Array<Spotted::Models::AudioAnalysisRetrieveResponse::Section>] Sections are defined by large variations in rhythm or timbre, e.g. chorus, verse
      #
      #   @param segments [Array<Spotted::Models::AudioAnalysisRetrieveResponse::Segment>] Each segment contains a roughly conisistent sound throughout its duration.
      #
      #   @param tatums [Array<Spotted::Models::TimeIntervalObject>] A tatum represents the lowest regular pulse train that a listener intuitively in
      #
      #   @param track [Spotted::Models::AudioAnalysisRetrieveResponse::Track]

      # @see Spotted::Models::AudioAnalysisRetrieveResponse#meta
      class Meta < Spotted::Internal::Type::BaseModel
        # @!attribute analysis_time
        #   The amount of time taken to analyze this track.
        #
        #   @return [Float, nil]
        optional :analysis_time, Float

        # @!attribute analyzer_version
        #   The version of the Analyzer used to analyze this track.
        #
        #   @return [String, nil]
        optional :analyzer_version, String

        # @!attribute detailed_status
        #   A detailed status code for this track. If analysis data is missing, this code
        #   may explain why.
        #
        #   @return [String, nil]
        optional :detailed_status, String

        # @!attribute input_process
        #   The method used to read the track's audio data.
        #
        #   @return [String, nil]
        optional :input_process, String

        # @!attribute platform
        #   The platform used to read the track's audio data.
        #
        #   @return [String, nil]
        optional :platform, String

        # @!attribute status_code
        #   The return code of the analyzer process. 0 if successful, 1 if any errors
        #   occurred.
        #
        #   @return [Integer, nil]
        optional :status_code, Integer

        # @!attribute timestamp
        #   The Unix timestamp (in seconds) at which this track was analyzed.
        #
        #   @return [Integer, nil]
        optional :timestamp, Integer

        # @!method initialize(analysis_time: nil, analyzer_version: nil, detailed_status: nil, input_process: nil, platform: nil, status_code: nil, timestamp: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::AudioAnalysisRetrieveResponse::Meta} for more details.
        #
        #   @param analysis_time [Float] The amount of time taken to analyze this track.
        #
        #   @param analyzer_version [String] The version of the Analyzer used to analyze this track.
        #
        #   @param detailed_status [String] A detailed status code for this track. If analysis data is missing, this code ma
        #
        #   @param input_process [String] The method used to read the track's audio data.
        #
        #   @param platform [String] The platform used to read the track's audio data.
        #
        #   @param status_code [Integer] The return code of the analyzer process. 0 if successful, 1 if any errors occurr
        #
        #   @param timestamp [Integer] The Unix timestamp (in seconds) at which this track was analyzed.
      end

      class Section < Spotted::Internal::Type::BaseModel
        # @!attribute confidence
        #   The confidence, from 0.0 to 1.0, of the reliability of the section's
        #   "designation".
        #
        #   @return [Float, nil]
        optional :confidence, Float

        # @!attribute duration
        #   The duration (in seconds) of the section.
        #
        #   @return [Float, nil]
        optional :duration, Float

        # @!attribute key
        #   The estimated overall key of the section. The values in this field ranging from
        #   0 to 11 mapping to pitches using standard Pitch Class notation (E.g. 0 = C, 1 =
        #   C♯/D♭, 2 = D, and so on). If no key was detected, the value is -1.
        #
        #   @return [Integer, nil]
        optional :key, Integer

        # @!attribute key_confidence
        #   The confidence, from 0.0 to 1.0, of the reliability of the key. Songs with many
        #   key changes may correspond to low values in this field.
        #
        #   @return [Float, nil]
        optional :key_confidence, Float

        # @!attribute loudness
        #   The overall loudness of the section in decibels (dB). Loudness values are useful
        #   for comparing relative loudness of sections within tracks.
        #
        #   @return [Float, nil]
        optional :loudness, Float

        # @!attribute mode
        #   Indicates the modality (major or minor) of a section, the type of scale from
        #   which its melodic content is derived. This field will contain a 0 for "minor", a
        #   1 for "major", or a -1 for no result. Note that the major key (e.g. C major)
        #   could more likely be confused with the minor key at 3 semitones lower (e.g. A
        #   minor) as both keys carry the same pitches.
        #
        #   @return [Float, Spotted::Models::AudioAnalysisRetrieveResponse::Section::Mode, nil]
        optional :mode, enum: -> { Spotted::Models::AudioAnalysisRetrieveResponse::Section::Mode }

        # @!attribute mode_confidence
        #   The confidence, from 0.0 to 1.0, of the reliability of the `mode`.
        #
        #   @return [Float, nil]
        optional :mode_confidence, Float

        # @!attribute start
        #   The starting point (in seconds) of the section.
        #
        #   @return [Float, nil]
        optional :start, Float

        # @!attribute tempo
        #   The overall estimated tempo of the section in beats per minute (BPM). In musical
        #   terminology, tempo is the speed or pace of a given piece and derives directly
        #   from the average beat duration.
        #
        #   @return [Float, nil]
        optional :tempo, Float

        # @!attribute tempo_confidence
        #   The confidence, from 0.0 to 1.0, of the reliability of the tempo. Some tracks
        #   contain tempo changes or sounds which don't contain tempo (like pure speech)
        #   which would correspond to a low value in this field.
        #
        #   @return [Float, nil]
        optional :tempo_confidence, Float

        # @!attribute time_signature
        #   An estimated time signature. The time signature (meter) is a notational
        #   convention to specify how many beats are in each bar (or measure). The time
        #   signature ranges from 3 to 7 indicating time signatures of "3/4", to "7/4".
        #
        #   @return [Integer, nil]
        optional :time_signature, Integer

        # @!attribute time_signature_confidence
        #   The confidence, from 0.0 to 1.0, of the reliability of the `time_signature`.
        #   Sections with time signature changes may correspond to low values in this field.
        #
        #   @return [Float, nil]
        optional :time_signature_confidence, Float

        # @!method initialize(confidence: nil, duration: nil, key: nil, key_confidence: nil, loudness: nil, mode: nil, mode_confidence: nil, start: nil, tempo: nil, tempo_confidence: nil, time_signature: nil, time_signature_confidence: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::AudioAnalysisRetrieveResponse::Section} for more details.
        #
        #   @param confidence [Float] The confidence, from 0.0 to 1.0, of the reliability of the section's "designatio
        #
        #   @param duration [Float] The duration (in seconds) of the section.
        #
        #   @param key [Integer] The estimated overall key of the section. The values in this field ranging from
        #
        #   @param key_confidence [Float] The confidence, from 0.0 to 1.0, of the reliability of the key. Songs with many
        #
        #   @param loudness [Float] The overall loudness of the section in decibels (dB). Loudness values are useful
        #
        #   @param mode [Float, Spotted::Models::AudioAnalysisRetrieveResponse::Section::Mode] Indicates the modality (major or minor) of a section, the type of scale from whi
        #
        #   @param mode_confidence [Float] The confidence, from 0.0 to 1.0, of the reliability of the `mode`.
        #
        #   @param start [Float] The starting point (in seconds) of the section.
        #
        #   @param tempo [Float] The overall estimated tempo of the section in beats per minute (BPM). In musical
        #
        #   @param tempo_confidence [Float] The confidence, from 0.0 to 1.0, of the reliability of the tempo. Some tracks co
        #
        #   @param time_signature [Integer] An estimated time signature. The time signature (meter) is a notational conventi
        #
        #   @param time_signature_confidence [Float] The confidence, from 0.0 to 1.0, of the reliability of the `time_signature`. Sec

        # Indicates the modality (major or minor) of a section, the type of scale from
        # which its melodic content is derived. This field will contain a 0 for "minor", a
        # 1 for "major", or a -1 for no result. Note that the major key (e.g. C major)
        # could more likely be confused with the minor key at 3 semitones lower (e.g. A
        # minor) as both keys carry the same pitches.
        #
        # @see Spotted::Models::AudioAnalysisRetrieveResponse::Section#mode
        module Mode
          extend Spotted::Internal::Type::Enum

          # No result
          MINUS_1 = -1

          # Minor
          MODE_0 = 0

          # Major
          MODE_1 = 1

          # @!method self.values
          #   @return [Array<Float>]
        end
      end

      class Segment < Spotted::Internal::Type::BaseModel
        # @!attribute confidence
        #   The confidence, from 0.0 to 1.0, of the reliability of the segmentation.
        #   Segments of the song which are difficult to logically segment (e.g: noise) may
        #   correspond to low values in this field.
        #
        #   @return [Float, nil]
        optional :confidence, Float

        # @!attribute duration
        #   The duration (in seconds) of the segment.
        #
        #   @return [Float, nil]
        optional :duration, Float

        # @!attribute loudness_end
        #   The offset loudness of the segment in decibels (dB). This value should be
        #   equivalent to the loudness_start of the following segment.
        #
        #   @return [Float, nil]
        optional :loudness_end, Float

        # @!attribute loudness_max
        #   The peak loudness of the segment in decibels (dB). Combined with
        #   `loudness_start` and `loudness_max_time`, these components can be used to
        #   describe the "attack" of the segment.
        #
        #   @return [Float, nil]
        optional :loudness_max, Float

        # @!attribute loudness_max_time
        #   The segment-relative offset of the segment peak loudness in seconds. Combined
        #   with `loudness_start` and `loudness_max`, these components can be used to
        #   desctibe the "attack" of the segment.
        #
        #   @return [Float, nil]
        optional :loudness_max_time, Float

        # @!attribute loudness_start
        #   The onset loudness of the segment in decibels (dB). Combined with `loudness_max`
        #   and `loudness_max_time`, these components can be used to describe the "attack"
        #   of the segment.
        #
        #   @return [Float, nil]
        optional :loudness_start, Float

        # @!attribute pitches
        #   Pitch content is given by a “chroma” vector, corresponding to the 12 pitch
        #   classes C, C#, D to B, with values ranging from 0 to 1 that describe the
        #   relative dominance of every pitch in the chromatic scale. For example a C Major
        #   chord would likely be represented by large values of C, E and G (i.e. classes 0,
        #   4, and 7).
        #
        #   Vectors are normalized to 1 by their strongest dimension, therefore noisy sounds
        #   are likely represented by values that are all close to 1, while pure tones are
        #   described by one value at 1 (the pitch) and others near 0. As can be seen below,
        #   the 12 vector indices are a combination of low-power spectrum values at their
        #   respective pitch frequencies. ![pitch vector](/assets/audio/Pitch_vector.png)
        #
        #   @return [Array<Float>, nil]
        optional :pitches, Spotted::Internal::Type::ArrayOf[Float]

        # @!attribute start
        #   The starting point (in seconds) of the segment.
        #
        #   @return [Float, nil]
        optional :start, Float

        # @!attribute timbre
        #   Timbre is the quality of a musical note or sound that distinguishes different
        #   types of musical instruments, or voices. It is a complex notion also referred to
        #   as sound color, texture, or tone quality, and is derived from the shape of a
        #   segment’s spectro-temporal surface, independently of pitch and loudness. The
        #   timbre feature is a vector that includes 12 unbounded values roughly centered
        #   around 0. Those values are high level abstractions of the spectral surface,
        #   ordered by degree of importance.
        #
        #   For completeness however, the first dimension represents the average loudness of
        #   the segment; second emphasizes brightness; third is more closely correlated to
        #   the flatness of a sound; fourth to sounds with a stronger attack; etc. See an
        #   image below representing the 12 basis functions (i.e. template segments).
        #   ![timbre basis functions](/assets/audio/Timbre_basis_functions.png)
        #
        #   The actual timbre of the segment is best described as a linear combination of
        #   these 12 basis functions weighted by the coefficient values: timbre = c1 x b1 +
        #   c2 x b2 + ... + c12 x b12, where c1 to c12 represent the 12 coefficients and b1
        #   to b12 the 12 basis functions as displayed below. Timbre vectors are best used
        #   in comparison with each other.
        #
        #   @return [Array<Float>, nil]
        optional :timbre, Spotted::Internal::Type::ArrayOf[Float]

        # @!method initialize(confidence: nil, duration: nil, loudness_end: nil, loudness_max: nil, loudness_max_time: nil, loudness_start: nil, pitches: nil, start: nil, timbre: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::AudioAnalysisRetrieveResponse::Segment} for more details.
        #
        #   @param confidence [Float] The confidence, from 0.0 to 1.0, of the reliability of the segmentation. Segment
        #
        #   @param duration [Float] The duration (in seconds) of the segment.
        #
        #   @param loudness_end [Float] The offset loudness of the segment in decibels (dB). This value should be equiva
        #
        #   @param loudness_max [Float] The peak loudness of the segment in decibels (dB). Combined with `loudness_start
        #
        #   @param loudness_max_time [Float] The segment-relative offset of the segment peak loudness in seconds. Combined wi
        #
        #   @param loudness_start [Float] The onset loudness of the segment in decibels (dB). Combined with `loudness_max`
        #
        #   @param pitches [Array<Float>] Pitch content is given by a “chroma” vector, corresponding to the 12 pitch class
        #
        #   @param start [Float] The starting point (in seconds) of the segment.
        #
        #   @param timbre [Array<Float>] Timbre is the quality of a musical note or sound that distinguishes different ty
      end

      # @see Spotted::Models::AudioAnalysisRetrieveResponse#track
      class Track < Spotted::Internal::Type::BaseModel
        # @!attribute analysis_channels
        #   The number of channels used for analysis. If 1, all channels are summed together
        #   to mono before analysis.
        #
        #   @return [Integer, nil]
        optional :analysis_channels, Integer

        # @!attribute analysis_sample_rate
        #   The sample rate used to decode and analyze this track. May differ from the
        #   actual sample rate of this track available on Spotify.
        #
        #   @return [Integer, nil]
        optional :analysis_sample_rate, Integer

        # @!attribute code_version
        #   A version number for the Echo Nest Musical Fingerprint format used in the
        #   codestring field.
        #
        #   @return [Float, nil]
        optional :code_version, Float

        # @!attribute codestring
        #   An
        #   [Echo Nest Musical Fingerprint (ENMFP)](https://academiccommons.columbia.edu/doi/10.7916/D8Q248M4)
        #   codestring for this track.
        #
        #   @return [String, nil]
        optional :codestring, String

        # @!attribute duration
        #   Length of the track in seconds.
        #
        #   @return [Float, nil]
        optional :duration, Float

        # @!attribute echoprint_version
        #   A version number for the EchoPrint format used in the echoprintstring field.
        #
        #   @return [Float, nil]
        optional :echoprint_version, Float

        # @!attribute echoprintstring
        #   An [EchoPrint](https://github.com/spotify/echoprint-codegen) codestring for this
        #   track.
        #
        #   @return [String, nil]
        optional :echoprintstring, String

        # @!attribute end_of_fade_in
        #   The time, in seconds, at which the track's fade-in period ends. If the track has
        #   no fade-in, this will be 0.0.
        #
        #   @return [Float, nil]
        optional :end_of_fade_in, Float

        # @!attribute key
        #   The key the track is in. Integers map to pitches using standard
        #   [Pitch Class notation](https://en.wikipedia.org/wiki/Pitch_class). E.g. 0 = C, 1
        #   = C♯/D♭, 2 = D, and so on. If no key was detected, the value is -1.
        #
        #   @return [Integer, nil]
        optional :key, Integer

        # @!attribute key_confidence
        #   The confidence, from 0.0 to 1.0, of the reliability of the `key`.
        #
        #   @return [Float, nil]
        optional :key_confidence, Float

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

        # @!attribute mode_confidence
        #   The confidence, from 0.0 to 1.0, of the reliability of the `mode`.
        #
        #   @return [Float, nil]
        optional :mode_confidence, Float

        # @!attribute num_samples
        #   The exact number of audio samples analyzed from this track. See also
        #   `analysis_sample_rate`.
        #
        #   @return [Integer, nil]
        optional :num_samples, Integer

        # @!attribute offset_seconds
        #   An offset to the start of the region of the track that was analyzed. (As the
        #   entire track is analyzed, this should always be 0.)
        #
        #   @return [Integer, nil]
        optional :offset_seconds, Integer

        # @!attribute rhythm_version
        #   A version number for the Rhythmstring used in the rhythmstring field.
        #
        #   @return [Float, nil]
        optional :rhythm_version, Float

        # @!attribute rhythmstring
        #   A Rhythmstring for this track. The format of this string is similar to the
        #   Synchstring.
        #
        #   @return [String, nil]
        optional :rhythmstring, String

        # @!attribute sample_md5
        #   This field will always contain the empty string.
        #
        #   @return [String, nil]
        optional :sample_md5, String

        # @!attribute start_of_fade_out
        #   The time, in seconds, at which the track's fade-out period starts. If the track
        #   has no fade-out, this should match the track's length.
        #
        #   @return [Float, nil]
        optional :start_of_fade_out, Float

        # @!attribute synch_version
        #   A version number for the Synchstring used in the synchstring field.
        #
        #   @return [Float, nil]
        optional :synch_version, Float

        # @!attribute synchstring
        #   A [Synchstring](https://github.com/echonest/synchdata) for this track.
        #
        #   @return [String, nil]
        optional :synchstring, String

        # @!attribute tempo
        #   The overall estimated tempo of a track in beats per minute (BPM). In musical
        #   terminology, tempo is the speed or pace of a given piece and derives directly
        #   from the average beat duration.
        #
        #   @return [Float, nil]
        optional :tempo, Float

        # @!attribute tempo_confidence
        #   The confidence, from 0.0 to 1.0, of the reliability of the `tempo`.
        #
        #   @return [Float, nil]
        optional :tempo_confidence, Float

        # @!attribute time_signature
        #   An estimated time signature. The time signature (meter) is a notational
        #   convention to specify how many beats are in each bar (or measure). The time
        #   signature ranges from 3 to 7 indicating time signatures of "3/4", to "7/4".
        #
        #   @return [Integer, nil]
        optional :time_signature, Integer

        # @!attribute time_signature_confidence
        #   The confidence, from 0.0 to 1.0, of the reliability of the `time_signature`.
        #
        #   @return [Float, nil]
        optional :time_signature_confidence, Float

        # @!attribute window_seconds
        #   The length of the region of the track was analyzed, if a subset of the track was
        #   analyzed. (As the entire track is analyzed, this should always be 0.)
        #
        #   @return [Integer, nil]
        optional :window_seconds, Integer

        # @!method initialize(analysis_channels: nil, analysis_sample_rate: nil, code_version: nil, codestring: nil, duration: nil, echoprint_version: nil, echoprintstring: nil, end_of_fade_in: nil, key: nil, key_confidence: nil, loudness: nil, mode: nil, mode_confidence: nil, num_samples: nil, offset_seconds: nil, rhythm_version: nil, rhythmstring: nil, sample_md5: nil, start_of_fade_out: nil, synch_version: nil, synchstring: nil, tempo: nil, tempo_confidence: nil, time_signature: nil, time_signature_confidence: nil, window_seconds: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::AudioAnalysisRetrieveResponse::Track} for more details.
        #
        #   @param analysis_channels [Integer] The number of channels used for analysis. If 1, all channels are summed together
        #
        #   @param analysis_sample_rate [Integer] The sample rate used to decode and analyze this track. May differ from the actua
        #
        #   @param code_version [Float] A version number for the Echo Nest Musical Fingerprint format used in the codest
        #
        #   @param codestring [String] An [Echo Nest Musical Fingerprint (ENMFP)](https://academiccommons.columbia.edu/
        #
        #   @param duration [Float] Length of the track in seconds.
        #
        #   @param echoprint_version [Float] A version number for the EchoPrint format used in the echoprintstring field.
        #
        #   @param echoprintstring [String] An [EchoPrint](https://github.com/spotify/echoprint-codegen) codestring for this
        #
        #   @param end_of_fade_in [Float] The time, in seconds, at which the track's fade-in period ends. If the track has
        #
        #   @param key [Integer] The key the track is in. Integers map to pitches using standard [Pitch Class not
        #
        #   @param key_confidence [Float] The confidence, from 0.0 to 1.0, of the reliability of the `key`.
        #
        #   @param loudness [Float] The overall loudness of a track in decibels (dB). Loudness values are averaged a
        #
        #   @param mode [Integer] Mode indicates the modality (major or minor) of a track, the type of scale from
        #
        #   @param mode_confidence [Float] The confidence, from 0.0 to 1.0, of the reliability of the `mode`.
        #
        #   @param num_samples [Integer] The exact number of audio samples analyzed from this track. See also `analysis_s
        #
        #   @param offset_seconds [Integer] An offset to the start of the region of the track that was analyzed. (As the ent
        #
        #   @param rhythm_version [Float] A version number for the Rhythmstring used in the rhythmstring field.
        #
        #   @param rhythmstring [String] A Rhythmstring for this track. The format of this string is similar to the Synch
        #
        #   @param sample_md5 [String] This field will always contain the empty string.
        #
        #   @param start_of_fade_out [Float] The time, in seconds, at which the track's fade-out period starts. If the track
        #
        #   @param synch_version [Float] A version number for the Synchstring used in the synchstring field.
        #
        #   @param synchstring [String] A [Synchstring](https://github.com/echonest/synchdata) for this track.
        #
        #   @param tempo [Float] The overall estimated tempo of a track in beats per minute (BPM). In musical ter
        #
        #   @param tempo_confidence [Float] The confidence, from 0.0 to 1.0, of the reliability of the `tempo`.
        #
        #   @param time_signature [Integer] An estimated time signature. The time signature (meter) is a notational conventi
        #
        #   @param time_signature_confidence [Float] The confidence, from 0.0 to 1.0, of the reliability of the `time_signature`.
        #
        #   @param window_seconds [Integer] The length of the region of the track was analyzed, if a subset of the track was
      end
    end
  end
end
