# Reading the contents of a csv file to a variable
cars <- read.csv('mtcars_file.csv')
head(cars)
# Variable cars if of type data.frame
class(cars)

# Writing to a csv file
write.csv(cars,file = 'written_mtcars_file.csv')