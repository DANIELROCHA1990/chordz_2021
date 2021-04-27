require 'colorize'
require 'byebug'

load 'tone.rb'
load 'tones/show_all_tones_by_note.rb'

puts
puts "##################".green
puts "#     Tones      #".green
puts "##################".green

def initial_menu_tone
  puts "Digite a nota:".red
  print @note = gets.chomp.upcase
  print { Tones::Toned.by_note(@note) }
end

puts initial_menu_tone
puts 'Deseja reomeçar? <s/n>'.red
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