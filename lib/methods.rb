# frozen_string_literal: true

# teste
module Chords
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
end
