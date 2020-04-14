a = int(input())
b = int(input())
c = int(input())
x = int(input())

n = 0
for ai in range(a+1):
  an = ai*500
  for bi in range(b+1):
    bn = bi*100
    for ci in range(c+1):
      cn = ci*50
      if an+bn+cn == x:
        n = n + 1
print(n)
