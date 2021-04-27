class Tone
require 'colorize'

  NATURAL = %w[C D E F G A B].freeze

  CHROMATIC = %w[C C#/Db D D#/Eb E F F#/Gb G G#/Ab A A#/Bb B].freeze
  SCALE_MAJOR_PATTERN_5 = [7, 9, 11, 0, 2, 4, 6].freeze
  SCALE_MAJOR_PATTERN_6 = [8, 10, 0, 1, 3, 5, 7].freeze
  SCALE_MAJOR_PATTERN_7 = [10, 0, 2, 3, 5, 7, 9].freeze

  SCALE_MINOR_PATTERN_1 = [0, 2, 3, 5, 7, 8, 10].freeze
  SCALE_MINOR_PATTERN_2 = [2, 4, 5, 7, 9, 10, 0].freeze
  SCALE_MINOR_PATTERN_3 = [4, 6, 7, 9, 11, 0, 2].freeze
  SCALE_MINOR_PATTERN_4 = [5, 7, 8, 10, 0, 1, 3].freeze
  SCALE_MINOR_PATTERN_5 = [7, 9, 10, 0, 2, 3, 5].freeze
  SCALE_MINOR_PATTERN_6 = [9, 11, 0, 2, 4, 5, 7].freeze
  SCALE_MINOR_PATTERN_7 = [10, 0, 1, 3, 5, 6, 8].freeze

  CHROMATIC_PAIR = { "C#" => "C#/Db", "D#" => "D#/Eb", "F#" => "F#/Gb", "A#" => "A#/Bb", 
                     "Db" => "C#/Db", "Eb" => "D#/Eb", "Gb" => "F#/Gb", "Bb" => "A#/Bb"}

  def self.show_all_scales_by_note(note)
    # Possible major scales
    major_1 = Tone.major_by_note_1(note)
    major_2 = Tone.major_by_note_2(note)
    major_3 = Tone.major_by_note_3(note)
    major_4 = Tone.major_by_note_4(note)
    major_5 = Tone.major_by_note_5(note)
    major_6 = Tone.major_by_note_6(note)
    major_7 = Tone.major_by_note_7(note)
    all_major = [major_1, major_2, major_3, major_4, major_5, major_6, major_7]
    # Possible minor scales
    minor_1 = Tone.minor_by_note_1(note)
    minor_2 = Tone.minor_by_note_2(note)
    minor_3 = Tone.minor_by_note_3(note)
    minor_4 = Tone.minor_by_note_4(note)
    minor_5 = Tone.minor_by_note_5(note)
    minor_6 = Tone.minor_by_note_6(note)
    minor_7 = Tone.minor_by_note_7(note)
    all_minor = [minor_1, minor_2, minor_3, minor_4, minor_5, minor_6, minor_7]
    
    all_scales_by_note = { major: all_major, minor: all_minor}
  end
  def self.major_by_note_4(note)
    major_note_index_4 = index_of_mode(note)

    SCALE_MAJOR_PATTERN_4.map do |major_interval_4| # Interação
      major_scale_note_index_4 = major_note_index_4 + major_interval_4

      if major_scale_note_index_4 <= (CHROMATIC.length - 1)
        CHROMATIC[major_scale_note_index_4]

      else
        reseted_major_scale_note_index_4 = major_scale_note_index_4 - CHROMATIC.length
        CHROMATIC[reseted_major_scale_note_index_4]
      end
    end
  end

  def self.major_by_note_5(note)
    major_note_index_5 = index_of_mode(note)

    SCALE_MAJOR_PATTERN_5.map do |major_interval_5| # Interação
      major_scale_note_index_5 = major_note_index_5 + major_interval_5

      if major_scale_note_index_5 <= (CHROMATIC.length - 1)
        CHROMATIC[major_scale_note_index_5]
      else
        reseted_major_scale_note_index_5 = major_scale_note_index_5 - CHROMATIC.length
        CHROMATIC[reseted_major_scale_note_index_5]
      end
    end
  end

  def self.major_by_note_6(note)
    major_note_index_6 = index_of_mode(note)

    SCALE_MAJOR_PATTERN_6.map do |major_interval_6| # Interação
      major_scale_note_index_6 = major_note_index_6 + major_interval_6

      if major_scale_note_index_6 <= (CHROMATIC.length - 1)
        CHROMATIC[major_scale_note_index_6]
      else
        reseted_major_scale_note_index_6 = major_scale_note_index_6 - CHROMATIC.length
        CHROMATIC[reseted_major_scale_note_index_6]
      end
    end
  end

  def self.major_by_note_7(note)
    major_note_index_7 = index_of_mode(note)

    SCALE_MAJOR_PATTERN_7.map do |major_interval_7| # Interação
      major_scale_note_index_7 = major_note_index_7 + major_interval_7

      if major_scale_note_index_7 <= (CHROMATIC.length - 1)
        CHROMATIC[major_scale_note_index_7]
      else
        reseted_major_scale_note_index_7 = major_scale_note_index_7 - CHROMATIC.length
        CHROMATIC[reseted_major_scale_note_index_7]
      end
    end
  end

  def self.minor_by_note_1(note)
    minor_note_index_1 = index_of_mode(note)

    SCALE_MINOR_PATTERN_1.map do |minor_interval_1| # Interação
      minor_scale_note_index_1 = minor_note_index_1 + minor_interval_1

      if minor_scale_note_index_1 <= (CHROMATIC.length - 1)
        CHROMATIC[minor_scale_note_index_1]
      else
        reseted_minor_scale_note_index_1 = minor_scale_note_index_1 - CHROMATIC.length
        CHROMATIC[reseted_minor_scale_note_index_1]
      end
    end
  end

  def self.minor_by_note_1(note)
    minor_note_index_1 = index_of_mode(note)

    SCALE_MINOR_PATTERN_1.map do |minor_interval_1| # Interação
      minor_scale_note_index_1 = minor_note_index_1 + minor_interval_1

      if minor_scale_note_index_1 <= (CHROMATIC.length - 1)
        CHROMATIC[minor_scale_note_index_1]
      else
        reseted_minor_scale_note_index_1 = minor_scale_note_index_1 - CHROMATIC.length
        CHROMATIC[reseted_minor_scale_note_index_1]
      end
    end
  end

  def self.minor_by_note_2(note)
    minor_note_index_2 = index_of_mode(note)

    SCALE_MINOR_PATTERN_2.map do |minor_interval_2| # Interação
      minor_scale_note_index_2 = minor_note_index_2 + minor_interval_2

      if minor_scale_note_index_2 <= (CHROMATIC.length - 1)
        CHROMATIC[minor_scale_note_index_2]
      else
        reseted_minor_scale_note_index_2 = minor_scale_note_index_2 - CHROMATIC.length
        CHROMATIC[reseted_minor_scale_note_index_2]
      end
    end
  end

  def self.minor_by_note_3(note)
    minor_note_index_3 = index_of_mode(note)

    SCALE_MINOR_PATTERN_3.map do |minor_interval_3| # Interação
      minor_scale_note_index_3 = minor_note_index_3 + minor_interval_3

      if minor_scale_note_index_3 <= (CHROMATIC.length - 1)
        CHROMATIC[minor_scale_note_index_3]
      else
        reseted_minor_scale_note_index_3 = minor_scale_note_index_3 - CHROMATIC.length
        CHROMATIC[reseted_minor_scale_note_index_3]
      end
    end
  end

  def self.minor_by_note_4(note)
    minor_note_index_4 = index_of_mode(note)

    SCALE_MINOR_PATTERN_4.map do |minor_interval_4| # Interação
      minor_scale_note_index_4 = minor_note_index_4 + minor_interval_4

      if minor_scale_note_index_4 <= (CHROMATIC.length - 1)
        CHROMATIC[minor_scale_note_index_4]
      else
        reseted_minor_scale_note_index_4 = minor_scale_note_index_4 - CHROMATIC.length
        CHROMATIC[reseted_minor_scale_note_index_4]
      end
    end
  end

  def self.minor_by_note_5(note)
    minor_note_index_5 = index_of_mode(note)

    SCALE_MINOR_PATTERN_5.map do |minor_interval_5| # Interação
      minor_scale_note_index_5 = minor_note_index_5 + minor_interval_5

      if minor_scale_note_index_5 <= (CHROMATIC.length - 1)
        CHROMATIC[minor_scale_note_index_5]
      else
        reseted_minor_scale_note_index_5 = minor_scale_note_index_5 - CHROMATIC.length
        CHROMATIC[reseted_minor_scale_note_index_5]
      end
    end
  end

  def self.minor_by_note_6(note)
    minor_note_index_6 = index_of_mode(note)

    SCALE_MINOR_PATTERN_6.map do |minor_interval_6| # Interação
      minor_scale_note_index_6 = minor_note_index_6 + minor_interval_6

      if minor_scale_note_index_6 <= (CHROMATIC.length - 1)
        CHROMATIC[minor_scale_note_index_6]
      else
        reseted_minor_scale_note_index_6 = minor_scale_note_index_6 - CHROMATIC.length
        CHROMATIC[reseted_minor_scale_note_index_6]
      end
    end
  end

  def self.minor_by_note_7(note)
    minor_note_index_7 = index_of_mode(note)

    SCALE_MINOR_PATTERN_7.map do |minor_interval_7| # Interação
      minor_scale_note_index_7 = minor_note_index_7 + minor_interval_7

      if minor_scale_note_index_7 <= (CHROMATIC.length - 1)
        CHROMATIC[minor_scale_note_index_7]
      else
        reseted_minor_scale_note_index_7 = minor_scale_note_index_7 - CHROMATIC.length
        CHROMATIC[reseted_minor_scale_note_index_7]
      end
    end
  end

  def self.index_of_mode(note)
    CHROMATIC.index(note) || CHROMATIC.index(CHROMATIC_PAIR[note])
  end
end

