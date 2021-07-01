module Scales
  class MajorScale < Scale
    MAJOR_SCALE_PATTERN = [0, 2, 4, 5, 7, 9, 11, 0].freeze # T T st T T T st
    def self.by_note(note)
      major_note_index = index_of_mode(note)
      MAJOR_SCALE_PATTERN.map do |major_interval|
        major_scale_note_index = major_note_index + major_interval
        reseted_major_scale_note_index = major_scale_note_index - CHROMATIC.length
        scale_maker_by_note(major_scale_note_index, reseted_major_scale_note_index)
      end
    end
  end
end