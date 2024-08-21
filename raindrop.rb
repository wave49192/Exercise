def raindrop(num)
  if num % 3 == 0
    print "pling"
  end
  if num % 5 == 0
    print "plang"
  end
  if num % 7 == 0
    print "plong"
  end
  unless  num % 3 == 0 or num % 5 == 0 or num % 7 == 0
    puts num
  end
  puts ""
end

raindrop(6)
raindrop(5)
raindrop(7)
raindrop(23)
raindrop(30)

# https://exercism.org/tracks/ruby/exercises/raindrops
