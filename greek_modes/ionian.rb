module GreekModes
  class Ionian < Scale
    IONIAN_SCALE_MODE = [0, 2, 4, 5, 7, 9, 11, 0].freeze  # T T st T T T st

    def self.by_note(note)
      ionian_note_index = index_of_mode(note)
      IONIAN_SCALE_MODE.map do |ionian_interval| # Interação
        ionian_scale_note_index = ionian_note_index + ionian_interval
        if ionian_scale_note_index <= (CHROMATIC.length - 1)
          CHROMATIC[ionian_scale_note_index]
        else
          reseted_ionian_scale_note_index = ionian_scale_note_index - CHROMATIC.length
          CHROMATIC[reseted_ionian_scale_note_index]
        end
      end
    end
  end
end