require 'colorize'

load 'scale.rb'
load 'triad_chords_formation/major_triad_chords_formation.rb'
load 'triad_chords_formation/minor_triad_chords_formation.rb'
load 'triad_chords_formation/diminished_triad_chords_formation.rb'
load 'triad_chords_formation/major_minor_diminished_triad_chords_formation.rb'

puts
puts "##########################".green
puts "#    CHORDS FORMATION    #".green
puts "##########################".green

def triad_chords_formation_presenter 
  puts 'Digite a nota:'
  print @note = gets.chomp.upcase
  puts yield.to_s.colorize(:color => :red, :background => :black)  
end

def initial_menu_chords_formation
  puts "Escolha o modo abaixo:".green
  puts "1 - Maior| 2 - Menor| 3 - Diminuto| 4 - ALL".blue
  option = gets.chomp

  case option
    when '1' then
      triad_chords_formation_presenter { TriadChords::MajorTriadChordFormation.by_note(@note) }
    when '2' then
      triad_chords_formation_presenter { TriadChords::MinorTriadChordFormation.by_note(@note) }
    when '3' then
      triad_chords_formation_presenter { TriadChords::DiminishedTriadChordFormation.by_note(@note) }
    when '4' then
      triad_chords_formation_presenter { TriadChords::MajorAndMinorAndDiminishedTriadChordsFormation.formed_by_note(@note) }
    else option_chords !=(1..4) 
      puts "Escolha uma opção válida!".red
      initial_menu_chords_formation
    end
end

puts initial_menu_chords_formation
puts 'Deseja recomeçar? <s/n>'.red
continue = gets.chomp

if continue == 'n' || continue == 'N'
  puts 'Adeus!'.blue
end

while continue == 's' || continue == 'S' do
 puts initial_menu_chords_formation
 puts 'Deseja recomeçar? <s/n>'.red
 continue = gets.chomp
end