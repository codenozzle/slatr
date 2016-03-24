---
title: API Reference

language_tabs:
  - json
  - xml

toc_footers:

includes:
  - paths
  - codes

search: true
---

# SciQuest APIs

SciQuest provides application program interfaces (APIs) that enable you to use simple HTTP requests to create, update, and retrieve information about resource objects, such as suppliers. The APIs provide a standard integration to SciQuest without the need for separate integrations for each application.

# Prerequisites
In order to access the RESTful API page, the following conditions must be met:

 * Your organization must be active.
 * Your organization must have the REST Services license turned on.
 * You must have the "Manage REST Services" permission.

    In UIT, the permission enables you to access the Shared Secret and Developer Console tabs on the RESTful API page.

    In Production, the permission enables you to access only the Shared Secret tab. The Developer Console is not available in Production.

# Audience

These API guidelines are written for the knowledgeable application programmer who understands the basic architecture of the SciQuest software products and Java servlets. The user should be fluent in the Java programming language and have prior practical experience working with SciQuest applications. These guidelines are not intended to direct the user in how to program in the Java language and limits itself to describing how related SciQuest software servlets are used.

# Document Conventions
These API guidelines use basic conventions to represent text and table information.

Convention | Description
--------- | --------- | --------- | ---------
boldface font | Commands, keywords, and button names are in boldface. 
italic font | Variables for which you supply values are in italics. 
screen font | Information the application displays is printed in screen font. 
vertical bars ( &#124; ) | Vertical bars separate alternative, mutually exclusive, elements. 
{ } | Elements or choices in braces are required elements.
[ ] | Elements or choices in square brackets are optional. 
{x &#124; y &#124; z} | Required keywords are grouped in braces and separated by vertical bars. 
[x &#124; y &#124; z] | Optional keywords are grouped in brackets and separated by vertical bars.

# RESTful APIs

RESTful web services APIs comply with the REpresentational State Transfer (REST) standard. In RESTful APIs, the URL is used to uniquely identify a resource that can be mapped to one or more domain objects. Each resource URL exposes uniform interfaces to the API clients. The API clients call the URLs by way of the standard HTTP methods of POST (create), GET (read), and PUT (update). DELETE (delete) is not supported.

Integration with SciQUest uses the HTTPS protocol over standard port 443. Requests must be sent ot the following URIs:

 * UIT: https://api-uit.sciquest.com
 * Production: https://api.sciquest.com

XML is the data format used for the request body and response body.

# Authentication

> Prod: POST https://api.sciquest.com/token

> UIT: POST https://api-uit.sciquest.com/token

> Authorization responses are only returned in JSON format:

```json
{
  "scope": "read",
  "access_token": "5839ca32-ce17-4a0f-9018-2902a0a86662",
  "token_type": "bearer",
  "expires_in": 1200
}
```

```xml

```

SciQuest uses API keys to allow access to the API. You must include the API key in all API requests to the server, and you must send the requests to:

<code>POST /token</code>

### Headers
You must replace the <code>{authKey}</code> variable with your organization's API key.
To generate your own key, create a base64-encoded string of the provided Identity and Shared Secret. This is configured in the Settings tab of the RESTful API page:

<code>identity:sharedsecret</code>

Include that key in the header as an Authorization parameter.

Key | Value
--------|--------
Authorization | Basic {authKey}

### Body

The body needs to be in the form of <code>x-www-form-urlencoded</code>.

Key | Value
--------|--------
grant_type | client_credentials

# Calling the HTTP APIs

You can execute the SciQuest APIs interactively or through a caller program. API calls must follow the correct syntax. If the user credential is invalid or the syntax is incorrect, the API is not executed. If a user error occurs, a specific standard HTTP error code is returned (for example, 400, 403, 404, 405, 500, and so on).

__Note__: All API parameters are case-sensitive.

The Content-Type header must be set for the HTTP API requests. The Content-Type header indicates the content type of the request body the API client sends to the SciQuest API services. Supported values are: application/xml, application/json, and multipart/form-data.

### Interactive Calls

Use a REST client plug-in for a browser or Lynx command to execute the API interactively. The user is prompted to enter a username and password for authentication and authorization. Once the user is validated, the API is executed. If the execution is successful and an output is to be returned as a result, the output is displayed in the browser if a browser was used to make the API call, or the output can be redirected to a file if a Lynx command was used to make the API call. If the execution is unsuccessful, an error message is returned.

### Programmed Calls

To make an API call, write a caller program using an HTTP request. If the execution is successful and an output is to be returned as a result, the output or a success code is returned. If the execution is unsuccessful, a failure code is returned, with or without an error message.

