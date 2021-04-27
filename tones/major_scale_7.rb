module Tones
  class MajorScaleSeven < Tone
    MAJOR_SCALE_PATTERN_7 = [10, 0, 2, 3, 5, 7, 9].freeze

    def self.by_note(note)
      major_note_index_7 = index_of_mode(note)
      MAJOR_SCALE_PATTERN_7.map do |major_interval_7| # Interação
        major_scale_note_index_7 = major_note_index_7 + major_interval_7
        if major_scale_note_index_7 <= (CHROMATIC.length - 1)
          CHROMATIC[major_scale_note_index_7]
        else
          reseted_major_scale_note_index_7 = major_scale_note_index_7 - CHROMATIC.length
          CHROMATIC[reseted_major_scale_note_index_7]
        end
      end
    end
  end
end
