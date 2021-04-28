module GreekModes
  class Dorian < Scale
    DORIAN_SCALE_MODE = [2, 4, 5, 7, 9, 11, 0, 2].freeze  # T st T T T st T

    def self.by_note(note)
      dorian_note_index = index_of_mode(note)
      DORIAN_SCALE_MODE.map do |dorian_interval| # Interação
        dorian_scale_note_index = (dorian_note_index - 2) + dorian_interval
        if dorian_scale_note_index <= (CHROMATIC.length - 1)
          CHROMATIC[dorian_scale_note_index]
        else
          reseted_dorian_scale_note_index = dorian_scale_note_index - CHROMATIC.length
          CHROMATIC[reseted_dorian_scale_note_index]
        end
      end
    end
  end
end