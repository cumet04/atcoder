require "bigdecimal"

ASTR, BSTR = gets.split
A = BigDecimal(ASTR)
B = BigDecimal(BSTR)

puts (A * B).floor
