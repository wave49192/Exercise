def series(nums, digit = 3)
  raise ArgumentError, "Number of digits must be greater than 0" unless digit > 0
  nums = nums.to_s
  raise ArgumentError, "Digit is greater than the length of the number" if digit > nums.length

  result = []
  nums.each_char.each_cons(digit) do |arr|
    result << arr.join("")
  end
  result
end

series(123456, 6)
#123456


series(2342, 3)
# 234
# 342

# https://exercism.org/tracks/ruby/exercises/series
