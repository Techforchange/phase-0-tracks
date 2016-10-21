
What are some common HTTP status codes?
200 OK
300 Multiple Choices
301 Moved Permanently
302 Found
304 Not Modified
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied

What is the difference between a GET request and a POST request? When might each be used?
GET - Requests data from a specified resource; It's simpler to implement and faster
POST - Submits data to be processed to a specified resource; It supports large amounts of data, robust and secure. It could handle unknown characters.


Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
Cookies are data, stored in small text files, on your computer.

When a web server has sent a web page to a browser, the connection is shut down, and the server forgets everything about the user.

Cookies were invented to solve the problem "how to remember information about the user":

When a user visits a web page, his name can be stored in a cookie.
Next time the user visits the page, the cookie "remembers" his name.
