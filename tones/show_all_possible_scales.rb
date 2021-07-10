require 'colorize'
module Notes
  class AllPossibleScalesByNote < Tone
    def self.all_possible_by_note(note)
      major_1 = MajorScaleOne.by_note(note)
      major_2 = MajorScaleTwo.by_note(note)
      major_3 = MajorScaleThree.by_note(note)
      major_4 = MajorScaleFour.by_note(note)
      major_5 = MajorScaleFive.by_note(note)
      major_6 = MajorScaleSix.by_note(note)
      major_7 = MajorScaleSeven.by_note(note)
      all_major = {major_1: major_1, major_2: major_2, major_3: major_3, major_4: major_4, 
                  major_5: major_5, major_6: major_6, major_7: major_7}

      minor_1 = MinorScaleOne.by_note(note)
      minor_2 = MinorScaleTwo.by_note(note)
      minor_3 = MinorScaleThree.by_note(note)
      minor_4 = MinorScaleFour.by_note(note)
      minor_5 = MinorScaleFive.by_note(note)
      minor_6 = MinorScaleSix.by_note(note)
      minor_7 = MinorScaleSeven.by_note(note)
      all_minor = {minor_1: minor_1, minor_2: minor_2, minor_3: minor_3, minor_4: minor_4,
                  minor_5: minor_5, minor_6: minor_6, minor_7: minor_7}

      all_major_and_minor  = {all_major: all_major, all_minor: all_minor}
    end
  end
end
