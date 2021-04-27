require 'colorize'
puts
puts "############################".green
puts "#   Bem vindo ao Chordz!   #".green
puts "############################".green


def initial_menu_chordz
  puts "Escolha o modo abaixo:".green
  puts "1 - Scales| 2 - Modes| 3 - Tone| 4 - Key Chords| 5 - Chords| 6 - Exit".blue
  option_chordz = gets.chomp

  case option_chordz
    when '1' then
    load 'scales.rb'
    when '2' then
    load 'modes.rb'
    when '3' then
    load 'tone.rb'
    when '4' then
    load 'key_chords.rb'
    when '5' then
    load 'chords.rb'
    when '6'
    puts "Adeus!"
    else option_chordz !=(1..6)
    puts "Escolha uma opção válida!".red
    initial_menu_chordz
    end
end

puts initial_menu_chordz
puts 'Deseja voltar ao menu Chordz? <s/n>'.red
continue_chordz = gets.chomp

if continue_chordz == 'n' || continue_chordz == 'N'
  puts 'Adeus!'
end

while continue_chordz == 's' || continue_chordz == 'S' do
 puts initial_menu_chordz
 puts 'Deseja voltar ao menu Chordz? <s/n>'.red
 continue_chordz = gets.chomp
end
