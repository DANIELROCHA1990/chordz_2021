class KeyChord
    CHROMATIC = %w[C Cm C° C#/Db C#m/Dbm C#°/Db° D Dm D° D#/Eb D#m/Ebm D#°/Eb°
        E Em E° F Fm F° F#/Gb F#m/Gbm F#°/Gb° G Gm G° G#/Ab G#m/Abm
        G#°/Ab° A Am A° A#/Bb A#m/Bbm A#°/Bb° B Bm B°].freeze
    CHROMATIC_PAIR = { "C#" => "C#/Db", "D#" => "D#/Eb", "F#" => "F#/Gb", "A#" => "A#/Bb",
                       "Db" => "C#/Db", "Eb" => "D#/Eb", "Gb" => "F#/Gb", "Bb" => "A#/Bb"}
  
    def self.index_of_mode(note)
      CHROMATIC.index(note) || CHROMATIC.index(CHROMATIC_PAIR[note])
    end
  end