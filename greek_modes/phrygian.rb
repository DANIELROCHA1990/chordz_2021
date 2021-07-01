module GreekModes
  class Phrygian < Scale
    PHRYGIAN_SCALE_MODE = [4, 5, 7, 9, 11, 0, 2, 4].freeze # st T T T st T T
    def self.by_note(note)
      phrygian_note_index = index_of_mode(note)

      PHRYGIAN_SCALE_MODE.map do |phrygian_interval| # Interação
        phrygian_scale_note_index = (phrygian_note_index - 4) + phrygian_interval
        reseted_phrygian_scale_note_index = phrygian_scale_note_index - CHROMATIC.length
        scale_maker_by_note(phrygian_scale_note_index, reseted_phrygian_scale_note_index)
      end
    end
  end
end