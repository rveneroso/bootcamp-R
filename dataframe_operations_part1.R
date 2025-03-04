# 1 - Creating Data Frames
# To create a basic empty data frame
empty <- data.frame();

# Create a data frame from a vector
c1 <- 1:10 # A vector of integers from 1 to 10

# R has a built in vector with the alphabet letters
letters

c2 <- letters[1:10] # A vector with the first ten letters.

# Create a data frame from vectors c1 and c2. Name of the first column
# will come from c1 values, name of the second column will come from
# c2 values. Notice: data frame column names will be col.name.1 and 
# col.name.2. These names can be anything one wants.
df <- data.frame(col.name.1 = c1, col.name.2 = c2)

# 2 - Importing and exporting Data
# Exporting a data frame contents to a csv file
# Notice: with this syntax, there will be no name for the row number
# column. It will be exported as an empty string.
write.csv(df, file = 'saved_df.csv')

# Import csv file contents to a data frame.
# Notice: as the csv file was exported without a name for the row
# number column, when importing, R will create an extra column name
# X which is just the row number column.
df.fromfile <- read.csv('saved_df.csv')
# In the case one wants to get rid off this extra column, this can
# be done, for example, like this:
df.fromfile$X <- NULL

# 3 - Getting information about Data Frame
# Getting the number of rows and columns of a Data Frame
nrow(df)
ncol(df)

# Getting the column names of a Data Frame
colnames(df)

# Getting the row names of a Data Frame. As no names were given
# to this Data Frame rows, the result is just the row indexes.
rownames(df)

# Getting information about a Data Frame structure
str(df)

# Getting statistical information about a Data Frame contents
summary(df)

# 4 - Referencing cells
# Getting the value of an specific row and column value. Notice that
# in matrices, there is only one pair of brackets. With Data Frames
# two are needed.
df[[5,2]] # Returns letter 'e'

# Column can also be referenced by its name. The following command
# produces the same result as the previous one.
df[[5,'col.name.2']]

# Assigning a value to a particular cell in the Data Frame
df[[2,'col.name.1']] <- 9999

# 5 - Referencing rows
# Getting all the columns of a particular row
df[1,]
# Getting all the columns of a range o rows
df[1:5,]

# 6 - Referencing columns
# Getting the mpg column values of all cars in mtcars Data Frame
mtcars$mpg # Returns a vector

# The following command produces the same result.
mtcars[,'mpg'] # Returns a data frame

# And the following too.
mtcars[,1] # Returns a vector

# Another option to get the same result.
mtcars[['mpg']] # Returns a vector

# Get a data frame with the mpg column but also the row labels
# It has the same mpg values, but it's wrapped in a data frame with 
# one column and the same row names from the original mtcars data frame.
mtcars['mpg']

# Summary:
# mtcars$mpg and mtcars[[???mpg???]] both return the column as a vector.
# mtcars[,'mpg'] returns the column as a data frame.
# mtcars[,1] returns the first column as a vector, which happens to be mpg in this case.

mtcars[startsWith(mtcars$column_name, "merc"), ]
# Get all rows about Mercedes Benz automobiles.
mercedes_cars <- mtcars[grepl("^Merc", rownames(mtcars)), ]
