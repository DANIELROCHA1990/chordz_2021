module GreekModes
  class Aeolian < Scale
    AEOLIAN_SCALE_MODE = [9, 11, 0, 2, 4, 5, 7, 9].freeze # T st T T st T T

    def self.by_note(note)
      aeolian_note_index = index_of_mode(note)
      AEOLIAN_SCALE_MODE.map do |aeolian_interval| # Interação
        aeolian_scale_note_index = (aeolian_note_index - 9) + aeolian_interval
        if aeolian_scale_note_index <= (CHROMATIC.length - 1)
          CHROMATIC[aeolian_scale_note_index]
        else
          reseted_aeolian_scale_note_index = aeolian_scale_note_index - CHROMATIC.length
          CHROMATIC[reseted_aeolian_scale_note_index]
        end
      end
    end
  end
end