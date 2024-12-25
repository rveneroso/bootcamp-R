# Shortcut to create a sequencial numeric vector. The following code
# will create this vector: [1]  1  2  3  4  5  6  7  8  9 10
vector <- 1:10

# Creating a Matrix using the vector created above. The resulting
# matrix will be 10 row, 1 column like this:
# [,1]
# [1,]    1
# [2,]    2
# [3,]    3
# [4,]    4
# [5,]    5
# [6,]    6
# [7,]    7
# [8,]    8
# [9,]    9
# [10,]   10
matrix(vector)

# If the nrow parameter is used the resulting matrix will have
# nrow rows. Using the vector variable to create a 2 rows matrix
# will resulting in a matrix like this:
# [,1] [,2] [,3] [,4] [,5]
# [1,]    1    3    5    7    9
# [2,]    2    4    6    8   10
# The final matrix will still have 2 rows and five columns as R
# 'spread' vector elements across the 2 rows. As vector has 10 
# elements, each row in the final matrix will have 5 columns.
matrix(vector, nrow = 2);

# In the case the number of elements of the vector to be used to
# create the matrix cannot be equally distributed across the matrix
# lines, a warning message will be displayed and repeated elements
# will be used to fill the matrix:
#   Warning message:
#   In matrix(fifteenElements, nrow = 2) :
#   data length [15] is not a sub-multiple or multiple of the number of rows [2]
#   
fifteenElements <- 1:15
unevenElementsMatrix <- matrix(fifteenElements, nrow =2)
print(unevenElementsMatrix)

# By default a matrix in R is created by rows as the previous
# examples. However, this behaviour can be changed by setting
# the byrow parameter to false. The following example will create
# a matrix with 4 rows. Notice that the base vector can be passed
# directly to the matrix function. Matrix byRowsMatrix will be:
#
# [,1] [,2] [,3]
# [1,]    1    5    9
# [2,]    2    6   10
# [3,]    3    7   11
# [4,]    4    8   12
byRowsMatrix <- matrix(1:12, byrow = FALSE, nrow = 4)
print(byRowsMatrix)

# It's important to notice that the way the matrix is displayed
# indicates both row syntax ([1,]) and column syntax ([,1])
print(byRowsMatrix[2,2]) # Row 2, column 2 - element 6
print(byRowsMatrix[3,2]) # Row 3, column 2 - element 7

# If a matrix is created passing the nrow=n and byrow=TRUE,
# R will fill all the columns of a row before pass to the next
# row. In the previous example one can see that first R created
# the first column of every row and only then started filling
# the next columns. By passing by nrow=4 and byrow=TRUE, R will
# create a matrix filling all the columns of the first line and
# only then started fill the next rows:
#
# [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
# [3,]    7    8    9
# [4,]   10   11   12
byColumnsMatrix <- matrix(1:12, byrow = T, nrow = 4)
print(byColumnsMatrix)

# Stock prices for Google and Microsoft vector
goog <- c(450,451,452,445,468)
msft <- c(203,231,232,233,220)

# Combining (c function) both vectors results in a unidimensional
# vector:
# [1] 450 451 452 445 468 203 231 232 233 220
stocks <- c(goog,msft)
print(stocks)

# To create a matrix with 2 rows using stocks vector as base one
# can use the matrix function with the following syntax:
stock.matrix <- matrix(stocks, byrow=T, nrow=2)
print(stock.matrix)
# Resulting matrix will be:
# [,1] [,2] [,3] [,4] [,5]
# [1,]  450  451  452  445  468
# [2,]  203  231  232  233  220

# To name a matrix rows and columns functions colnames and rownames
# can be used. Below command will result in this matrix:
# 
# Mon Tue Wed Thu Fri
# Google    450 451 452 445 468
# Microsoft 203 231 232 233 220
days <- c('Mon','Tue','Wed','Thu','Fri')
st.names <- c('Google','Microsoft')

colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names
print(stock.matrix)

