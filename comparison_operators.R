# Comparison operators in R are pretty much other languages.
# Remember that equality operator is a double equal sign.
5 == 5 # Returns true
5 == 6 # Returns false
# A single equal sign results in error because a single equal sign,
# like <- is used for assignments, not comparison.
# 5 = 5 # Results in error

# It's important to pay attention when comparing negative values. If
# spacing is wrong, comparison can result in an assignment.
a <- 7
a < -1 # Returns FALSE
a <-1  # Assigns 1 to a. Now a is 1.

# Comparing a vector against a single value results in comparing
# each vector element to that value.
v <- c(1,2,3,4,5)
# The bellow comparison results in [1]  TRUE FALSE FALSE FALSE FALSE
# as the only element of the vector less than 2 is 1. So we have
# TRUE in the first position and FALSE on the other ones.
v < 2

# Same applies to equality. The bellow comparison results in
# [1] FALSE FALSE  TRUE FALSE FALSE
v == 3

# It's also possible to compare entire vectors.
v2 <- c(10,20,30,40,50)
# The bellow comparison results in 5 TRUE values as each element
# from vector v is less than the value of the correspondent element
# in vector v2 (1 is less than 10, 2 is less than 20 and so on).
v1 < v2
