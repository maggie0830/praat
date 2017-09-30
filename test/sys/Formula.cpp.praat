# File sys/Formula.cpp.praat
# Generated by test/createTests.praat
# Wed Sep 13 22:42:24 2017

#
# result = x + y
#
x = 5
y = 6
result = x + y
assert result = 11

#
# result# = x + owned y#
#
result# = 5 + { 11, 13, 31 }   ; numeric vector literals are owned
assert result# = { 16, 18, 36 }

#
# result# = x + unowned y#
#
y# = { 17, -11, 29 }
result# = 30 + y#   ; numeric vector variables are not owned
assert result# = { 47, 19, 59 }

#
# Error: unequal sizes.
#
x# = { 11, 13, 17 }
y# = { 8, 90 }
asserterror When adding vectors, their numbers of elements should be equal, instead of 3 and 2.
result# = x# + y#

#
# result# = owned x# + y#
#
x# = { 11, 13, 17 }
result# = x# + { 44, 56, 67 }   ; owned + unowned
assert result# = { 55, 69, 84 }
y# = { 3, 2, 89.5 }
result# = x# + y#   ; owned + owned
assert result# = { 14, 15, 106.5 }

#
# result# = unowned x# + owned y#
#
x# = { 14, -3, 6.25 }
result# = x# + { 55, 1, -89 }
assert result# = { 69, -2, -82.75 }

#
# result# = unowned x# + unowned y#
#
x# = { 14, -33, 6.25 }
y# = { -33, 17, 9 }
result# = x# + y#
assert result# = { -19, -16, 15.25 }

appendInfoLine: "sys/Formula.cpp.praat", " OK"