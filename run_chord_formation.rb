module FormationOfChords
  class ApplicationChordFormation
    require 'colorize'
    load 'scale.rb'
    load 'run_tetrad_chord_formation.rb'
    load 'run_triad_chord_formation.rb'

    def self.initial_menu_chords_formation
      puts '##########################'.green
      puts '#    CHORDS FORMATION    #'.green
      puts '##########################'.green
      puts 'Escolha o modo abaixo:'.green
      puts '1 - TETRAD | 2 - TRIAD'.blue
      option = gets.chomp

      case option
      when '1' then
        ApplicationChordFormation.initial_menu_tetrad_chords_formation
      when '2' then
        ApplicationChordFormation.initial_menu_triad_chords_formation
      else option !=(1..2)
        puts 'Escolha uma opção válida!'.red
        ApplicationChordFormation.initial_menu_chords_formation
      end
    end

    puts ApplicationChordFormation.initial_menu_chords_formation
    # puts ApplicationChordFormation.menu_reload
  end
end