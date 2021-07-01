module Tones
  class MinorScaleThree < Tone
    MINOR_SCALE_PATTERN_3 = [4, 6, 7, 9, 11, 0, 2].freeze
    def self.by_note(note)
      minor_note_index_3 = index_of_mode(note)
      MINOR_SCALE_PATTERN_3.map do |minor_interval_3| # Interação
        minor_scale_note_index_3 = minor_note_index_3 + minor_interval_3
        reseted_minor_scale_note_index_3 = minor_scale_note_index_3 - CHROMATIC.length
        scale_maker_by_note(minor_scale_note_index_3, reseted_minor_scale_note_index_3)
      end
    end
  end
end
