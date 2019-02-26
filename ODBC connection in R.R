db <- DBI::dbConnect(odbc::odbc(),  
                     "[Server];Database=[DataBase];UID=[UserName];PWD=[Password]")

rs <-DBI::dbSendQuery(db, "SELECT TOP (10) *FROM table")
df <- DBI::dbFetch(rs)

# Disconnect 
odbc::dbDisconnect(db)
