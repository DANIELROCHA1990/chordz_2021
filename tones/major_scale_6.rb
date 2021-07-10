module Notes
  class MajorScaleSix < Tone
    MAJOR_SCALE_PATTERN_6 = [8, 10, 0, 1, 3, 5, 7].freeze

    def self.by_note(note)
      major_note_index_6 = index_of_mode(note)
      MAJOR_SCALE_PATTERN_6.map do |major_interval_6| # Interação
        major_scale_note_index_6 = major_note_index_6 + major_interval_6
        reseted_major_scale_note_index_6 = major_scale_note_index_6 - CHROMATIC.length
        scale_maker_by_note(major_scale_note_index_6, reseted_major_scale_note_index_6)
      end
    end
  end
end