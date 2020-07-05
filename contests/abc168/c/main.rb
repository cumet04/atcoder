A, B, H, M = gets.split.map(&:to_i)

hdig = 2 * Math::PI * (H / 12.0 + M / 12.0 / 60.0)
mdig = 2 * Math::PI * M / 60.0
theta = hdig - mdig

a = A * Math.sin(theta)
b = B - A * Math.cos(theta)
puts Math.sqrt(a ** 2 + b ** 2)
