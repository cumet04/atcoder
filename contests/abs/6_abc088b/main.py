input()
inputs = list(map(int, input().split()))

cards = list(reversed(sorted(inputs)))
a = 0
b = 0

for i in range(len(cards)):
  if i % 2 == 0:
    a = a + cards[i]
  else:
    b = b + cards[i]

print(a - b)
