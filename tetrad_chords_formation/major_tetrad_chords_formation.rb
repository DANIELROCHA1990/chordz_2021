module Notes
  class MajorTetradChordFormation < TetradScale
    MAJOR_TETRAD_CHORD_PATTERN = [0, 4, 7, 11].freeze  # Tonica-terca maior-quinta justa

    def self.by_note(note)
      major_chord_index = index_of_mode(note)
      MAJOR_TETRAD_CHORD_PATTERN.map do |major_chord_interval| # Interacao com a classe Chord
        major_chord_note_index = major_chord_index + major_chord_interval
        new_major_chord_note_index = major_chord_note_index - CHROMATIC.length
        scale_maker_by_note(major_chord_note_index, new_major_chord_note_index)
      end
    end
  end
end
