module MakeOfChords
  class DiminishedTetradChordFormation < TetradScale
    DIMINISHED_TETRAD_CHORD_PATTERN = [0, 3, 6, 10].freeze # Tonica-terça menor-quinta menor

    def self.by_note(note)
      diminished_chord_index = index_of_mode(note)
      DIMINISHED_TETRAD_CHORD_PATTERN.map do |diminished_chord_interval| # Interação com a classe Chord
        diminished_chord_note_index = diminished_chord_index + diminished_chord_interval
        new_diminished_chord_note_index = diminished_chord_note_index - CHROMATIC.length
        scale_maker_by_note(diminished_chord_note_index, new_diminished_chord_note_index)
      end
    end
  end
end