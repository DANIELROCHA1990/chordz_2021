require 'colorize'



puts
puts "##################".green
puts "#      Tone      #".green
puts "##################".green


def initial_menu_tone
  puts "Digite a nota em CAIXA ALTA:".red
  note = gets.chomp
  print Tone.show_all_scales_by_note(note).to_s.colorize(:color => :white, :background => :black)
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