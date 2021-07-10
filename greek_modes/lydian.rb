module GreekModes
  class Lydian < Scale
    LYDIAN_SCALE_MODE = [5, 7, 9, 11, 0, 2, 4, 5].freeze # T T T st T T st

    def self.by_note(note)
      lydian_note_index = index_of_mode(note)
      LYDIAN_SCALE_MODE.map do |lydian_interval| # Interacao
        lydian_scale_note_index = (lydian_note_index - 5) + lydian_interval
        reseted_lydian_scale_note_index = lydian_scale_note_index - CHROMATIC.length
        scale_maker_by_note(lydian_scale_note_index, reseted_lydian_scale_note_index)
      end
    end
  end
end
