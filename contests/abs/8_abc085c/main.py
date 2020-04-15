# WA

num,yen = map(int, input().split())

x = yen // 10000
y = 1 if (yen % 10000) > 5000 else 0
z = ((yen % 10000) - y*5000) // 1000

if (x + y + z) > num:
  print('-1 -1 -1')
  exit()

rest = num - x - y - z

# (-1, +2, 0) =1
# (-1, +1, +5)=5
# (-1, 0, +10)=9
# (0, -1, +5) =4
# (+1, -3, +5)=3

# 9
snine = min(rest // 9, x)
rest = rest - snine*9
x = x - snine
z = z + snine*10

# 3
if x == 0:
  sthree = min(rest // 3, y // 3)
  rest = rest - sthree*3
  x = x + sthree
  y = y - sthree*3
  z = z + sthree*5

# 5
if rest >= 5 and x >= 1:
  rest = rest - 5
  x = x - 1
  y = y + 1
  z = z + 5

# 4
if rest >= 4 and y == 0 and x >= 1:
  rest = rest - 1
  x = x - 1
  y = y + 2
while rest >= 4 and y >= 1:
  rest = rest - 4
  y = y - 1
  z = z + 5

# 1
while rest >= 1 and x >= 1:
  rest = rest - 1
  x = x - 1
  y = y + 2

# fail
if rest != 0:
  print('-1 -1 -1')
  exit()

print('{} {} {}'.format(x, y, z))
