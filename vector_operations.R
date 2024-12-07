# Vectors of same size and with same type elements can be added to each
# other with a single plus operation. The bellow operation will result
# in the vector [1]  6  8 10
v1 <- c(1,2,3)
v2 <- c(5,6,7)
v3 <- v1 + v2
v3

# This is valid for the other arithmetic operations
v1 - v2
v2 - v1
v1 * v2
v2 / v1

# Sum of all vector elements
sum(v1)

# Mean of vector elements
mean(v1)

# Standard deviation
sd(v1)

# Max and min vector elements values
max(v1)
min(v1)

# Product of vector elements values
prod(v1)
prod(v2)

# Vectors of different elements data types cannot be used in some
# operations. The code bellow will result in error.
v3 <- c("A", "B", "C")
v1 + v3