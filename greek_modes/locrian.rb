# modulo dos modos gregos
module Notes
  # Classe Locrian herda de Scale, no arquivo scales.rb
  class Locrian < Scale
    LOCRIAN_SCALE_MODE = [11, 0, 2, 4, 5, 7, 9, 11].freeze # st T T st T T T
    def self.by_note(note)
      locrian_note_index = index_of_mode(note)
      LOCRIAN_SCALE_MODE.map do |locrian_interval| # Interacao
        locrian_scale_note_index = (locrian_note_index - 11) + locrian_interval
        reseted_locrian_scale_note_index = locrian_scale_note_index - CHROMATIC.length
        scale_maker_by_note(locrian_scale_note_index, reseted_locrian_scale_note_index)
      end
    end
  end
end
