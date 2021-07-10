def option
  @option = gets.chomp
end

def call_method_tetrad
  load './run_tetrad_chords_formation.rb'
end

def call_method_triad
  load './run_triad_chord_formation.rb'
end
