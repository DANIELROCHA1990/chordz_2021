module Tones
  class MinorScaleSix < Tone
    MINOR_SCALE_PATTERN_6 = [9, 11, 0, 2, 4, 5, 7].freeze
    def self.by_note(note)
      minor_note_index_6 = index_of_mode(note)
      MINOR_SCALE_PATTERN_6.map do |minor_interval_6| # Interação
        minor_scale_note_index_6 = minor_note_index_6 + minor_interval_6
        reseted_minor_scale_note_index_6 = minor_scale_note_index_6 - CHROMATIC.length
        scale_maker_by_note(minor_scale_note_index_6, reseted_minor_scale_note_index_6)
      end
    end
  end
end