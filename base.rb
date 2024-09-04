def base_converter(from_base,num,to_base)
  base10 =  num.to_s.to_i(from_base.to_i)

  return '0' if base10 == 0
  digits = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  result = ''
  while base10 > 0
    remainder = base10 % to_base
    result = digits[remainder] + result
    base10 /= to_base
  end

  puts result
  result
end

base_converter(2,1010,10)
base_converter(10,42,2)
base_converter(2,101010,5)
base_converter(3,1120,4)
base_converter(16,"A",10)
base_converter(10,0,3)


# https://exercism.org/tracks/ruby/exercises/all-your-base
