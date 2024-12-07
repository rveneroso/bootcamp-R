# Numeric types in R are very similar to most of other programming languages
# Numeric types accepts integer and float point numbers
my.int <- 22
my.float.point = 17.34
my.int
my.float.point

# Logical (boolean) types can be created as follows. One must notice
# that values are always in capital letter
a <- TRUE
b <- T
c <- FALSE
d <- F
e <- t # No logical assignment. R will assume that 'e' is a function

# Character types can be defined using single or double quotes
a <- 'hello'
b <- "hello"

# Variables types can be checked by using the class function
class(a)
class(d)
class(12.27)