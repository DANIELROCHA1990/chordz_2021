module TriadChords
  class MajorTriadChordFormation < Scale
    MAJOR_TRIAD_CHORD_PATTERN = [0, 4, 7].freeze  # Tonica-terça maior-quinta justa

    def self.by_note(note)
      major_chord_index = index_of_mode(note)
      MAJOR_TRIAD_CHORD_PATTERN.map do |major_chord_interval| # Interação com a classe Chord
        major_chord_note_index = major_chord_index + major_chord_interval
        if major_chord_note_index <= (CHROMATIC.length - 1)
          CHROMATIC[major_chord_note_index]
        else
          new_major_chord_note_index = major_chord_note_index - CHROMATIC.length
          CHROMATIC[new_major_chord_note_index]
        end
      end
    end
  end
end