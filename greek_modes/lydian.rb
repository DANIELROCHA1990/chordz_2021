module GreekModes
  class Lydian < Scale
    LYDIAN_SCALE_MODE = [5, 7, 9, 11, 0, 2, 4, 5].freeze # T T T st T T st

    def self.by_note(note)
      lydian_note_index = index_of_mode(note)
      LYDIAN_SCALE_MODE.map do |lydian_interval| # Interação
        lydian_scale_note_index = (lydian_note_index - 5) + lydian_interval

        if lydian_scale_note_index <= (CHROMATIC.length - 1)
          CHROMATIC[lydian_scale_note_index]
        else
          reseted_lydian_scale_note_index = lydian_scale_note_index - CHROMATIC.length
          CHROMATIC[reseted_lydian_scale_note_index]
        end
      end
    end
  end
end
