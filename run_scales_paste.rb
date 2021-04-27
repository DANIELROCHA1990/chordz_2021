require 'colorize'
require 'byebug'

load 'music_theory/scale.rb'
load 'music_theory/scales/ionian.rb'
load 'music_theory/scales/dorian.rb'
load 'music_theory/scales/phrygian.rb'
load 'music_theory/scales/lydian.rb'
load 'music_theory/scales/mixolydian.rb'
load 'music_theory/scales/aeolian.rb'
load 'music_theory/scales/locrian.rb'
load 'music_theory/scales/all_modes_of_scales.rb'

puts
puts '##################'.green
puts '#      Modes     #'.green
puts '##################'.green

def scale_presenter
  puts 'Digite a nota:'
  print @note = gets.chomp.upcase
  puts yield.to_s.colorize(color: :red, background: :black)
end

def initial_menu_modes
  puts 'Escolha o modo abaixo:'.green
  puts '1 - Ionian | 2 - Dorian | 3 - Phrygian | 4 - Lydian | 5 - Mixolydian | 6 - Aeolian | 7 - Locrian | 8 - ALL'.blue
  option = gets.chomp

  case option
    when '1' then
      scale_presenter { Scales::Ionian.by_note(@note) }
    when '2' then
      scale_presenter { Scales::Dorian.by_note(@note) }
    when '3' then
      scale_presenter { Scales::Phrygian.by_note(@note) }
    when '4' then
      scale_presenter { Scales::Lydian.by_note(@note) }
    when '5' then
      scale_presenter { Scales::Mixolydian.by_note(@note) }
    when '6' then
      scale_presenter { Scales::Aeolian.by_note(@note) }
    when '7' then
      scale_presenter { Scales::Locrian.by_note(@note) }
    when '8' then
      scale_presenter { Scales::AllModesOfScales.all_by_note(@note) }
    else option !=(1..8)
      puts 'Escolha uma opção válida!'.red
      initial_menu_modes
    end
end
puts initial_menu_modes
puts 'Deseja recomeçar? <s/n>'.red
continue_modes = gets.chomp

if continue_modes == 'n' || continue_modes == 'N'
  puts 'Obrigado!!!'
end

while continue_modes == 's' || continue_modes == 'S' do
 puts initial_menu_modes
 puts 'Deseja recomeçar? <s/n>'.red
 continue_modes = gets.chomp
end