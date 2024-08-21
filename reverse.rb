def reverse(word)
  new_reversed_char = []
  raise ArgumentError, "Word cannot be nil" if word.nil?
  (word.length - 1).downto(0) do |i|
    new_reversed_char << word[i]
  end
  return new_reversed_char.join('')
end


reverse('hello')
reverse('world')
# https://exercism.org/tracks/ruby/exercises/reverse-string
