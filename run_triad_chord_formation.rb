require 'colorize'
load 'scale.rb'
load 'triad_chords_formation/major_triad_chords_formation.rb'
load 'triad_chords_formation/minor_triad_chords_formation.rb'
load 'triad_chords_formation/diminished_triad_chords_formation.rb'
load 'triad_chords_formation/major_minor_diminished_triad_chords_formation.rb'

def menu_reload_triad
  puts 'Deseja voltar ao menu inicial? <s/n>'.red
  continue = gets.chomp.upcase

  while continue == 'S' do
    initial_menu_triad_chords_formation
  end

  if continue == 'N'
    puts 'Obrigado!'
    exit
  end
end

def triad_chords_formation_presenter 
  puts 'Digite a nota:'
  print @note = gets.chomp.upcase
  puts yield.to_s.colorize(color: :red, background: :black)  
  puts menu_reload_triad
end

def initial_menu_triad_chords_formation
  puts "##########################".green
  puts "#     TRIAD FORMATION    #".green
  puts "##########################".green
  puts "Escolha o modo abaixo:".green
  puts "1 - Maior| 2 - Menor| 3 - Diminuto| 4 - ALL".blue
  option = gets.chomp

  case option
  when '1' then
    triad_chords_formation_presenter { FormationOfChords::MajorTriadChordFormation.by_note(@note) }
  when '2' then
    triad_chords_formation_presenter { FormationOfChords::MinorTriadChordFormation.by_note(@note) }
  when '3' then
    triad_chords_formation_presenter { FormationOfChords::DiminishedTriadChordFormation.by_note(@note) }
  when '4' then
    triad_chords_formation_presenter { FormationOfChords::MajorAndMinorAndDiminishedTriadChordsFormation.formed_by_note(@note)}
  else option !=(1..4) 
    puts "Escolha uma opção válida!".red
    initial_menu_triad_chords_formation
  end
end

p initial_menu_triad_chords_formation
p menu_reload_triad