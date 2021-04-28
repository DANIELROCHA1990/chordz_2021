require 'colorize'
load 'scale.rb'
load 'greek_modes/ionian.rb'
load 'greek_modes/dorian.rb'
load 'greek_modes/phrygian.rb'
load 'greek_modes/lydian.rb'
load 'greek_modes/mixolydian.rb'
load 'greek_modes/aeolian.rb'
load 'greek_modes/locrian.rb'
load 'greek_modes/all_modes_of_scales.rb'

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
      scale_presenter { GreekModes::Ionian.by_note(@note) }
    when '2' then
      scale_presenter { GreekModes::Dorian.by_note(@note) }
    when '3' then
      scale_presenter { GreekModes::Phrygian.by_note(@note) }
    when '4' then
      scale_presenter { GreekModes::Lydian.by_note(@note) }
    when '5' then
      scale_presenter { GreekModes::Mixolydian.by_note(@note) }
    when '6' then
      scale_presenter { GreekModes::Aeolian.by_note(@note) }
    when '7' then
      scale_presenter { GreekModes::Locrian.by_note(@note) }
    when '8' then
      scale_presenter { GreekModes::AllModesOfScales.all_by_note(@note) }
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