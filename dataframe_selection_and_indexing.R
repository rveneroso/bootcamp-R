days <- c('Mon','Tue','Wed','Thu','Fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(T,T,F,F,T)
df <- data.frame(days,temp,rain)

# Just like as matrices, data frames can be accessed by indexes.
# The line bellow gives the first line of the data frame and its columns.
df[1,]

# Here, the first column of the data frame is displayed (days names)
df[,1]

# Data frames columns can also be accessed by their names. Here,
# all values of column 'rain' are displayed.
df[,'rain']

# A range of rows and specific columns can be accessed
df[1:5,c('days','temp')]

# Another way of getting values from an specific column. Using $
# will return the result as a vector
df$days

# Even another way of getting values from an specific column. Using
# [] return the result as a data frame.
df['days']

# Using subset it's possible to get a subset of the data frame that
# meets some conditions. The condition bellow returns all the days
# when rained.
subset(df, subset = rain==TRUE)

# Subset for days when temperature was higher than 23 degrees.
subset(df, subset = temp > 23)

# Sorting the data frame based on its data.
# The bellow line causes an error in R Studio.
# order(df['temp']) is treating df['temp'] as a data frame, not a numeric vector. In R, df['temp'] returns a data frame with one column, while df$temp returns a vector. The order() function expects a vector, not a data frame
sorted.temp <- order(df['temp'])

# Column name must be accessed by $ systax.
sorted.temp <- order(df$temp) 

# Ordering by decreasing order.
desc.temp <- order(-df['temp'])
