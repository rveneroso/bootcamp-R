# Vectors are uni dimensional arrays. They can be created by using
# c function
mb.vec <- c('C 180','C 63','ML 350')
print(mb.vec)

# If we print mb.vec using class function, the result will be the
# type of the mv.vec elements, not the vector itself
class(mb.vec) # Will print [1] "character"

# However, on the environment table of RStudio we see 
# chr [1:3] "C 180" "C 63" "ML 350" meaning that mb.vec has one row
# and three columns.

# Logical values can also be placed in vectors
lvec <- c(T, FALSE)
class(lvec)

# Vectors can have elements of only one type. In the following
# example, first and second elements will be converted to floating
# point values because of the third element.
#
# The resulting vector will be [1]  1.0 45.0 25.2 as TRUE was
# converted to 1 (TRUE = 1, FALSE = 0) and then to 1.0. As so
# 45 that turned to 45.0

mixv <- c(TRUE, 45, 25.2)
mixv

# If a vector mixes character and numeric values these will be
# converted to character.

#
# The resulting vector will be 1] "USA" "20"  "45"
mixc <- c("USA", 20, 45)
mixc

# Names can be assigned to elements of a vector. The example bellow
# creates a temperatures vector and then assigns weekday names to 
# each of the vector elements by using the names function.
temps <- c(72,71,68,73,69,75,76)
names(temps) <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
temps

# Another way to get the same result is using two named vectors
temps2 <- c(72,71,68,73,69,75,76)
week.days <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
names(temps2) <- week.days
temps2

