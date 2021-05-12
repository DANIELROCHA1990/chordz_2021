require 'colorize'
load 'scale.rb'
load 'formation_mixin.rb'

def initial_menu_chords_formation
puts '##########################'.green
puts '#    CHORDS FORMATION    #'.green
puts '##########################'.green
puts 'Escolha o modo abaixo:'.green
puts '1 - TETRAD | 2 - TRIAD'.blue
option = gets.chomp

  case option
  when '1' then
    FormationOfChords::ApplicationChordFormation.initial_menu_tetrad_chords_formation
  when '2' then
    FormationOfChords::ApplicationChordFormation.initial_menu_triad_chords_formation
  else option !=(1..2)
    puts 'Escolha uma opção válida!'.red
    initial_menu_chords_formation
  end
end
puts initial_menu_chords_formation