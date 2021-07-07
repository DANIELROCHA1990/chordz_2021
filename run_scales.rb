require 'colorize'

load 'lib/scales.rb'
load 'scales/major_scales.rb'
load 'scales/minor_scales.rb'
load 'scales/major_and_minor_scales.rb'
load 'lib/methods_run_scales.rb'
puts
puts '##################'.green
puts '#     Scales     #'.green
puts '##################'.green

def options_of_menu_scales
  case option
  when '1' then scale_presenter_scales { Scales::MajorScale.by_note(@note) }
  when '2' then scale_presenter_scales { Scales::MinorScale.by_note(@note) }
  when '3' then scale_presenter_scales { Scales::MajorAndMinorScale.show_all_scales_by_note(@note) }
  else invalid_option_message_scales
  end
end

def main_menu_scales
  puts 'Escolha o metodo abaixo:'.green
  puts '1 - Maior | 2 - Menor | 3 - All'.blue
  p options_of_menu_scales
end

main_menu_scales
