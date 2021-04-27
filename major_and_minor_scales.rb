class Scale

  require 'colorize'

  NATURAL = %w[C D E F G A B].freeze
  ACCIDENT = %w[C# Db D# Eb F# Gb G# Ab A# Bb].freeze
  CHROMATIC = %w[C C#/Db D D#/Eb E F F#/Gb G G#/Ab A A#/Bb B].freeze
  SCALE_MAJOR_PATTERN = [0, 2, 4, 5, 7, 9, 11, 0].freeze # T T st T T T st
  SCALE_MINOR_PATTERN = [0, 2, 3, 5, 7, 8, 10, 0].freeze # T st T T st T T
  CHROMATIC_PAIR = { "C#" => "C#/Db", "D#" => "D#/Eb", "F#" => "F#/Gb", "A#" => "A#/Bb", 
                     "Db" => "C#/Db", "Eb" => "D#/Eb", "Gb" => "F#/Gb", "Bb" => "A#/Bb"}

  def self.show_all_scales(note)
    major = Scale.major_by_note(note)
    minor = Scale.minor_by_note(note)
    all = { major: major, minor: minor}
    
  end

  def self.major_by_note(note)
    major_note_index = index_of_note(note)

    SCALE_MAJOR_PATTERN.map do |major_interval| # Interação
      major_scale_note_index = major_note_index + major_interval

      if major_scale_note_index <= (CHROMATIC.length - 1)
        CHROMATIC[major_scale_note_index]
      else
        reseted_major_scale_note_index = major_scale_note_index - CHROMATIC.length
        CHROMATIC[reseted_major_scale_note_index]
      end
    end
  end

  def self.minor_by_note(note)
    minor_note_index = index_of_note(note)

    SCALE_MINOR_PATTERN.map do |minor_interval|
      minor_scale_note_index = minor_note_index + minor_interval

      if minor_scale_note_index <= (CHROMATIC.length - 1)
        CHROMATIC[minor_scale_note_index]
      else
        reseted_minor_scale_note_index = minor_scale_note_index - CHROMATIC.length
        CHROMATIC[reseted_minor_scale_note_index]
      end
    end
  end

  def self.index_of_note(note)
    CHROMATIC.index(note) || CHROMATIC.index(CHROMATIC_PAIR[note])
  end
end

puts
puts "##################".green
puts "#     Scales     #".green
puts "##################".green


def initial_menu
  puts "Escolha o metodo abaixo:".green
  puts "1 - Maior | 2 - Menor | 3 - All".blue
  option = gets.chomp

  case option
    when '1' then   
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Scale.major_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '2' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Scale.minor_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '3' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Scale.show_all_scales(note).to_s.colorize(:color => :red, :background => :black)
    end
end

puts initial_menu
puts 'Deseja reomeçar? <s/n>'.red
continue = gets.chomp

if continue == 'n' || continue == 'N'
  puts 'Adeus!'.blue
end

while continue == 's' || continue == 'S' do
 puts initial_menu
 puts 'Deseja recomeçar? <s/n>'.red
 continue = gets.chomp
end
