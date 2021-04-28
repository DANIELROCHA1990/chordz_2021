module KeyChords
  class MinorKeyChord < KeyChord
    MINOR_KEY_PATTERN = [1, 8, 9, 16, 22, 24, 30].freeze  # T st T T st T T

    def self.by_note(note)
      minor_key_index = index_of_mode(note)
      MINOR_KEY_PATTERN.map do |minor_key_interval| # Interação com a classe Keys
        minor_key_note_index = minor_key_index + minor_key_interval
        if minor_key_note_index <= (CHROMATIC.length - 1)
          CHROMATIC[minor_key_note_index]
        else
          new_minor_key_note_index = minor_key_note_index - CHROMATIC.length
          CHROMATIC[new_minor_key_note_index]
        end
      end
    end
  end
end