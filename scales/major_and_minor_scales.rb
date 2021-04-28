module Scales
  class MajorAndMinorScale < Scale
    def self.show_all_scales_by_note(note)
      major = MajorScale.by_note(note)
      minor = MinorScale.by_note(note)
      all = { major: major, minor: minor}
    end
  end
end