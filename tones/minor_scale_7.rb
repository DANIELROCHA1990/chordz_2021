module Notes
  class MinorScaleSeven < Tone
    MINOR_SCALE_PATTERN_7 = [10, 0, 1, 3, 5, 6, 8].freeze
    def self.by_note(note)
      minor_note_index_7 = index_of_mode(note)
      MINOR_SCALE_PATTERN_7.map do |minor_interval_7| # Interação
        minor_scale_note_index_7 = minor_note_index_7 + minor_interval_7
        reseted_minor_scale_note_index_7 = minor_scale_note_index_7 - CHROMATIC.length
        scale_maker_by_note(minor_scale_note_index_7, reseted_minor_scale_note_index_7)
      end
    end
  end
end