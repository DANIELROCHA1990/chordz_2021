require 'colorize'
load 'lib/methods_chordz.rb'
puts '############################'.green
puts '#   Bem vindo ao Chordz!   #'.green
puts '############################'.green

def main_menu_chordz
  puts 'Escolha o modo abaixo:'.green
  puts '1 - Scales | 2 - Modes | 3 - Tone | 4 - Key Chords | 5 - Chords | 6 - Exit'.blue
  p options_of_chordz
end

def options_of_chordz
  case option
  when '1' then load './run_scales.rb'
  when '2' then load './run_greek_modes.rb'
  when '3' then load './run_tones.rb'
  when '4' then load './run_key_chords.rb'
  when '5' then load './run_chords_formation.rb'
  when '6' then clear_and_exit_chordz
  else invalid_option_chordz
  end
end

puts main_menu_chordz
