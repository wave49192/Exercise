def reverse(word)
  raise ArgumentError, 'Input must be a string-like object' unless word.respond_to?(:length)

  new_reversed_char = []
  (word.length - 1).downto(0) do |i|
    new_reversed_char << word[i]
  end

  new_reversed_char.join('')
end

puts reverse('hello')
puts reverse('world')
puts reverse(123)

# https://exercism.org/tracks/ruby/exercises/reverse-string
