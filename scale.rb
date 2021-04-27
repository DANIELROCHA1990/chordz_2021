class Scale
  CHROMATIC = %w[C C#/Db D D#/Eb E F F#/Gb G G#/Ab A A#/Bb B].freeze
  CHROMATIC_PAIR = { "C#" => "C#/Db", "D#" => "D#/Eb", "F#" => "F#/Gb", "A#" => "A#/Bb",
                     "Db" => "C#/Db", "Eb" => "D#/Eb", "Gb" => "F#/Gb", "Bb" => "A#/Bb"}

  def self.index_of_mode(note)
    CHROMATIC.index(note) || CHROMATIC.index(CHROMATIC_PAIR[note])
  end
end