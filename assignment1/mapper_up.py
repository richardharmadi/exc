#!/usr/bin/python

import sys

for line in sys.stdin:                  # input from standard input
    line = line.strip('\n')                 # remove whitespaces
    line = line.upper()
    print("{0}".format(line))  # write the results to standard output

