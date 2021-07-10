require 'colorize'
require 'byebug'

load 'lib/tone.rb'
load 'tones/show_all_minor_scales.rb'
load 'tones/show_all_major_scales.rb'
load 'tones/show_all_possible_scales.rb'
load 'lib/methods.rb'

puts '##################'.green
puts '#     Tones      #'.green
puts '##################'.green

def scale_presenter_tones
  puts 'Digite a nota:'.yellow
  print @note = gets.chomp.capitalize
  puts yield.to_s.colorize(color: :red, background: :black)
  ask_to_continue { main_menu_tones }
end

def main_menu_tones
  puts 'Escolha o modo abaixo:'.green
  puts '1 - Maior | 2 - Menor | 3 - ALL'.blue
  options_of_tones
end

def options_of_tones
  case option
  when '1' then scale_presenter_tones { Notes::AllPossibleMajorScalesByNote.all_major_by_note(@note) }
  when '2' then scale_presenter_tones { Notes::AllPossibleMinorScalesByNote.all_minor_by_note(@note) }
  when '3' then scale_presenter_tones { Notes::AllPossibleScalesByNote.all_possible_by_note(@note) }
  else
    invalid_option_message_tones { main_menu_tones }
  end
end

main_menu_tones
