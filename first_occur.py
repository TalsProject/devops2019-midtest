#!/usr/bin/env python
import sys

arguments = len(sys.argv) - 1

if arguments != 1:
    raise RuntimeError('not passed 1 argument')

result_dict = {}
word = sys.argv[1]
print("the string enterd is {}".format(word))
for index, letter in enumerate(word):
    if letter not in result_dict:
        result_dict[letter] = index

print(result_dict)

