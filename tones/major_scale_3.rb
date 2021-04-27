module Tones
  class MajorScalethree < Scale
    MAJOR_SCALE_PATTERN_3 = [3, 5, 7, 8, 10, 0, 2].freeze

    def self.major_by_note_3(note)
      major_note_index_3 = index_of_mode(note)

      SCALE_MAJOR_PATTERN_3.map do |major_interval_3| # Interação
        major_scale_note_index_3 = major_note_index_3 + major_interval_3

        if major_scale_note_index_3 <= (CHROMATIC.length - 1)
          CHROMATIC[major_scale_note_index_3]
        else
          reseted_major_scale_note_index_3 = major_scale_note_index_3 - CHROMATIC.length
          CHROMATIC[reseted_major_scale_note_index_3]
        end
      end
    end
  end
end
