# I got this question in the knick of time, I didn't really get the name of the problem., The challenge was to see how many times you needed to fold a piece of paper to reach a desired thickness, and also how wide the paper would need to start out as in order to reach a desired width. Fairly straightforward math indeed. I tried doing this problem in dart, but dart doesn't have the built in math features that python does which made it a terrible choice for this problem. 

import sys
import math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

t, h, w = input().split()
t = float(t)
h = int(h)
w = int(w)

# Write an answer using print
# To debug: print("Debug messages...", file=sys.stderr, flush=True)
nF =  math.ceil(math.log2(h/t)) # number of folds
print( nF )
print( w * 2 ** nF)
