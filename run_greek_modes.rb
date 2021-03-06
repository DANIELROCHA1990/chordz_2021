require 'colorize'
load 'lib/scales.rb'
load 'greek_modes/ionian.rb'
load 'greek_modes/dorian.rb'
load 'greek_modes/phrygian.rb'
load 'greek_modes/lydian.rb'
load 'greek_modes/mixolydian.rb'
load 'greek_modes/aeolian.rb'
load 'greek_modes/locrian.rb'
load 'greek_modes/all_modes_of_scales.rb'
load 'lib/methods.rb'

puts '#######################'.green
puts '#     Greek Modes     #'.green
puts '#######################'.green

def scale_presenter_greek_modes
  puts 'Digite a nota:'.yellow
  print @note = gets.chomp.capitalize
  puts yield.to_s.colorize(color: :red, background: :black)
  ask_to_continue { main_menu_greek_modes }
end

def main_menu_greek_modes
  puts 'Escolha o modo abaixo:'.green
  puts '1 - Ionian | 2 - Dorian | 3 - Phrygian | 4 - Lydian | 5 - Mixolydian | 6 - Aeolian | 7 - Locrian | 8 - ALL'.blue
  options_of_menu_greek_modes
end

def options_of_menu_greek_modes
  case option
  when '1' then scale_presenter_greek_modes { Notes::Ionian.by_note(@note) }
  when '2' then scale_presenter_greek_modes { Notes::Dorian.by_note(@note) }
  when '3' then scale_presenter_greek_modes { Notes::Phrygian.by_note(@note) }
  when '4' then scale_presenter_greek_modes { Notes::Lydian.by_note(@note) }
  when '5' then scale_presenter_greek_modes { Notes::Mixolydian.by_note(@note) }
  when '6' then scale_presenter_greek_modes { Notes::Aeolian.by_note(@note) }
  when '7' then scale_presenter_greek_modes { Notes::Locrian.by_note(@note) }
  when '8' then scale_presenter_greek_modes { Notes::AllModesOfScale.all_by_note(@note) }
  else
    invalid_option_message { main_menu_greek_modes }
  end
end

main_menu_greek_modes
