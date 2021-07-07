require 'colorize'

load 'lib/key_chord.rb'
load 'key_chords/major_key_chords.rb'
load 'key_chords/minor_key_chords.rb'
load 'key_chords/major_and_minor_key_chords.rb'
load 'lib/methods_run_key_chords.rb'

puts '##################'.green
puts '#   Key Chords   #'.green
puts '##################'.green

def main_menu_key_chords
  puts 'Escolha o modo abaixo:'.green
  puts '1 - Maior| 2 - Menor| 3 - ALL'.blue
  p options_of_key_chords
end

def options_of_key_chords
  case option
  when '1' then scale_presenter_key_chords { KeyChords::MajorKeyChord.by_note(@note) }
  when '2' then scale_presenter_key_chords { KeyChords::MinorKeyChord.by_note(@note) }
  when '3' then scale_presenter_key_chords { KeyChords::MajorAndMinorKeyChord.all_key_chords_by_note(@note) }
  else invalid_option_message_key_chords
  end
end

main_menu_key_chords
