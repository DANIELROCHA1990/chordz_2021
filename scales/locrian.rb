# Scales::Locrian.by_note('C')
module Scales
  class Locrian < Scale
    LOCRIAN_SCALE_MODE = [11, 0, 2, 4, 5, 7, 9, 11].freeze # st T T st T T T

    def self.by_note(note)
      locrian_note_index = index_of_mode(note)
      LOCRIAN_SCALE_MODE.map do |locrian_interval| # Interação
        locrian_scale_note_index = (locrian_note_index - 11) + locrian_interval
        if locrian_scale_note_index <= (CHROMATIC.length - 1)
          CHROMATIC[locrian_scale_note_index]
        else
          reseted_locrian_scale_note_index = locrian_scale_note_index - CHROMATIC.length
          CHROMATIC[reseted_locrian_scale_note_index]
        end
      end
    end
  end
end
