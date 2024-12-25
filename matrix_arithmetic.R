mat <- matrix(1:25,byrow=T,nrow=5)
print(mat)

# Multiply all matrix elements by 2
print(mat * 2)

# Divide all matrix elements by 2
print(mat / 2)

# Power by 2 all matrix elements
print(mat ^ 2)

# Divide 1 by every matrix element
print(1 / mat)

# As it happens to vectors, logical operations applied to a matrix
# will result in a matrix with original matrix same dimensions
# containg, for every matrix element, the result of the logical
# operation. The following code checks if every matrix element is
# greater than 15. Resulting matrix is:
#
# [1,] FALSE FALSE FALSE FALSE FALSE
# [2,] FALSE FALSE FALSE FALSE FALSE
# [3,] FALSE FALSE FALSE FALSE FALSE
# [4,]  TRUE  TRUE  TRUE  TRUE  TRUE
# [5,]  TRUE  TRUE  TRUE  TRUE  TRUE
print(mat > 15)

# To get a vector with only the matrix elements that satisfies
# the logical condition:
greaterThanFifteen <- mat[mat>15]
print(greaterThanFifteen)

# Arithmetic operations can be performed using the same or different
# matrices
print(mat/mat)
print(mat*mat)
print(mat^mat)

# Algebra matrices multiplication does not produce the same result
# of arithmetic matrices multiplication.
# 
# Matrix multiplication works by taking the **dot product** of the rows of the first matrix with the columns of the second matrix. 
# 
# For each element in the resulting matrix:
#   1. Select a row from the first matrix and a column from the second matrix.
# 2. Multiply the corresponding elements in the row and column.
# 3. Sum up these products.
# 
# This process is repeated for all row-column combinations to fill the entire resulting matrix.
print(mat %*% mat)