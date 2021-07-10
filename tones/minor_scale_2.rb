module Notes
  class MinorScaleTwo < Tone
    MINOR_SCALE_PATTERN_2 = [2, 4, 5, 7, 9, 10, 0].freeze

    def self.by_note(note)
      minor_note_index_2 = index_of_mode(note)
      MINOR_SCALE_PATTERN_2.map do |minor_interval_2| # Interação
        minor_scale_note_index_2 = minor_note_index_2 + minor_interval_2
        reseted_minor_scale_note_index_2 = minor_scale_note_index_2 - CHROMATIC.length
        scale_maker_by_note(minor_scale_note_index_2, reseted_minor_scale_note_index_2)
      end
    end
  end
end