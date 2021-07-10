def option
  @option = gets.chomp
end

def reply
  puts 'Deseja recomeçar? <s/n>'.red
  @reply = gets.chomp
end

def invalid_option_chordz
  system('clear')
  puts 'Escolha uma opção válida!'.red
  puts main_menu_chordz
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

def invalid_option_message
  system('clear')
  puts 'Escolha uma opcao valida!'.red
  puts yield
end

def ask_to_continue
  reply # Metodo que executa o deseja recomecar
  sleep_and_clear # metodo que executa a limpeza da tela
  puts yield while @reply == 's'
  puts 'Obrigado!'.blue if @reply == 'n'
  clear_and_exit # Metodo que limpa a tela e sai do app
end

# Metodo nao utilizado ainda
def ask_to_continue_chordz 
  reply
  sleep_and_clear_chordz
  puts main_menu_chordz while @reply == 's'
  puts 'Obrigado!'.blue if @reply == 'n'
  clear_and_exit_chordz
end

def clear_and_exit_chordz
  puts 'Obrigado!'.blue
  sleep 1
  system('clear')
  exit
end
