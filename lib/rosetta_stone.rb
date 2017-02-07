class RosettaStone

  attr_reader :english, :braille, :modifiers

  def initialize
    @english = " !',-.?abcdefghijklmnopqrstuvwxyz".split('')
    @braille = convert_string_braille_to_symbol_braille
    @modifiers = [[:e,:e,:r],[:r,:r,:f]]
    @symbol_braille = [:l, :r, :f, :e]
  end

  # Convert string Braille to symbol braille
  def convert_string_braille_to_symbol_braille
    file = File.open("./data/braille.txt")
    braille = file.read.split("\n")
    converted_braille = []
    # Loop number of braille pairs times
    (braille[0].length/2).times do |pair_index_position|
      subarr = []
      3.times do |n|
        # Look at a pair of dots and assign them a symbol
        pair = braille[n][pair_index_position * 2..pair_index_position * 2 + 1]
        subarr << :l if pair == "0."
        subarr << :r if pair == ".0"
        subarr << :e if pair == ".."
        subarr << :f if pair == "00"
      end
      converted_braille << subarr
    end
    converted_braille
  end


end
  # Create 3 arrays as instance variables
    # Braille alphabet = braille
    # Modifiers = define from somewhere

  # Create four symbols :l, :r, :f, :e


  #convert symbol braille to string braille
    #input is an array of symbol braille elements
    #row 1 string
    #row 2 string
    #row 3 string
    #iterate over input
      #iterate over symbol braille elements
        #convert the symbols in row i using rosetta_stone
        #concat converted symbol to row i string
    #push rows into an array
    #return array




rs = RosettaStone.new
