module Tones
  class MinorScaleFour < Tone
    MINOR_SCALE_PATTERN_4 = [5, 7, 8, 10, 0, 1, 3].freeze
    def self.by_note(note)
      minor_note_index_4 = index_of_mode(note)
      MINOR_SCALE_PATTERN_4.map do |minor_interval_4| # Interação
        minor_scale_note_index_4 = minor_note_index_4 + minor_interval_4
        reseted_minor_scale_note_index_4 = minor_scale_note_index_4 - CHROMATIC.length
        scale_maker_by_note(minor_scale_note_index_4, reseted_minor_scale_note_index_4)
      end
    end
  end
end