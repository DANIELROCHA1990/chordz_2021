def option
  @option = gets.chomp
end

def reply
  puts 'Deseja recomeçar? <s/n>'.red
  @reply = gets.chomp
end

def sleep_and_clear
  sleep 1
  system('clear')
end

def clear_and_exit
  sleep 1
  system('clear')
  exit
end

def invalid_option_message_tetrad_chords_formation
  system('clear')
  puts 'Escolha uma opção válida!'.red
  puts main_menu_greek_modes
end

def scale_presenter_tetrad_chords_formation
  puts 'Digite a nota:'.yellow
  print @note = gets.chomp.capitalize
  puts yield.to_s.colorize(color: :red, background: :black)
  puts ask_to_continue_tetrad_chords_formation
end

def ask_to_continue_tetrad_chords_formation
  reply
  sleep_and_clear
  puts main_menu_tetrad_chords_formation while @reply == 's'
  puts 'Obrigado!'.blue if @reply == 'n'
  clear_and_exit
end