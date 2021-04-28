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

def scale_presenter
  puts 'Digite a nota:'
  print @note = gets.chomp.upcase
  puts yield.to_s.colorize(color: :red, background: :black)
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
    else option !=(1..2)
      puts 'Escolha uma opção válida!'.red
      initial_menu_tone
    end
end

puts initial_menu_tone
puts 'Deseja recomeçar? <s/n>'.red
continue = gets.chomp

if continue == 'n' || continue == 'N'
  puts 'Adeus!'.blue
end

while continue == 's' || continue == 'S' do
 puts initial_menu_tone
 puts 'Deseja recomeçar? <s/n>'.red
 continue = gets.chomp
end





=begin 
load 'tones/major_scale_1.rb'
load 'tones/major_scale_2.rb'
load 'tones/major_scale_3.rb'
load 'tones/major_scale_4.rb'
load 'tones/major_scale_5.rb'
load 'tones/major_scale_6.rb'
load 'tones/major_scale_7.rb'
load 'tones/minor_scale_1.rb'
load 'tones/minor_scale_2.rb'
load 'tones/minor_scale_3.rb'
load 'tones/minor_scale_4.rb'
load 'tones/minor_scale_5.rb'
load 'tones/minor_scale_6.rb'
load 'tones/minor_scale_7.rb' 
=end