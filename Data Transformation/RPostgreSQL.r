library(RPostgreSQL)
library(tidyverse)
## create connection
con <- dbConnect(
  PostgreSQL(),
  host = "arjuna.db.elephantsql.com",
  dbname = "tyanlpnq",
  user = "tyanlpnq",
  password = "Jgxbs-o-xOF4tr_uhD5JMvqZAF85PY-f",
  port = 5432
)
## create dataframe
customers <- tribble(
  ~customers_id,~customers_name,~customers_TEL,~customers_address,
  1,"CIN","091-2345890","BKK",
  2,"WIT","096-2769820","PKT",
  3,"JIN","098-3456789","LEI",
  4,"JUN","091-9475655","NKI",
  5,"OAT","091-3772719","NKI"
)
orders <- tribble(
  ~orders_id,~customers_id,~menus_id,~quantity,~total_price,
  1,3,5,2,300,
  2,2,3,1,200,
  3,5,1,2,200,
  4,1,2,2,300,
  5,3,10,2,300,
  6,4,11,1,200,
  7,5,7,2,200,
  8,1,9,2,400,
  9,3,6,4,800,
  10,4,5,1,150
)
menus <- tribble(
  ~menus_id,~menus_name,~menus_size,~menus_price,
  1,"hawaiian pizza","S",100,
  2,"hawaiian pizza","M",150,
  3,"hawaiian pizza","L",200,
  4,"pepperoni pizza","S",100,
  5,"pepperoni pizza","M",150,
  6,"pepperoni pizza","L",200,
  7,"cheese pizza","S",100,
  8,"cheese pizza","M",150,
  9,"cheese pizza","L",200,
  10,"seafood pizza","S",150,
  11,"seafood pizza","M",200,
  12,"seafood pizza","L",250
)
## insert table to database
dbWriteTable(con, "customers", customers)
dbWriteTable(con, "orders", orders)
dbWriteTable(con, "menus", menus)
## get data
df <- dbGetQuery(con, "select * from customers")
df1 <- dbGetQuery(con, "select * from orders")
df2 <- dbGetQuery(con, "select * from menus")
## Disconnect database
dbDisconnect(con)
