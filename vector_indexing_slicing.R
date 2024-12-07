# In R, differently what happens in most programming languages, vector
# indexes start at 1, not 0.
v1 <- c(100,200,300)
v2 <- c('a','b','c')

v1[2] # Returns 200
v2[3] # Returns c

# It's possible to pass a vector as indexing to get elements from a
# vector. The following code will return elements 100 and 200.
v1[c(1,2)]

# The following code will return elements a and c.
v2[c(1,3)]

v3 <- c(1,2,3,4,5,6,7,8,9,10)
# A colon can be used to determine the range of elements to get
# of a vector.
# The following code will return elements 2, 3 and 4
v3[2:4]

# It's also possible to slice a vector whose elements are named
# using elements names.
v4 <- c(1,2,3,4)
names(v4) <- c('one','two','three','four')
v4
v4['two']
v4[c('four','two','one')]

# A logical operation can be used to filter elements from a vector
# that complies to that logical operation.
# The code bellow will return all elements of vector v4 whose values
# are greater than 2
v4[v4>2]

# A logical operation can be assign to a variable and that variable
# can be used as the filter to be applied to a vector.
# Notice that the vector's name is used in the logical operation.
greater.than.two <- v4>2
v4[greater.than.two]

# If none of the vector's element return true to the condition, the
# result will be something like named numeric(0)
