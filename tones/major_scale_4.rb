module Tones
  class MajorScaleFour < Tone
    MAJOR_SCALE_PATTERN_4 = [5, 7, 9, 10, 0, 2, 4].freeze

    def self.by_note(note)
      major_note_index_4 = index_of_mode(note)
      MAJOR_SCALE_PATTERN_4.map do |major_interval_4| # Interação
        major_scale_note_index_4 = major_note_index_4 + major_interval_4
        reseted_major_scale_note_index_4 = major_scale_note_index_4 - CHROMATIC.length
        scale_maker_by_note(major_scale_note_index_4, reseted_major_scale_note_index_4)
      end
    end
  end
end