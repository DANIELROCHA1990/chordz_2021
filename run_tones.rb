require 'colorize'
require 'byebug'

load 'lib/tone.rb'
load 'tones/show_all_minor_scales.rb'
load 'tones/show_all_major_scales.rb'
load 'tones/show_all_possible_scales.rb'
load 'lib/methods_run_tones.rb'

puts '##################'.green
puts '#     Tones      #'.green
puts '##################'.green

def main_menu_tones
  puts 'Escolha o modo abaixo:'.green
  puts '1 - Maior | 2 - Menor | 3 - ALL'.blue
  p options_of_tones
end

def options_of_tones
  case option
  when '1' then scale_presenter_tones { Tones::AllPossibleMajorScalesByNote.all_major_by_note(@note) }
  when '2' then scale_presenter_tones { Tones::AllPossibleMinorScalesByNote.all_minor_by_note(@note) }
  when '3' then scale_presenter_tones { Tones::AllPossibleScalesByNote.all_possible_by_note(@note) }
  else invalid_option_message_tones
  end
end

main_menu_tones
