module Notes
  class MinorTetradChordFormation < TetradScale
    MINOR_TETRAD_CHORD_PATTERN = [0, 3, 7, 11].freeze # Tonica-terca menor-quinta justa

    def self.by_note(note)
      minor_chord_index = index_of_mode(note)
      MINOR_TETRAD_CHORD_PATTERN.map do |minor_chord_interval| # Interacao com a classe Chord
        minor_chord_note_index = minor_chord_index + minor_chord_interval
        new_minor_chord_note_index = minor_chord_note_index - CHROMATIC.length
        scale_maker_by_note(minor_chord_index, new_minor_chord_note_index)
      end
    end
  end
end
