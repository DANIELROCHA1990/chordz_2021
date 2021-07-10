# frozen_string_literal: true

# Aqui onde sera formado o modo aeolio
module Notes
  # Classe Dorian herda de Scale, no arquivo scales.rb
  class Dorian < Scale
    DORIAN_SCALE_MODE = [2, 4, 5, 7, 9, 11, 0, 2].freeze # T st T T T st T
    def self.by_note(note)
      dorian_note_index = index_of_mode(note)

      DORIAN_SCALE_MODE.map do |dorian_interval| # Interacao
        dorian_scale_note_index = (dorian_note_index - 2) + dorian_interval
        reseted_dorian_scale_note_index = dorian_scale_note_index - CHROMATIC.length
        scale_maker_by_note(dorian_scale_note_index, reseted_dorian_scale_note_index)
      end
    end
  end
end
