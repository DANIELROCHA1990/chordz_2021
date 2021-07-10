require 'colorize'
load 'lib/scales.rb'
load 'scales/major_scales.rb'
load 'scales/minor_scales.rb'
load 'scales/major_and_minor_scales.rb'
load 'lib/methods.rb'

puts '##################'.green
puts '#     Scales     #'.green
puts '##################'.green

def scale_presenter_scales
  puts 'Digite a nota:'.yellow
  print @note = gets.chomp.capitalize
  puts yield.to_s.colorize(color: :red, background: :black) # yield leva para o metodo Scales::Class.by_note(@note)
  ask_to_continue { main_menu_scales }
end

def main_menu_scales
  puts 'Escolha o metodo abaixo:'.green
  puts '1 - Maior | 2 - Menor | 3 - All'.blue
  options_of_menu_scales
end

def options_of_menu_scales
  case option
  when '1' then scale_presenter_scales { Notes::MajorScale.by_note(@note) }
  when '2' then scale_presenter_scales { Notes::MinorScale.by_note(@note) }
  when '3' then scale_presenter_scales { Notes::MajorAndMinorScale.show_all_scales_by_note(@note) }
  when 'exit' then clear_and_exit
  else
    invalid_option_message { main_menu_scales }
  end
end

main_menu_scales
