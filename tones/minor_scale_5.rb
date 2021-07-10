module Notes
  class MinorScaleFive < Tone
    MINOR_SCALE_PATTERN_5 = [7, 9, 10, 0, 2, 3, 5].freeze
    def self.by_note(note)
      minor_note_index_5 = index_of_mode(note)

      MINOR_SCALE_PATTERN_5.map do |minor_interval_5| # Interação
        minor_scale_note_index_5 = minor_note_index_5 + minor_interval_5
        reseted_minor_scale_note_index_5 = minor_scale_note_index_5 - CHROMATIC.length
        scale_maker_by_note(minor_scale_note_index_5, reseted_minor_scale_note_index_5)
      end
    end
  end
end
