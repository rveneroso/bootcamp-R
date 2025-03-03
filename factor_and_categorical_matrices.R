# Creates vector named animal. This is a nominal vector, meaning that
# is doesn't have any order.
animal <- c('dog','cat','dog','cat','cat')

# Applying animal vector to factor function:
animal_factor <- factor(animal)
print(animal_factor)

#
# The `animal_factor` variable is now a **factor** with two levels:
# "cat" and "dog" as can be seen below:
# 
# [1] dog cat dog cat cat
# Levels: cat dog
# 
# Key Differences from a Character Vector:

# 1 - `animal_factor` is not a regular character vector anymore; it is now stored as a categorical variable.
# 2 - The levels (unique values) are automatically assigned in alphabetical order ("cat", "dog").
# 3 - Internally, R stores factors as integer codes, where "cat" is mapped to 1 and "dog" is mapped to 2.
# 
# The structure of `animal_factor` can be checked using:
#   
str(animal_factor)
# 
# The above command will produce the following output:
# 
# Factor w/ 2 levels "cat","dog": 2 1 2 1 1
# 
# This means:
# 1 - "cat" is internally stored as 1
# 2 - "dog" is internally stored as 2
# 3 - The actual values are displayed using their labels.
# 
# Checking the Levels:
levels(animal_factor)
# 
# Output:
# 
# [1] "cat" "dog"
# 
# Another example of creating a factor from a regular vector.
# Vector temps holds values from one of the three different temperature categories:
temps <- c('cold','med','hot','hot','hot','cold','med')

# So, temps doesn't hold temperatures themselves; it holds temperature categories.
# Now, to create a factor from temps vector, ordering its elements and
# settings its levels,the following command can be used:
fact.temp <- factor(temps,ordered=TRUE, levels = c('cold','med','hot'))
print(fact.temp)

# Output will be:
# [1] cold med  hot  hot  hot  cold med 
# Levels: cold < med < hot
# One can see that med has precedence over cold and hot has precedence over med.

summary(fact.temp)
# When applied to a factor, summary show the number of occurrences
# for every category existing in the factor vector.
# So, for fact.temp the result will be:
# cold  med  hot 
# 2    2    3 

summary(animal_factor)
# For animal_factor the output will be:
# cat dog 
# 3   2 