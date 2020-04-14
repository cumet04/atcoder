input()
numbers = map(int, input().split())
bins = [bin(n) for n in numbers]

count = 0
while True:
  for b in bins:
    if b[-(count+1)] != '0':
      print(count)
      exit()
  count = count + 1
