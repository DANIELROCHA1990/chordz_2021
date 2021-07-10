module Notes
  class MajorAndMinorKeyChord < KeyChord
    def self.all_key_chords_by_note(note)
      major_key = MajorKeyChord.by_note(note)
      minor_key = MinorKeyChord.by_note(note)
      all_key_chords = { major: major_key, minor: minor_key }
    end
  end
end
