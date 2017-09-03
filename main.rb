# frozen_string_literal: false
# Ben's line of code :)
# Task
# Given a string and a base under 36, shift each digit up by 1.

# Ungolfed
def shift(number, base)
  shifted = ''
  number.each_char do |char|
    shifted << ((char.to_i(base) + 1) % base).to_s(base)
  end
  shifted
end

str_arr = ['abc', '5f6']
num_arr = [13, 16]
len = 0

puts 'Ungolfed'
str_arr.each do |i|
    while len != num_arr.length
      puts shift(i, num_arr[len])
      len+=1
    end
end

#puts shift('abc', 13)
#puts shift('5f6', 16)

# Golfed
s = ->n,b{b<2?n:n.chars.map{|c|(c.to_i(b)+1).to_s(b)[-1]}.join}

puts 'Golfed'
puts s.call('abc', 13)
puts s.call('5f6', 16)
puts s.call('0000', 1)
puts 'Hello World'
