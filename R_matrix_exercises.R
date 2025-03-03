# Create 2 vectors A and B, where A is (1,2,3) and B is (4,5,6). 
# With these vectors, use the cbind() or rbind() function to create a 2 by 3 matrix from the vectors. 
# You'll need to figure out which of these binding functions is the correct choice.
A <- c(1,2,3)
B <- c(4,5,6)
result <- rbind(A,B)

# rbind is the correct choice as it will create a matrix whose row number is equal to the number of 
# vectors used in the creation.
str(result)
dim(result)

# Create a 3 by 3 matrix consisting of the numbers 1-9. Create this matrix using the shortcut 1:9 
# and by specifying the nrow argument in the matrix() function call. Assign this matrix to the variable mat.
# Note: there's nothing about matrix direction.
mat <- matrix(1:9,nrow=3)

# Confirm that mat is a matrix using is.matrix() 
is.matrix(mat)

# Create a 5 by 5 matrix consisting of the numbers 1-25 and assign it to the variable mat2. 
# The top row should be the numbers 1-5. 
mat2 <- matrix(1:25,nrow=5,byrow=TRUE)

# Using indexing notation, grab a sub-section of mat2 from the previous exercise that looks like this: 
# [7,8]
# [12,13]
subsection.matrix <- mat2[2:3,2:3]

# Using indexing notation, grab a sub-section of mat2 from the previous exercise that looks like this: 
# [19,20]
# [24,25]
subsection2.matrix <- mat2[4:5,4:5]

# What is the sum of all the elements in mat2? 
mat2.sum <- sum(mat2)

# Find out how to use runif() to create a 4 by 5 matrix consisting of 20 random numbers (4*5=20). 
random.matrix <- matrix(c(runif(20)),nrow=4)
# There is no need to convert the random numbers to a vector before using them as matrix elements. This can be done directly.
another.random.matrix <- matrix(runif(20),nrow=4)
View(random.matrix)
View(another.random.matrix)
