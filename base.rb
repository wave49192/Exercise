def base(base_type,num)
  sum =  0
  new_num = num.to_s.reverse.split("")

  new_num.each_with_index do |digit, index|
    digit = digit.to_i  * (base_type ** index)
    sum+= digit
  end
  puts sum
end

base(10,42)
base(2,101010)
base(3,1120)


# https://exercism.org/tracks/ruby/exercises/all-your-base
