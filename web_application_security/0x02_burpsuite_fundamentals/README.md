### Task 0
- Download the foxypoxy extenstion on firefox
- Add a proxy
    - Title: anything - recommended burp
    - Type: HTTP
    - Hostname: 127.0.0.1
    - Port: 8080
    - Username: anything
    - Password: anything

- Go to http://burpsuite and download CA
- In firefox settings -> certifcates -> view certificates. Import the CA
- In burp suite to to proxy -> proxy settings -> network -> connections -> hostname resolution overide. Add https://web0x02.hbtn and container ip address
- With foxyproxy and intercept on go to https://web0x02.hbtn and check intercept in burpsuite
- Go to proxy -> proxy settings -> network -> TLS. Check the web0x02.htbn cert. 
