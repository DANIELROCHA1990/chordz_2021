module FormationOfChords
  class DiminishedTetradChordFormation < Scale
    DIMINISHED_TETRAD_CHORD_PATTERN = [0, 3, 6, 10].freeze # Tonica-terça menor-quinta menor

    def self.by_note(note)
      diminished_chord_index = index_of_mode(note)
      DIMINISHED_TETRAD_CHORD_PATTERN.map do |diminished_chord_interval| # Interação com a classe Chord
        diminished_chord_note_index = diminished_chord_index + diminished_chord_interval
        if diminished_chord_note_index <= (CHROMATIC.length - 1)
          CHROMATIC[diminished_chord_note_index]
        else
          new_diminished_chord_note_index = diminished_chord_note_index - CHROMATIC.length
          CHROMATIC[new_diminished_chord_note_index]
        end
      end
    end
  end
end