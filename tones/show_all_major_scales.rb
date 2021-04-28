load 'tones/major_scale_1.rb'
load 'tones/major_scale_2.rb'
load 'tones/major_scale_3.rb'
load 'tones/major_scale_4.rb'
load 'tones/major_scale_5.rb'
load 'tones/major_scale_6.rb'
load 'tones/major_scale_7.rb'

module Tones
  class AllPossibleMajorScalesByNote < Tone

    def self.all_major_by_note(note)
      major_1 = MajorScaleOne.by_note(note)
      major_2 = MajorScaleTwo.by_note(note)
      major_3 = MajorScaleThree.by_note(note)
      major_4 = MajorScaleFour.by_note(note)
      major_5 = MajorScaleFive.by_note(note)
      major_6 = MajorScaleSix.by_note(note)
      major_7 = MajorScaleSeven.by_note(note)
      all_major = {major_1: major_1, major_2: major_2, major_3: major_3, major_4: major_4, 
        major_5: major_5, major_6: major_6, major_7: major_7}
    end
  end
end