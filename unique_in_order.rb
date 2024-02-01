# Coding exercise: Unique in order
# Implement the method unique_in_order which takes as argument a sequence and returns a list of items
# without any elements with the same value next to each other and preserving the original order of elements

def unique_in_order(sequence)
    unique_sequence = []
    sequence.each_char.with_index do |char, index|
      unique_sequence << char unless sequence[index] == sequence[index + 1]
    end
    unique_sequence
  end
  
  # Test cases
  puts unique_in_order('AAAABBBCCDAABBB')
  puts unique_in_order('ABBCcAD')  
  puts unique_in_order([1,2,2,3,3])
  