module MakeOfChords
  class MinorTriadChordFormation < TriadScale
    MINOR_TRIAD_CHORD_PATTERN = [0, 3, 7].freeze # Tonica-terça menor-quinta justa

    def self.by_note(note)
      minor_chord_index = index_of_mode(note)
      MINOR_TRIAD_CHORD_PATTERN.map do |minor_chord_interval| # Interação com a classe Chord
        minor_chord_note_index = minor_chord_index + minor_chord_interval
        new_minor_chord_note_index = minor_chord_note_index - CHROMATIC.length
       scale_maker_by_note(minor_chord_note_index, new_minor_chord_note_index)
      end
    end
  end
end