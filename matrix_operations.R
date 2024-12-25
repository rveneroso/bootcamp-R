# Stock prices for Google and Microsoft vector
goog <- c(450,451,452,445,468)
msft <- c(203,231,232,233,220)

# Combining (c function) both vectors results in a unidimensional
# vector:
# [1] 450 451 452 445 468 203 231 232 233 220
stocks <- c(goog,msft)
print(stocks)
days <- c('Mon','Tue','Wed','Thu','Fri')
st.names <- c('Google','Microsoft')

colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names
print(stock.matrix)

# The following code sums values in columns in every row of the
# matrix. First it sums all column 1 values in every row, then
# it sums all column 2 values in every row and so on.
# For example: column 1 in row 1 is 450 and in row 2 is 203. So
# column 1 of the result is 450 + 203 = 653.
colSums(stock.matrix)

# The following code sums values in rows for every column of the
# matrix. The result matrix will have only one row with columns,
# one for Google and the other for Microsoft
rowSums(stock.matrix)
rowSums(stock.matrix)

# Get the mean value of any row values
rowMeans(stock.matrix)
# Google = (450+451+452+445+468) / 5 = 453.2
# Microsoft = (203+231+232+233+220) / 5 = 229.2

# A new row can be added to an existing matrix. 
Facebook <- c(111,112,113,120,145)
tech.stocks <- rbind(stock.matrix, Facebook)
print(tech.stocks)

# Similarly, a new column can be added to an existing matrix.
# Add a new column name weeklyAverage to the tech.stocks matrix.
weeklyAverage = rowMeans(tech.stocks)
tech.stocks <- cbind(tech.stocks,weeklyAverage)
print(tech.stocks)
