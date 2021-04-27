module Tones
  class MajorScaleOne < Scale
    SCALE_MAJOR_PATTERN_1 = [0, 2, 4,	5, 7, 9, 11].freeze

    def self.major_by_note_1(note)
      major_note_index = index_of_mode(note)
      SCALE_MAJOR_PATTERN_1.map do |major_interval_1| # Interação
        major_scale_note_index_1 = major_note_index + major_interval_1
        if major_scale_note_index_1 <= (CHROMATIC.length - 1)
          CHROMATIC[major_scale_note_index_1]
        else
          reseted_major_scale_note_index_1 = major_scale_note_index_1 - CHROMATIC.length
          CHROMATIC[reseted_major_scale_note_index_1]
        end
      end
    end
  end
end
