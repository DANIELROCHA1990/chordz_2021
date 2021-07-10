require 'colorize'
load 'lib/methods.rb'
load 'lib/methods_run_chords_formation.rb'

puts '##########################'.green
puts '#    CHORDS FORMATION    #'.green
puts '##########################'.green

def main_menu_chords_formation
  puts 'Escolha o modo abaixo:'.green
  puts '1 - TETRAD | 2 - TRIAD'.blue
  options_of_chords_formation
end

def options_of_chords_formation
  case option
  when '1' then puts call_method_tetrad
  when '2' then puts call_method_triad
  else
    invalid_option_message { main_menu_chords_formation }
  end
end

main_menu_chords_formation
