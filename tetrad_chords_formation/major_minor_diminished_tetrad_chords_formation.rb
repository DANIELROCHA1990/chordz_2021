module MakeOfChords
  class AllTetradChordsFormation < TetradScale

    def self.formed_by_note(note)
      major = MajorTetradChordFormation.by_note(note)
      minor = MinorTetradChordFormation.by_note(note)
      diminished = DiminishedTetradChordFormation.by_note(note)
      all_chord_form = { minor: minor, major: major, diminished: diminished }
    end
  end
end