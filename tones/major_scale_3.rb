module Tones
  class MajorScaleThree < Tone
    MAJOR_SCALE_PATTERN_3 = [3, 5, 7, 8, 10, 0, 2].freeze

    def self.by_note(note)
      major_note_index_3 = index_of_mode(note)

      MAJOR_SCALE_PATTERN_3.map do |major_interval_3| # Interação
        major_scale_note_index_3 = major_note_index_3 + major_interval_3
        reseted_major_scale_note_index_3 = major_scale_note_index_3 - CHROMATIC.length
        scale_maker_by_note(major_scale_note_index_3, reseted_major_scale_note_index_3)
      end
    end
  end
end
