module Tones
  class MajorScaleFour < Scale
    SCALE_MAJOR_PATTERN_4 = [5, 7, 9, 10, 0, 2, 4].freeze

    def self.major_by_note_4(note)
      major_note_index_4 = index_of_mode(note)
      SCALE_MAJOR_PATTERN_4.map do |major_interval_4| # Interação
        major_scale_note_index_4 = major_note_index_4 + major_interval_4
        if major_scale_note_index_4 <= (CHROMATIC.length - 1)
          CHROMATIC[major_scale_note_index_4]
        else
          reseted_major_scale_note_index_4 = major_scale_note_index_4 - CHROMATIC.length
          CHROMATIC[reseted_major_scale_note_index_4]
        end
      end
    end
  end
end
