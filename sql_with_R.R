# Load the library
library(RPostgreSQL)

# This connection access r_database database created in a Podman
# Postgres container. The container must be up and running so that
# this connection can be successfully created.
# Also, the container must be started by using teh following command:
#
# podman run -d --name pg-pact-1 -p 5432:5432 -e POSTGRES_PASSWORD=postgres postgres
#
con <- dbConnect(PostgreSQL(), 
                 host = "localhost",    
                 port = 5432,           
                 user = "postgres",     
                 password = "postgres",  
                 dbname = "r_database")   

# Execute a query to select all rows from the employees table. This
# table was created manually using DBeaver tool.
query <- "SELECT * FROM employees;"
result <- dbGetQuery(con, query)

# View the result (returns a data frame)
print(result)

# Close the database connection
dbDisconnect(con)
