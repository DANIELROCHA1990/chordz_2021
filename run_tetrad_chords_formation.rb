require 'colorize'
load 'lib/scale_tetrad.rb'
load 'tetrad_chords_formation/major_tetrad_chords_formation.rb'
load 'tetrad_chords_formation/minor_tetrad_chords_formation.rb'
load 'tetrad_chords_formation/diminished_tetrad_chords_formation.rb'
load 'tetrad_chords_formation/major_minor_diminished_tetrad_chords_formation.rb'
load 'lib/methods_run_tetrad_chords_formation.rb'

def main_menu_tetrad_chords_formation
  puts '##########################'.green
  puts '#    TETRAD FORMATION    #'.green
  puts '##########################'.green
  puts 'Escolha o modo abaixo:'.green
  puts '1 - Maior| 2 - Menor| 3 - Diminuto| 4 - ALL'.blue
  p options_of_menu_tetrad_chords_formation
end

def options_of_menu_tetrad_chords_formation
  case option
  when '1' then scale_presenter_tetrad_chords_formation { Notes::MajorTetradChordFormation.by_note(@note) }
  when '2' then scale_presenter_tetrad_chords_formation { Notes::MinorTetradChordFormation.by_note(@note) }
  when '3' then scale_presenter_tetrad_chords_formation { Notes::DiminishedTetradChordFormation.by_note(@note) }
  when '4' then scale_presenter_tetrad_chords_formation { Notes::AllTetradChordsFormation.formed_by_note(@note) }
  else invalid_option_message_tetrad_chords_formation
  end
end

main_menu_tetrad_chords_formation
