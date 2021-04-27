module Scales
  class Mixolydian < Scale
    MIXOLYDIAN_SCALE_MODE = [7, 9, 11, 0, 2, 4, 5, 7].freeze # T T st T T st T

    def self.by_note(note)
      mixolydian_note_index = index_of_mode(note)

      MIXOLYDIAN_SCALE_MODE.map do |mixolydian_interval| # Interação
        mixolydian_scale_note_index = (mixolydian_note_index - 7) + mixolydian_interval

        if mixolydian_scale_note_index <= (CHROMATIC.length - 1)
          CHROMATIC[mixolydian_scale_note_index]
        else
          reseted_mixolydian_scale_note_index = mixolydian_scale_note_index - CHROMATIC.length
          CHROMATIC[reseted_mixolydian_scale_note_index]
        end
      end
    end
  end
end