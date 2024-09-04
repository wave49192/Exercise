HASH_SCORE = {
  'A' => 1,
  'E' => 1,
  'I' => 1,
  'O' => 1,
  'U' => 1,
  'L' => 1,
  'N' => 1,
  'R' => 1,
  'S' => 1,
  'T' => 1,
  'D' => 2,
  'G' => 2,
  'B' => 3,
  'C' => 3,
  'M' => 3,
  'P' => 3,
  'F' => 4,
  'H' => 4,
  'V' => 4,
  'W' => 4,
  'Y' => 4,
  'K' => 5,
  'J' => 8,
  'X' => 8,
  'Q' => 10,
  'Z' => 10
}.freeze
def scrabble(words)
  raise ArgumentError, "Input must be a string" unless words.is_a?(String)
  sum = 0
  words.upcase.each_char do |char|
    score = HASH_SCORE[char]
    next if score.nil?
    sum += score
  end
  puts "score  #{sum}"
  return sum
end


scrabble("Cabbage")
scrabble("Mango")
# scrabble(1)
# https://exercism.org/tracks/ruby/exercises/scrabble-score
