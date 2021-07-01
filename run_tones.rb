require 'colorize'
require 'byebug'

load 'tone.rb'
load 'tones/show_all_minor_scales.rb'
load 'tones/show_all_major_scales.rb'
load 'tones/show_all_possible_scales.rb'

puts
puts "##################".green
puts "#     Tones      #".green
puts "##################".green

def menu_reload_tones
  puts 'Deseja voltar ao menu inicial? <s/n>'.red
  continue = gets.chomp.upcase

  while continue == 'S' do
    initial_menu_tone
  end

  if continue == 'N'
    puts 'Obrigado!'
    exit
  end
end

def scale_presenter
  puts 'Digite a nota:'
  print @note = gets.chomp.upcase
  puts yield.to_s.colorize(color: :red, background: :black)
  menu_reload_tones
end

def initial_menu_tone
  puts 'Escolha o modo abaixo:'.green
  puts '1 - Maior | 2 - Menor | 3 - ALL'.blue
  option = gets.chomp

  case option
    when '1' then
      scale_presenter { Tones::AllPossibleMajorScalesByNote.all_major_by_note(@note) }
    when '2' then
      scale_presenter { Tones::AllPossibleMinorScalesByNote.all_minor_by_note(@note) }
    when '3' then
      scale_presenter { Tones::AllPossibleScalesByNote.all_possible_by_note(@note) }
    else option !=(1..3)
      puts 'Escolha uma opção válida!'.red
      initial_menu_tone
    end
end

p initial_menu_tone
p menu_reload_tones