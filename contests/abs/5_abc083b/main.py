n,a,b = map(int, input().split())

all_sum = 0
for i in range(n+1):
  ns = str(i)
  s = sum([int(s) for s in ns])
  if s >= a and s <= b:
    all_sum = all_sum + i
print(all_sum)
