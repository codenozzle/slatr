# API Status Codes

The SciQuest application returns HTTP response codes.

### Error Status Codes

If a server error occurs while the APIs are invoked, the error message is reflected in an HTTP response code. All error codes are standard HTTP response codes. If an error occurs, an XML-formatted or JSON- formatted message is returned. 

The following HTTP error status codes might be returned:

Code | Meaning
---------- | -------
400 | Bad request
403 | Authorization failure
404 | Not found
405 | Method not allowed
410 | Gone
415 | Invalid media type
500 | Internal error
503 | Service unavailable

### Success Status Codes

Success status code is 200 OK.

The 200 code can be returned for the following methods:

 * POST - Used when creating a resource object. The POST request is handled, 200 is returned.
 * GET - Used when getting a resource object. The get request is handled, 200 is returned.
 * PUT - Used when updating a resource object. The put request is handled, 200 is returned.

 Code | Meaning
---------- | -------
200 | Success

