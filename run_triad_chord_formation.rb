require 'colorize'
load 'lib/scales.rb'
load 'triad_chords_formation/major_triad_chords_formation.rb'
load 'triad_chords_formation/minor_triad_chords_formation.rb'
load 'triad_chords_formation/diminished_triad_chords_formation.rb'
load 'triad_chords_formation/major_minor_diminished_triad_chords_formation.rb'
load 'lib/methods_run_triad_chords_formation.rb'

def main_menu_triad_chords_formation
  puts '##########################'.green
  puts '#     TRIAD FORMATION    #'.green
  puts '##########################'.green
  puts 'Escolha o modo abaixo:'.green
  puts '1 - Maior | 2 - Menor| 3 - Diminuto| 4 - ALL'.blue
  p options_of_triad_chords_formation
end

def options_of_triad_chords_formation
  case option
  when '1' then scale_presenter__triad_chords_formation { Notes::MajorTriadChordFormation.by_note(@note) }
  when '2' then scale_presenter__triad_chords_formation { Notes::MinorTriadChordFormation.by_note(@note) }
  when '3' then scale_presenter__triad_chords_formation { Notes::DiminishedTriadChordFormation.by_note(@note) }
  when '4' then scale_presenter__triad_chords_formation { Notes::AllTriadChordsFormation.formed_by_note(@note) }
  else invalid_option_message_triad_chords_formation
  end
end

main_menu_triad_chords_formation

