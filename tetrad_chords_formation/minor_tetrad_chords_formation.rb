module FormationOfChords
  class MinorTetradChordFormation < Scale
    MINOR_TETRAD_CHORD_PATTERN = [0, 3, 7, 11].freeze # Tonica-terça menor-quinta justa

    def self.by_note(note)
      minor_chord_index = index_of_mode(note)
      MINOR_TETRAD_CHORD_PATTERN.map do |minor_chord_interval| # Interação com a classe Chord
        minor_chord_note_index = minor_chord_index + minor_chord_interval
        if minor_chord_note_index <= (CHROMATIC.length - 1)
          CHROMATIC[minor_chord_note_index]
        else
          new_minor_chord_note_index = minor_chord_note_index - CHROMATIC.length
          CHROMATIC[new_minor_chord_note_index]
        end
      end
    end
  end
end