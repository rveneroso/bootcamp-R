# Creates a matrix with 50 elements, being the numbers from 1 to 50.
# Matrix will be fulfilled by row. The final matrix will have 5 rows
# and 10 columns with line 1 starting with 1 and ending with 10.
mat <- matrix(1:50,byrow=TRUE,nrow=5)

# Returns all the columns from row 1
mat[1,]

# Returns column 1 from all the rows
mat[,1]

# Returns column 1 from rows 1,2 and 3
mat[1:3,]

# Returns columns 1,2 and 3 from rows 1 and 2.
mat[1:2,1:3]