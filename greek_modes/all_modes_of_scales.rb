module GreekModes
  class AllModesOfScales < Scale

    def self.all_by_note(note)
      ionian = Ionian.by_note(note)
      dorian = Dorian.by_note(note)
      phrygian = Phrygian.by_note(note)
      lydian = Lydian.by_note(note)
      mixolydian = Mixolydian.by_note(note)
      aeolian = Aeolian.by_note(note)
      locrian = Locrian.by_note(note)
      all_modes_of_scales = { ionian: ionian, dorian: dorian, phrygian: phrygian, lydian: lydian, mixolydian: mixolydian,
                              aeolian: aeolian, locrian: locrian }
    end
  end
end