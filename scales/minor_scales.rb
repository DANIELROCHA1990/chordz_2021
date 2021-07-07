module Scales
  class MinorScale < Scale
    MINOR_SCALE_PATTERN = [0, 2, 3, 5, 7, 8, 10, 0].freeze # T st T T st T T
    def self.by_note(note)
      minor_note_index = index_of_mode(note)
      MINOR_SCALE_PATTERN.map do |minor_interval|
        minor_scale_note_index = minor_note_index + minor_interval
        reseted_minor_scale_note_index = minor_scale_note_index - CHROMATIC.length
        scale_maker_by_note(minor_scale_note_index, reseted_minor_scale_note_index)
      end
    end
  end
end
