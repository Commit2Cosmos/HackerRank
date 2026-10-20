#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'climbingLeaderboard' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY ranked
#  2. INTEGER_ARRAY player
#

def climbingLeaderboard(ranked, player):
    res = [0] * len(player)
    player_i = len(player)-1
    rank = 1
    
    for i in range(len(ranked)):
        if i > 0 and ranked[i] == ranked[i-1]:
            continue
            
        while player_i >= 0 and player[player_i] >= ranked[i]:
            res[player_i] = rank
            player_i -= 1
            
        rank += 1
        
    while player_i >= 0:
        res[player_i] = rank
        player_i -= 1
        
    return res
        

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    ranked_count = int(input().strip())

    ranked = list(map(int, input().rstrip().split()))

    player_count = int(input().strip())

    player = list(map(int, input().rstrip().split()))

    result = climbingLeaderboard(ranked, player)

    fptr.write('\n'.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
