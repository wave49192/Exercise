def raindrop(num)

  unless num.is_a?(Integer)
   return "Error: Input must be an integer."
    
  end

  result = ''
  result += "pling" if num % 3 == 0
  result += "plang" if num % 5 == 0
  result += "plong" if num % 7 == 0
  result.empty? ? num : result

end

raindrop(6)
raindrop(5)
raindrop(7)
raindrop(23)
raindrop(30)
raindrop("d")
# https://exercism.org/tracks/ruby/exercises/raindrops
