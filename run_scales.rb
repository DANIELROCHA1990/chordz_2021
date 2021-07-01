  require 'colorize'
  load 'scale.rb'
  load 'scales/major_scales.rb'
  load 'scales/minor_scales.rb'
  load 'scales/major_and_minor_scales.rb'
  puts
  puts "##################".green
  puts "#     Scales     #".green
  puts "##################".green

  def scale_presenter
    puts 'Digite a nota:'.yellow
    print @note = gets.chomp.upcase
    puts yield.to_s.colorize(color: :red, background: :black)
  end

  def initial_menu_scales
    puts "Escolha o metodo abaixo:".green
    puts "1 - Maior | 2 - Menor | 3 - All".blue
    option = gets.chomp

    case option
      when '1' then   
        scale_presenter { Scales::MajorScale.by_note(@note) }
      when '2' then
        scale_presenter { Scales::MinorScale.by_note(@note) }
      when '3' then      
        scale_presenter { Scales::MajorAndMinorScale.show_all_scales_by_note(@note) }
      else option !=(1..3)
        puts 'Escolha uma opção válida!'.red
        initial_menu_scales
      end
  end

  puts initial_menu_scales
  puts 'Deseja reomeçar? <s/n>'.red
  continue = gets.chomp

  while continue == 's' || continue == 'S' do
  puts initial_menu_scales
  puts 'Deseja recomeçar? <s/n>'.red
  continue = gets.chomp
    if continue == 'n' || continue == 'N'
      puts 'Obrigado!'.blue
    end
  end