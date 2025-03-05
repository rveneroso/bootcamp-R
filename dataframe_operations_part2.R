# 1 - Adding Rows
df <- read.csv('saved_df.csv')
df$X <- NULL
df2 <- data.frame(col.name.1 = 2000, col.name.2 = 'new')

# Creates a third Data Frame from the biding of df and df2
dfnew <- rbind(df,df2)

# Adding a new column to df
df$newcol <- 2*df$col.name.1

# A new column can also be created from an existing column
df$newlcol.copy <- df$newcol

# Similar to the previous command
df[,'newcol.copy2'] <- df$newcol

# 2 - Setting Column Names
# Check df Data Frame column names
colnames(df)

# Renaming all df columns at once
colnames(df) <- c('1','2','3','4','5')

# Renaming only one column by its index
colnames(df)[1] <- 'New Column Name'

# 3 - Selecting Multiple Rows
# Select rows by range
df[1:3,] # The first 3 rows

# It's possible to set number of rows in head function
head(df,7) # The first 7 lines of the Data Frame

# Excluding a row from a selecting
df[-2,] # All the rows but 2

# Selects rows that satisfy a given condition.
mtcars[ mtcars$mpg > 20,]

# Select columns mpg, cyl and hp of cars whose mpg > 20 and 
# cylinders =6
mtcars[ (mtcars$mpg > 20) & (mtcars$cyl == 6), c('mpg','cyl','hp')]

# Applying the same condition above but using subset function
subset(mtcars, mpg > 20 & cyl == 6, select = c(mpg, cyl, hp))

# 4 - Dealing with Missing Data
# Checking where (if) are missing values in mtcars Data Frame
is.na(mtcars)

# Using any() function to check if at least one value is missing
# in mtcars.
# The any() function in R checks if at least one element in a logical vector is
# TRUE. It is commonly used for conditions where you need to verify 
# if at least one value meets a criterion.
any(is.na(mtcars)) # Will return FALSE as there is no any missing data in mtcars

# Check if there are any rows in mtcars Data Frame with missing value
# in mpg column
any(is.na(mtcars$mpg))

# Replaces all missing values in df Data Frame with 0
df[is.na(df)] <- 0

# Replaces all missing values in mpg column of mtcars Data Frame
# with the average value of that column
mtcars$mpg[is.na(mtcars$mpg)] <- mean(mtcars$mpg)