# Recreate the following data frame by creating vectors and using the data.frame function
name <- c('Sam','Frank','Amy')
age <- c(22,25,26)
weight <- c(150,165,120)
sex <- c('M','M','F')

people <- data.frame(name,age,weight,sex)
# The instructor used a different syntax:
people2 <- data.frame(row.name = name,age,weight,sex)

# Check if mtcars is a dataframe using is.data.frame()
is.data.frame(mtcars)

# Use as.data.frame() to convert a matrix into a data frame
mat <- matrix(1:25,nrow = 5)
mat.data.frame <- as.data.frame(mat)
is.data.frame(mat.data.frame)

# Set the built-in data frame mtcars as a variable df. We'll use this df variable for the rest of the exercises
df <- mtcars
is.data.frame(df)

# Display the first 6 rows of df 
head(df,6)

# What is the average mpg value for all the cars?
mean(df$mpg)

# Select the rows where all cars have 6 cylinders (cyl column) 
subset(df, cyl == 6)
# The instructor used a different syntax
df[df$cyl == 6,]

# Select the columns am,gear, and carb. 
df[,c('am','gear','carb')]

# Create a new column called performance, which is calculated by hp/wt. 
df$performance <- (df$hp/df$wt)

# Your performance column will have several decimal place precision. Figure out how to use round() (check help(round)) to reduce this accuracy to only 2 decimal places
df$performance <- round(df$performance,2)

# What is the average mpg for cars that have more than 100 hp AND a wt value of more than 2.5. 
mean(df[(df$hp > 100) & (df$wt > 2.5), c('mpg')])
# The instructor used a different syntaxes
mean(subset(df,hp > 100 & wt > 2.5)$mpg)
mean(df[df$hp > 100 & df$wt > 2.5, ]$mpg)
# What is the mpg of the Hornet Sportabout?
df['Hornet Sportabout','mpg']
# The instructor used a different syntax
df['Hornet Sportabout',]$mpg