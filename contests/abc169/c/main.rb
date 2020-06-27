ASTR, BSTR = gets.split
A = ASTR.to_i
B = BSTR.to_f

puts (A * (B * 100).round / 100).floor

# ---

# require "bigdecimal"

# ASTR, BSTR = gets.split
# A = BigDecimal(ASTR)
# B = BigDecimal(BSTR)

# puts (A * B).floor
