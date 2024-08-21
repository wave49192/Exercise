def series(nums, digit = 3)
  nums = nums.to_a
  nums.each_cons(digit) do |arr|
    puts arr.join("")
  end
end

series([1, 2, 3, 4, 5, 6], 5)

# https://exercism.org/tracks/ruby/exercises/series
