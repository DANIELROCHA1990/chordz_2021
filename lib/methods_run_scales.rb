# frozen_string_literal: true

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

def scale_presenter_scales
  puts 'Digite a nota:'.yellow
  print @note = gets.chomp.capitalize
  puts yield.to_s.colorize(color: :red, background: :black) # yield leva para o metodo Scales::Class.by_note(@note)
  ask_to_continue { main_menu_scales }
end
