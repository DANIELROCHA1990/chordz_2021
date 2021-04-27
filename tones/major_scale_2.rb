module Tones
  class MajorScaleTwo < Tone
    MAJOR_SCALE_PATTERN_2 = [1, 3, 5, 6, 8, 10, 0].freeze

    def self.by_note(note)
      major_note_index_2 = index_of_mode(note)

      MAJOR_SCALE_PATTERN_2.map do |major_interval_2| # Interação
        major_scale_note_index_2 = major_note_index_2 + major_interval_2

        if major_scale_note_index_2 <= (CHROMATIC.length - 1)
          CHROMATIC[major_scale_note_index_2]
        else
          reseted_major_scale_note_index_2 = major_scale_note_index_2 - CHROMATIC.length
          CHROMATIC[reseted_major_scale_note_index_2]
        end
      end
    end
  end
end
