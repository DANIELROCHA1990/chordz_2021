class Key

  require 'colorize'
  NATURAL = %w[C D E F G A B].freeze
  CHROMATIC_KEY_CHORDS = %w[C Cm C° C#/Db C#m/Dbm C#°/Db° D Dm D° D#/Eb D#m/Ebm D#°/Eb°
                        E Em E° F Fm F° F#/Gb F#m/Gbm F#°/Gb° G Gm G° G#/Ab G#m/Abm
                        G#°/Ab° A Am A° A#/Bb A#m/Bbm A#°/Bb° B Bm B°].freeze
  KEY_MAJOR_PATTERN = [0, 7, 13, 15, 21, 28, 35].freeze  # T T st T T T st
  KEY_MINOR_PATTERN = [1, 8, 9, 16, 22, 24, 30].freeze  # T st T T st T T
  CHROMATIC_PAIR = { "C#" => "C#/Db", "D#" => "D#/Eb", "F#" => "F#/Gb", "A#" => "A#/Bb", 
                     "Db" => "C#/Db", "Eb" => "D#/Eb", "Gb" => "F#/Gb", "Bb" => "A#/Bb"}

  def self.show_all_keys(note)
    major_key = [Key.major_key_by_note(note)]
    minor_key = Key.minor_key_by_note(note)
    all_keys_chords = {major: major_key, minor: minor_key}
  end

  def self.major_key_by_note(note)
    major_key_index = index_of_chords(note)

    KEY_MAJOR_PATTERN.map do |major_key_interval| # Interação com a classe Keys
      major_key_note_index = major_key_index + major_key_interval

      if major_key_note_index <= (CHROMATIC_KEY_CHORDS.length - 1)
        CHROMATIC_KEY_CHORDS[major_key_note_index]
      else
        new_major_key_note_index = major_key_note_index - CHROMATIC_KEY_CHORDS.length
        CHROMATIC_KEY_CHORDS[new_major_key_note_index]
      end
    end
  end

  def self.minor_key_by_note(note)
    minor_key_index = index_of_chords(note)

    KEY_MINOR_PATTERN.map do |minor_key_interval| # Interação com a classe Keys
      minor_key_note_index = minor_key_index + minor_key_interval

      if minor_key_note_index <= (CHROMATIC_KEY_CHORDS.length - 1)
        CHROMATIC_KEY_CHORDS[minor_key_note_index]

      else
        new_minor_key_note_index = minor_key_note_index - CHROMATIC_KEY_CHORDS.length
        CHROMATIC_KEY_CHORDS[new_minor_key_note_index]
      end
    end
  end

  def self.index_of_chords(note)
    CHROMATIC_KEY_CHORDS.index(note) || CHROMATIC_KEY_CHORDS.index(CHROMATIC_PAIR[note])
  end
end

puts
puts "##################".green
puts "#   Key Chords   #".green
puts "##################".green


def initial_menu_key_chords
  puts "Escolha o modo abaixo:".green
  puts "1 - Maior| 2 - Menor| 3 - ALL".blue
option_key_chords = gets.chomp

  case option_key_chords
    when '1' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Key.major_key_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '2' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Key.minor_key_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '3' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Key.show_all_keys(note).to_s.colorize(:color => :red, :background => :black)
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
