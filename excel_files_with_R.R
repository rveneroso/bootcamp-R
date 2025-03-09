library(readxl)
library(xlsx)
# The following command creates a variable named "Sheet1"
excel_sheets('financial_sample.xlsx')
# Creates a Data Frame from financial_sample.xlsx file and variable
# Sheet1 and assigns the result to a Data Frame variable named df.
# Warning: without the previous creation of the 'Sheet1' variable,
# is not possible to create the Data Frame from the Excel file.
df <- read_excel('financial_sample.xlsx', sheet = "Sheet1")
View(df)

# Returns the sum of the 'Units Sold' column
sum(df$`Units Sold`)

# Summary of the whole Data Frame
summary(df)

entire.workbook <- lapply(excel_sheets('financial_sample.xlsx'),
                          read_excel,path='financial_sample.xlsx')

str(entire.workbook)


### Explanation:

# 1. **`excel_sheets('financial_sample.xlsx')`**  
#    - The `excel_sheets()` function comes from the `readxl` package.
#    - It retrieves a vector of sheet names from the Excel file `'financial_sample.xlsx'`.
#    - For example, if the Excel file contains three sheets named `"Sheet1"`, `"Sheet2"`, and `"Sheet3"`, this function will return:
#      c("Sheet1", "Sheet2", "Sheet3")

# 2. **`lapply(..., read_excel, path='financial_sample.xlsx')`**  
#    - `lapply()` is used to apply a function to each element of a list or vector.
#    - Here, it applies the `read_excel()` function to each sheet name obtained from `excel_sheets()`.
#    - `read_excel()` reads an Excel file into an R data frame.
#    - The argument `path='financial_sample.xlsx'` ensures that `read_excel()` knows which file to read from.
#    - Since `lapply()` automatically passes each sheet name as the first argument of `read_excel()`, it is equivalent to calling:
# 
#      read_excel(path='financial_sample.xlsx', sheet='Sheet1')
#      read_excel(path='financial_sample.xlsx', sheet='Sheet2')
#      read_excel(path='financial_sample.xlsx', sheet='Sheet3')
#  
#    - The result is a **list** where each element corresponds to a sheet from the workbook, stored as a data frame.

### Final Output:
# - `entire.workbook` will be a **list of data frames**, where:
#   - `entire.workbook[[1]]` contains the data from `"Sheet1"`.
#   - `entire.workbook[[2]]` contains the data from `"Sheet2"`, and so on.

# Writing to an Excel file
write.xlsx(mtcars,'mtcars_output.xlsx')
