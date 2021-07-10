class Scale
  CHROMATIC = %w[C C#/Db D D#/Eb E F F#/Gb G G#/Ab A A#/Bb B].freeze
  CHROMATIC_PAIR = { 'C#' => 'C#/Db', 'D#' => 'D#/Eb', 'F#' => 'F#/Gb', 'A#' => 'A#/Bb',
                     'Db' => 'C#/Db', 'Eb' => 'D#/Eb', 'Gb' => 'F#/Gb', 'Bb' => 'A#/Bb' }

  def self.index_of_mode(note)
    CHROMATIC.index(note) || CHROMATIC.index(CHROMATIC_PAIR[note])
  end

  def self.scale_maker_by_note(note_index, reseted_note_index)
    note_index <= (CHROMATIC.length - 1) ? CHROMATIC[note_index] : CHROMATIC[reseted_note_index]
  end
end
