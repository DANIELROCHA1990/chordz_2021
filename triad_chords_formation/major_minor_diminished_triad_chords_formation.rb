module TriadChords
  class MajorAndMinorAndDiminishedTriadChordsFormation < Scale

    def self.formed_by_note(note)
      major = MajorTriadChordFormation.by_note(note)
      minor = MinorTriadChordFormation.by_note(note)
      diminished = DiminishedTriadChordFormation.by_note(note)
      all_chord_form = { minor: minor, major: major, diminished: diminished }
    end
  end
end