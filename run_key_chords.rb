require 'colorize'

load 'Key_Chord.rb'
load 'key_chords/major_key_chords.rb'
load 'key_chords/minor_key_chords.rb'
load 'key_chords/major_and_minor_key_chords.rb'

puts
puts "##################".green
puts "#   Key Chords   #".green
puts "##################".green

def key_chord_presenter
  puts 'Digite a nota em CAIXA ALTA:'
  print @note = gets.chomp.upcase
  yield.to_s.colorize(:color => :red, :background => :black)
end


def initial_menu_key_chords
  puts "Escolha o modo abaixo:".green
  puts "1 - Maior| 2 - Menor| 3 - ALL".blue
option_key_chords = gets.chomp

  case option_key_chords
    when '1' then
      key_chord_presenter { KeyChords::MajorKeyChord.by_note(@note) }
    when '2' then
      key_chord_presenter { KeyChords::MinorKeyChord.by_note(@note) }
    when '3' then
      key_chord_presenter { KeyChords::MajorAndMinorKeyChord.all_key_chords_by_note(@note) }
    else option_key_chords !=(1..3) 
      puts "Escolha uma opção válida!".red
      initial_menu_key_chords
    end
end

puts initial_menu_key_chords
puts 'Deseja recomeçar? <s/n>'.red
continue_key_chords = gets.chomp

if continue_key_chords == 'n' || continue_key_chords == 'N'
  puts 'Adeus!'.blue
end

while continue_key_chords == 's' || continue_key_chords == 'S' do
 puts initial_menu_key_chords
 puts 'Deseja recomeçar? <s/n>'.red
 continue_key_chords = gets.chomp
end
