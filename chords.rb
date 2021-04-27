class Chord
require 'colorize'
  NATURAL = %w[C D E F G A B].freeze
  CHROMATIC_CHORDS = %w[C C#/Db D D#/Eb E F F#/Gb G G#/Ab A A#/Bb B].freeze
  CHORD_MAJOR_PATTERN = [0, 4, 7].freeze  # Tonica-terça maior-quinta justa
  CHORD_MINOR_PATTERN = [0, 3, 7].freeze # Tonica-terça menor-quinta justa
  CHORD_DIMINISHED_PATTERN = [0, 3, 6].freeze # Tonica-terça menor-quinta menor
  CHROMATIC_PAIR = { "C#" => "C#/Db", "D#" => "D#/Eb", "F#" => "F#/Gb", "A#" => "A#/Bb", 
                     "Db" => "C#/Db", "Eb" => "D#/Eb", "Gb" => "F#/Gb", "Bb" => "A#/Bb"}

  def self.show_all_chord_form(note)
  
    major = Chord.major_chord_form_by_note(note)
    minor = Chord.minor_chord_form_by_note(note)
    diminished = Chord.diminished_chord_form_by_note(note)
    all_chord_form = { minor: minor, major: major, diminished: diminished}
  end

  def self.major_chord_form_by_note(note)
      major_chord_index = index_of_chords(note)

    CHORD_MAJOR_PATTERN.map do |major_chord_interval| # Interação com a classe Chord
      major_chord_note_index = major_chord_index + major_chord_interval

      if major_chord_note_index <= (CHROMATIC_CHORDS.length - 1)
        CHROMATIC_CHORDS[major_chord_note_index]
      else
        new_major_chord_note_index = major_chord_note_index - CHROMATIC_CHORDS.length
        CHROMATIC_CHORDS[new_major_chord_note_index]
      end
    end
  end

  def self.minor_chord_form_by_note(note)
     minor_chord_index = index_of_chords(note)

    CHORD_MINOR_PATTERN.map do |minor_chord_interval| # Interação com a classe Chord
      minor_chord_note_index = minor_chord_index + minor_chord_interval

      if minor_chord_note_index <= (CHROMATIC_CHORDS.length - 1)
        CHROMATIC_CHORDS[minor_chord_note_index]
      else
        new_minor_chord_note_index = minor_chord_note_index - CHROMATIC_CHORDS.length
        CHROMATIC_CHORDS[new_minor_chord_note_index]
      end
    end
  end

  def self.diminished_chord_form_by_note(note)
      diminished_chord_index = index_of_chords(note)

     CHORD_DIMINISHED_PATTERN.map do |diminished_chord_interval| # Interação com a classe Chord
      diminished_chord_note_index = diminished_chord_index + diminished_chord_interval

      if diminished_chord_note_index <= (CHROMATIC_CHORDS.length - 1)
        CHROMATIC_CHORDS[diminished_chord_note_index]
      else
        new_diminished_chord_note_index = diminished_chord_note_index - CHROMATIC_CHORDS.length
        CHROMATIC_CHORDS[new_diminished_chord_note_index]
      end
    end
  end

  def self.index_of_chords(note)
    CHROMATIC_CHORDS.index(note) || CHROMATIC_CHORDS.index(CHROMATIC_PAIR[note])
  end
end

puts
puts "##################".green
puts "#     CHORDS     #".green
puts "##################".green


def initial_menu_chords
  puts "Escolha o modo abaixo:".green
  puts "1 - Maior| 2 - Menor| 3 - Diminuto| 4 - ALL".blue
option_chords = gets.chomp

  case option_chords
    when '1' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Chord.major_chord_form_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '2' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Chord.minor_chord_form_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '3' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Chord.diminished_chord_form_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '4' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Chord.show_all_chord_form(note).to_s.colorize(:color => :red, :background => :black)
    else option_chords !=(1..4) 
      puts "Escolha uma opção válida!".red
      initial_menu_chords
    end
end

puts initial_menu_chords
puts 'Deseja recomeçar? <s/n>'.red
continue_chords = gets.chomp

if continue_chords == 'n' || continue_chords == 'N'
  puts 'Adeus!'.blue
end

while continue_chords == 's' || continue_chords == 'S' do
 puts initial_menu_chords
 puts 'Deseja recomeçar? <s/n>'.red
 continue_chords = gets.chomp
end