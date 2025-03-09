# Create a vector
v <- c(1,2,3)
# Create a matrix
m <- matrix(1:10, nrow=2)
# Create a Data Frame
df <- mtcars

# Now, create a list with all the other structures: vector, matrix
# and Data Frame
my.list <- list(v,m,df)
# If list is printed, it shows all the structure it holds.
View(my.list)

# It's possible to name the elements of a list. If displayed outside
# View(), the name of the elements of a list will be prefixed with a $
my.named.list <- list(sample_vec = v, sample_matrix = m, sample_dataframe = df)
View(my.named.list)

# Different ways to access the same item in a list.
my.named.list$sample_dataframe
my.named.list['sample_dataframe']
my.named.list[3]

# When inspecting an element from a list with class, the type 
# returned is still a list although the element itself is of a
# different type.
class(my.named.list['sample_dataframe']) # Returns list
# However, when using the $ notation, the object return is of the
# original type of that object. 
class(my.named.list$sample_dataframe) # Returns data.frame
# The same result is obtained when using double brackets notation
class(my.named.list[['sample_dataframe']]) # Returns data.frame

# Lists can hold lists. The following command creates a variable
# using c function. Although c creates a vector, in this case it will
# create a list. Running class(double.list) returns "list".
double.list <- c(my.list,my.named.list)
class(double.list)
double.list

# List structure can be inspected with str()
str(double.list)