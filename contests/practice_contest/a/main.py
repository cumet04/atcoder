import sys

a = int(sys.stdin.readline())
b,c = [int(s) for s in sys.stdin.readline().split()]
s = sys.stdin.readline().rstrip()

print(str(a+b+c) + ' ' + s)
