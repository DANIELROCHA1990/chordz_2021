module Tones
  class MajorScaleFive < Tone
    MAJOR_SCALE_PATTERN_5 = [7, 9, 11, 0, 2, 4, 6].freeze

    def self.by_note(note)
      major_note_index_5 = index_of_mode(note)
      MAJOR_SCALE_PATTERN_5.map do |major_interval_5| # Interação
        major_scale_note_index_5 = major_note_index_5 + major_interval_5
        reseted_major_scale_note_index_5 = major_scale_note_index_5 - CHROMATIC.length
        scale_maker_by_note(major_scale_note_index_5, reseted_major_scale_note_index_5)
      end
    end
  end
end