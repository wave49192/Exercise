def raindrop(num)
  if num % 3 == 0
    puts "pling"
  elsif num % 5 == 0
    puts "plang"
  elsif num % 7 == 0
    puts "plong"
  else
    puts num
  end
end

raindrop(6)
raindrop(5)
raindrop(7)
raindrop(23)

# https://exercism.org/tracks/ruby/exercises/raindrops
