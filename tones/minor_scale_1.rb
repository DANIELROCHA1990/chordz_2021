module Tones
  class MinorScaleOne < Tone
    MINOR_SCALE_PATTERN_1 = [0, 2, 3, 5, 7, 8, 10].freeze

    def self.by_note(note)
      minor_note_index_1 = index_of_mode(note)
      MINOR_SCALE_PATTERN_1.map do |minor_interval_1| # Interação
        minor_scale_note_index_1 = minor_note_index_1 + minor_interval_1
        if minor_scale_note_index_1 <= (CHROMATIC.length - 1)
          CHROMATIC[minor_scale_note_index_1]
        else
          reseted_minor_scale_note_index_1 = minor_scale_note_index_1 - CHROMATIC.length
          CHROMATIC[reseted_minor_scale_note_index_1]
        end
      end
    end
  end
end