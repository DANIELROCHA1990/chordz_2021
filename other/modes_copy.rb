class Modes

  require 'colorize'
  CHROMATIC = %w[C C#/Db D D#/Eb E F F#/Gb G G#/Ab A A#/Bb B].freeze
  SCALE_IONIAN_MODE = [0, 2, 4, 5, 7, 9, 11, 0].freeze  # T T st T T T st
  SCALE_DORIAN_MODE = [2, 4, 5, 7, 9, 11, 0, 2].freeze  # T st T T T st T
  SCALE_PHRYGIAN_MODE = [4, 5, 7, 9, 11, 0, 2, 4].freeze # st T T T st T T
  SCALE_LYDIAN_MODE = [5, 7, 9, 11, 0, 2, 4, 5].freeze # T T T st T T st
  SCALE_MIXOLYDIAN_MODE = [7, 9, 11, 0, 2, 4, 5, 7].freeze # T T st T T st T
  SCALE_AEOLIAN_MODE = [9, 11, 0, 2, 4, 5, 7, 9].freeze # T st T T st T T
  SCALE_LOCRIAN_MODE = [11, 0, 2, 4, 5, 7, 9, 11].freeze # st T T st T T T
  CHROMATIC_PAIR = { "C#" => "C#/Db", "D#" => "D#/Eb", "F#" => "F#/Gb", "A#" => "A#/Bb", 
                     "Db" => "C#/Db", "Eb" => "D#/Eb", "Gb" => "F#/Gb", "Bb" => "A#/Bb"}


  def self.make_mode(all_scale_pattern = SCALE_DORIAN_MODE || SCALE_PHRYGIAN_MODE || SCALE_LYDIAN_MODE ||
    SCALE_MIXOLYDIAN_MODE || SCALE_AEOLIAN_MODE || SCALE_LOCRIAN_MODE, sub_index = (1..11), note)

     note_index = index_of_mode(note)
     all_scale_pattern.map do |interval|
      scale_note_index = (note_index - sub_index) + interval

      if scale_note_index <= (CHROMATIC.length - 1)
        CHROMATIC[scale_note_index]
      else
        new_scale_note_index = scale_note_index - CHROMATIC.length
        CHROMATIC[new_scale_note_index]
      end
    end
  end

  def self.show_all_modes_by(note)

    ionian = Modes.ionian_by_note(note)

    dorian = Modes.dorian_by_note(note)

    phrygian = Modes.phrygian_by_note(note)

    lydian = Modes.lydian_by_note(note)

    mixolydian = Modes.mixolydian_by_note(note)

    aeolian = Modes.aeolian_by_note(note)

    locrian = Modes.locrian_by_note(note)

    all_modes = { ionian: ionian, dorian: dorian, phrygian: phrygian, lydian: lydian, mixolydian: mixolydian,

                  aeolian: aeolian, locrian: locrian }

  end

  def self.ionian_by_note(note)
    ionian_note_index = index_of_mode(note)

    SCALE_IONIAN_MODE.map do |ionian_interval| # Interação
      ionian_scale_note_index = ionian_note_index + ionian_interval

      if ionian_scale_note_index <= (CHROMATIC.length - 1)
        CHROMATIC[ionian_scale_note_index]
      else
        reseted_ionian_scale_note_index = ionian_scale_note_index - CHROMATIC.length
        CHROMATIC[reseted_ionian_scale_note_index]
      end
    end
  end

  def self.dorian_by_note(note)
    make_mode(SCALE_DORIAN_MODE, 2, note)
  end

  def self.phrygian_by_note(note)

    phrygian_note_index = index_of_mode(note)

    SCALE_PHRYGIAN_MODE.map do |phrygian_interval| # Interação
      phrygian_scale_note_index = (phrygian_note_index - 4) + phrygian_interval

      if phrygian_scale_note_index <= (CHROMATIC.length - 1)
        CHROMATIC[phrygian_scale_note_index]
      else
        reseted_phrygian_scale_note_index = phrygian_scale_note_index - CHROMATIC.length
        CHROMATIC[reseted_phrygian_scale_note_index]
      end
    end
  end

  def self.lydian_by_note(note)

    lydian_note_index = index_of_mode(note)



    SCALE_LYDIAN_MODE.map do |lydian_interval| # Interação

      lydian_scale_note_index = (lydian_note_index - 5) + lydian_interval



      if lydian_scale_note_index <= (CHROMATIC.length - 1)

        CHROMATIC[lydian_scale_note_index]

      else

        reseted_lydian_scale_note_index = lydian_scale_note_index - CHROMATIC.length

        CHROMATIC[reseted_lydian_scale_note_index]

      end

    end

  end

  def self.mixolydian_by_note(note)

    mixolydian_note_index = index_of_mode(note)



    SCALE_MIXOLYDIAN_MODE.map do |mixolydian_interval| # Interação

      mixolydian_scale_note_index = (mixolydian_note_index - 7) + mixolydian_interval



      if mixolydian_scale_note_index <= (CHROMATIC.length - 1)

        CHROMATIC[mixolydian_scale_note_index]

      else

        reseted_mixolydian_scale_note_index = mixolydian_scale_note_index - CHROMATIC.length

        CHROMATIC[reseted_mixolydian_scale_note_index]

      end

    end

  end

  def self.aeolian_by_note(note)

    aeolian_note_index = index_of_mode(note)



    SCALE_AEOLIAN_MODE.map do |aeolian_interval| # Interação

      aeolian_scale_note_index = (aeolian_note_index - 9) + aeolian_interval



      if aeolian_scale_note_index <= (CHROMATIC.length - 1)

        CHROMATIC[aeolian_scale_note_index]

      else

        reseted_aeolian_scale_note_index = aeolian_scale_note_index - CHROMATIC.length

        CHROMATIC[reseted_aeolian_scale_note_index]

      end

    end

  end

  def self.locrian_by_note(note)

    locrian_note_index = index_of_mode(note)



    SCALE_LOCRIAN_MODE.map do |locrian_interval| # Interação

      locrian_scale_note_index = (locrian_note_index - 11) + locrian_interval



      if locrian_scale_note_index <= (CHROMATIC.length - 1)

        CHROMATIC[locrian_scale_note_index]

      else

        reseted_locrian_scale_note_index = locrian_scale_note_index - CHROMATIC.length

        CHROMATIC[reseted_locrian_scale_note_index]

      end

    end

  end

  def self.index_of_mode(note)
    CHROMATIC.index(note) || CHROMATIC.index(CHROMATIC_PAIR[note])
  end
end



puts
puts "##################".green
puts "#      Modes     #".green
puts "##################".green

def initial_menu_modes
  puts "Escolha o modo abaixo:".green
  puts "1 - Ionian| 2 - Dorian| 3 - Phrygian| 4 - Lydian| 5 - Mixolydian| 6 - Aeolian| 7 - Locrian| 8 - ALL".blue
option = gets.chomp

  case option
    when '1' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Modes.ionian_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '2' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Modes.dorian_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '3' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Modes.phrygian_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '4' then
      puts 'Digite a nota em CAIXA ALTA:'
      puts note = gets.chomp
      puts Modes.lydian_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '5' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Modes.mixolydian_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '6' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Modes.aeolian_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '7' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Modes.locrian_by_note(note).to_s.colorize(:color => :red, :background => :black)
    when '8' then
      puts 'Digite a nota em CAIXA ALTA:'
      print note = gets.chomp
      puts Modes.show_all_modes_by(note).to_s.colorize(:color => :red, :background => :black)
    else option !=(1..8) 
      puts "Escolha uma opção válida!".red
      initial_menu_modes
    end
  end

puts initial_menu_modes
puts 'Deseja reomeçar? <s/n>'.red
continue_modes = gets.chomp

if continue_modes == 'n' || continue_modes == 'N'
  puts 'Adeus!'
end

while continue_modes == 's' || continue_modes == 'S' do
 puts initial_menu_modes
 puts 'Deseja recomeçar? <s/n>'.red
 continue_modes = gets.chomp
end