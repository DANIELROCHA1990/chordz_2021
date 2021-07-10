module KeyChords
  class MinorKeyChord < KeyChord
    MINOR_KEY_PATTERN = [1, 8, 9, 16, 22, 24, 30].freeze  # T st T T st T T

    def self.by_note(note)
      minor_key_index = index_of_mode(note)
      MINOR_KEY_PATTERN.map do |minor_key_interval| # Interacao com a classe Keys
        minor_key_note_index = minor_key_index + minor_key_interval
        new_minor_key_note_index = minor_key_note_index - CHROMATIC.length
        scale_maker_by_note(minor_key_note_index, new_minor_key_note_index)
      end
    end
  end
end