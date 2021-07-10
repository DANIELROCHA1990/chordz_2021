# frozen_string_literal: true

# Aqui onde sera formado o modo aeolio
module GreekModes
  # Classe Aeolian herda de Scale, no arquivo scales.rb
  class Aeolian < Scale
    AEOLIAN_SCALE_MODE = [9, 11, 0, 2, 4, 5, 7, 9].freeze # T st T T st T T
    def self.by_note(note)
      aeolian_note_index = index_of_mode(note)
      AEOLIAN_SCALE_MODE.map do |aeolian_interval| # Interacao
        aeolian_scale_note_index = (aeolian_note_index - 9) + aeolian_interval
        reseted_aeolian_scale_note_index = aeolian_scale_note_index - CHROMATIC.length
        scale_maker_by_note(aeolian_scale_note_index, reseted_aeolian_scale_note_index)
      end
    end
  end
end
