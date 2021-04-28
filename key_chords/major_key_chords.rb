module KeyChords
  class MajorKeyChord < KeyChord
    MAJOR_KEY_PATTERN = [0, 7, 13, 15, 21, 28, 35].freeze  # T T st T T T st

    def self.by_note(note)
      major_key_index = index_of_mode(note)
      MAJOR_KEY_PATTERN.map do |major_key_interval| # Interação com a classe Keys
        major_key_note_index = major_key_index + major_key_interval
        if major_key_note_index <= (CHROMATIC.length - 1)
          CHROMATIC[major_key_note_index]
        else
          new_major_key_note_index = major_key_note_index - CHROMATIC.length
          CHROMATIC[new_major_key_note_index]
        end
      end
    end
  end
end