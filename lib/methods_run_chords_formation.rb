def option
  @option = gets.chomp
end

def call_method_tetrad
  load './run_tetrad_chords_formation.rb'
  main_menu_tetrad_chords_formation
end

def call_method_triad
  load './run_triad_chord_formation.rb'
  main_menu_triad_chords_formation
end
