# frozen_string_literal: false

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

puts 'Ungolfed'
puts shift('abc', 13)
puts shift('5f6', 16)

# Golfed
s = ->n,b{b<2?n:n.chars.map{|c|(c.to_i(b)+1).to_s(b)[-1]}.join}

puts 'Golfed'
puts s.call('abc', 13)
puts s.call('5f6', 16)
puts s.call('0000', 1)
