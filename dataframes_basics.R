# head returns the first 6 rows of a dataframe
head(state.x77)

# tail returns the last 6 rows of a dataframe
tail(state.x77)

# str displays the structure of the dataframe
str(state.x77)

# summary gives some statistical information about the data in a dataframe
summary(state.x77)

# Creating a dataframe
# First, create some vectors
days <- c('Mon','Tue','Wed','Thu','Fri')
# Temperatures
temp <- c(22.2,21,23,24.3,25)
# Boolean values to indicate whether rained on that day or not
rain <- c(T,T,F,F,T)
# Now, create the dataframe using the three vectors created previously
df <- data.frame(days,temp,rain)
# Result looks like this:
#
# days temp  rain
# 1  Mon 22.2  TRUE
# 2  Tue 21.0  TRUE
# 3  Wed 23.0 FALSE
# 4  Thu 24.3 FALSE
# 5  Fri 25.0  TRUE
#
# Data frame columns names come from the vectors that originated them.
View(df)

# Checking data frame structure
str(df)

# Displaying statical data from the data frame
summary(df)