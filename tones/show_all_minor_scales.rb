load 'tones/minor_scale_1.rb'
load 'tones/minor_scale_2.rb'
load 'tones/minor_scale_3.rb'
load 'tones/minor_scale_4.rb'
load 'tones/minor_scale_5.rb'
load 'tones/minor_scale_6.rb'
load 'tones/minor_scale_7.rb' 

module Notes
  class AllPossibleMinorScalesByNote < Tone
    def self.all_minor_by_note(note)
      minor_1 = MinorScaleOne.by_note(note)
      minor_2 = MinorScaleTwo.by_note(note)
      minor_3 = MinorScaleThree.by_note(note)
      minor_4 = MinorScaleFour.by_note(note)
      minor_5 = MinorScaleFive.by_note(note)
      minor_6 = MinorScaleSix.by_note(note)
      minor_7 = MinorScaleSeven.by_note(note)
      all_minor = {minor_1: minor_1, minor_2: minor_2, minor_3: minor_3, 
        minor_4: minor_4, minor_5: minor_5, minor_6: minor_6, minor_7: minor_7}
    end
  end
end
