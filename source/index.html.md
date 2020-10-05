---
title: Introduction to iGrant.io APIs v2.1.3
language_tabs:
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - ruby: Ruby
  - python: Python
  - php: PHP
  - java: Java
  - go: Go
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<!-- Generator: Widdershins v4.0.1 -->

<h1 id="introduction-to-igrant-io-apis">Introduction to iGrant.io APIs v2.1.3</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

This specification is documented in **OpenAPI format**, it describes the RESTFul APIs of iGrant.io.
  
iGrant.io offers one form of authentication - Bearer authentication

This form of authentication is a form of authentication scheme that involves security tokens. The client sends this token in the Authorization header when making request.

Base URLs:

* <a href="https://api.igrant.io/v1">https://api.igrant.io/v1</a>

* <a href="http://demo-api.igrant.io/v1">http://demo-api.igrant.io/v1</a>

* <a href="https://staging-api.igrant.io/v1">https://staging-api.igrant.io/v1</a>

# Authentication

- HTTP Authentication, scheme: bearer 

<h1 id="introduction-to-igrant-io-apis-identity-management">Identity management</h1>

Identity management handles authentication and authorisation of individuals and organisations (further split to owners, admins, developers and dpo roles).

## Login as user

<a id="opIdLogin as user"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/v1.1/users/login \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://api.igrant.io/v1/v1.1/users/login HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "username": "string",
  "password": "pa$$word"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('https://api.igrant.io/v1/v1.1/users/login',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://api.igrant.io/v1/v1.1/users/login',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://api.igrant.io/v1/v1.1/users/login', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/v1.1/users/login', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/v1.1/users/login");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/v1.1/users/login", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /v1.1/users/login`

Login as user

> Body parameter

```json
{
  "username": "string",
  "password": "pa$$word"
}
```

<h3 id="login-as-user-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|false|Login credentials|
|» username|body|string|true|none|
|» password|body|string(password)|true|none|

> Example responses

> 200 Response

```json
{
  "User": {
    "ID": "5daf22cea531351111afc7c8",
    "Name": "George Floyd",
    "IamID": "9d8c4h69-9fb2-4115-a4c3-53bddb8f2d7f",
    "Email": "dmart@yopmail.com",
    "Phone": "+46 7252 98991",
    "ImageID": "5f1458a5chaa930001e78f12",
    "ImageURL": "https:/<server-url>/image/5f1458a5chaa930001e78f12",
    "LastVisit": "2020-07-22T18:04:02Z",
    "Client": {
      "Token": "fEkxEwh4T2mr-B4yQoZ9TT:APA91bHibhwLXkc2l6LxWxHW5TrKBoLrXGCHDO6A9pXQ0ShvDYPfxXm57D8tIsR-fwybjs-_OFXCgCbBQpYVON2svUiooWgJBFETXg_jUGy0B9etUHFnyuCbXPihyoCuJc2Gn6s9XkN_",
      "Type": 2
    },
    "Orgs": [
      {
        "OrgID": "5dae2a9fa1215e00012103e4",
        "Name": "Nordea Bank AB",
        "Location": "Stockholm, Sweden",
        "Type": "Banking and Finance",
        "TypeID": "5d95a566a67c8800012f27d1",
        "EulaAccepted": false
      }
    ],
    "APIKey": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiI1ZGFmMjJjZWE1MzEzNTAwMDFhZmM3YzgiLCJleHAiOjE2MDQwNjMwNjV9.Irk0XgXfVhIdlgBNz6ggEXlvoIPtzUzJv4-x0VKYBGE",
    "Roles": [
      {
        "RoleID": 1,
        "OrgID": "5daf22d0a531350001afc7c9"
      }
    ]
  },
  "Token": {
    "access_token": "eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDeHhVYTVaQ2NnaENxQUxTZy1wbFVYUkJlNE1ERG9zamF0enNYa1lqMEtFIn0.eyJqdGkiOiIzZDM0NDk3Zi05NDYxLTQyZDItYjA0My01ZTU2MTVhOTg0ODYiLCJleHAiOjE1OTU2MTAwMjksIm5iZiI6MCwiaWF0IjoxNTk1NTg4NDI5LCJpc3MiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJhdWQiOiJhY2NvdW50Iiwic3ViIjoiOWQ4YzRkNjktOWZiMi00MTE1LWE0YzMtNTNiY2JiOGYyZDdmIiwidHlwIjoiQmVhcmVyIiwiYXpwIjoiaWdyYW50LWlvcy1hcHAiLCJhdXRoX3RpbWUiOjAsInNlc3Npb25fc3RhdGUiOiIxMWQwYjg3OC0wMWNkLTQ1YmYtYTQxOC04Yzc0ZjkyNTE5NmUiLCJhY3IiOiIxIiwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbIm9mZmxpbmVfYWNjZXNzIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJSYXZpIFNoYW5rYXIiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJkbWFydEB5b3BtYWlsLmNvbSIsImdpdmVuX25hbWUiOiJSYXZpIFNoYW5rYXIiLCJmYW1pbHlfbmFtZSI6IiIsImVtYWlsIjoiZG1hcnRAeW9wbWFpbC5jb20ifQ.K6eOOztvymq7W6yq7mjioJ76eZ7djtIjowqBlx9oCXIfbdt7W2HF6zX7FvkXFuta79ObDYeiqjt9Hy-9SWgS4-QGOFEM9pvT1aLC6gspeI2143P8ZPWWjHRuOH6Ht6TR8ML_X-DJ5n9hmoB9LDc8Vk39zTHhdmtSpu-yUrWHs2wFDmwO8yFdf9Em038WGxo4PYKzqzdEjsIVhSJy-BpkjoEluYxNkOGh3uQ4LZ7jbmXM83mwqEg8r-RwLljjqP3d2_7TSrNcO4Z8IVNslLv5wuSk9ZgCsPqE6poMjFLmrvOAcu2Rx6Em_me19RN1bTT2wrm_Joulzc02XcMyN9gDoA",
    "expires_in": 21600,
    "refresh_expires_in": 36000,
    "refresh_token": "eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI5YmJiYTI4Ni1mYzI3LTRmMjItODg5Ny05MGU5NTMyNjE0NjkifQ.eyJqdGkiOiJhMzFlZWZkMS00MDNhLTQyZmYtODQ3Mi1hMjYzMjAwMjNmZjMiLCJleHAiOjE1OTU2MjQ0MjksIm5iZiI6MCwiaWF0IjoxNTk1NTg4NDI5LCJpc3MiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJhdWQiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJzdWIiOiI5ZDhjNGQ2OS05ZmIyLTQxMTUtYTRjMy01M2JjYmI4ZjJkN2YiLCJ0eXAiOiJSZWZyZXNoIiwiYXpwIjoiaWdyYW50LWlvcy1hcHAiLCJhdXRoX3RpbWUiOjAsInNlc3Npb25fc3RhdGUiOiIxMWQwYjg3OC0wMWNkLTQ1YmYtYTQxOC04Yzc0ZjkyNTE5NmUiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJ1bWFfYXV0aG9yaXphdGlvbiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoicHJvZmlsZSBlbWFpbCJ9.DknM937PZWqwPiczJdNeIbEo0-R-09hBbOJiqRrDmqo",
    "token_type": "bearer"
  }
}
```

<h3 id="login-as-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns token and user details|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad request|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Invalid user credentials|None|

<h3 id="login-as-user-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» User|[User](#schemauser)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» IamID|string|false|none|none|
|»» Email|string|false|none|none|
|»» Phone|string|false|none|none|
|»» ImageID|string|false|none|none|
|»» ImageURL|string|false|none|none|
|»» LastVisit|string(date-time)|false|none|none|
|»» Client|object|false|none|none|
|»»» Token|string|false|none|none|
|»»» Type|integer|false|none|none|
|»» Orgs|[object]|false|none|none|
|»»» OrgID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Location|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» TypeID|string|false|none|none|
|»»» EulaAccepted|boolean|false|none|none|
|»» APIKey|string|false|none|none|
|»» Roles|[object]|false|none|none|
|»»» RoleID|integer|false|none|none|
|»»» OrgID|string|false|none|none|
|» Token|[Token](#schematoken)|false|none|none|
|»» access_token|string|false|none|none|
|»» expires_in|integer|false|none|none|
|»» refresh_token|string|false|none|none|
|»» refresh_expires_in|integer|false|none|none|
|»» token_type|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Login as user (old)

<a id="opIdLogin as user (old)"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/users/login \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://api.igrant.io/v1/users/login HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "username": "string",
  "password": "pa$$word"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('https://api.igrant.io/v1/users/login',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://api.igrant.io/v1/users/login',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://api.igrant.io/v1/users/login', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/users/login', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/login");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/users/login", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /users/login`

Login as user

> Body parameter

```json
{
  "username": "string",
  "password": "pa$$word"
}
```

<h3 id="login-as-user-(old)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|false|Login credentials|
|» username|body|string|true|none|
|» password|body|string(password)|true|none|

> Example responses

> 200 Response

```json
{
  "access_token": "eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDeHhVYTVaQ2NnaENxQUxTZy1wbFVYUkJlNE1ERG9zamF0enNYa1lqMEtFIn0.eyJqdGkiOiIzZDM0NDk3Zi05NDYxLTQyZDItYjA0My01ZTU2MTVhOTg0ODYiLCJleHAiOjE1OTU2MTAwMjksIm5iZiI6MCwiaWF0IjoxNTk1NTg4NDI5LCJpc3MiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJhdWQiOiJhY2NvdW50Iiwic3ViIjoiOWQ4YzRkNjktOWZiMi00MTE1LWE0YzMtNTNiY2JiOGYyZDdmIiwidHlwIjoiQmVhcmVyIiwiYXpwIjoiaWdyYW50LWlvcy1hcHAiLCJhdXRoX3RpbWUiOjAsInNlc3Npb25fc3RhdGUiOiIxMWQwYjg3OC0wMWNkLTQ1YmYtYTQxOC04Yzc0ZjkyNTE5NmUiLCJhY3IiOiIxIiwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbIm9mZmxpbmVfYWNjZXNzIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJSYXZpIFNoYW5rYXIiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJkbWFydEB5b3BtYWlsLmNvbSIsImdpdmVuX25hbWUiOiJSYXZpIFNoYW5rYXIiLCJmYW1pbHlfbmFtZSI6IiIsImVtYWlsIjoiZG1hcnRAeW9wbWFpbC5jb20ifQ.K6eOOztvymq7W6yq7mjioJ76eZ7djtIjowqBlx9oCXIfbdt7W2HF6zX7FvkXFuta79ObDYeiqjt9Hy-9SWgS4-QGOFEM9pvT1aLC6gspeI2143P8ZPWWjHRuOH6Ht6TR8ML_X-DJ5n9hmoB9LDc8Vk39zTHhdmtSpu-yUrWHs2wFDmwO8yFdf9Em038WGxo4PYKzqzdEjsIVhSJy-BpkjoEluYxNkOGh3uQ4LZ7jbmXM83mwqEg8r-RwLljjqP3d2_7TSrNcO4Z8IVNslLv5wuSk9ZgCsPqE6poMjFLmrvOAcu2Rx6Em_me19RN1bTT2wrm_Joulzc02XcMyN9gDoA",
  "expires_in": 21600,
  "refresh_expires_in": 36000,
  "refresh_token": "eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI5YmJiYTI4Ni1mYzI3LTRmMjItODg5Ny05MGU5NTMyNjE0NjkifQ.eyJqdGkiOiJhMzFlZWZkMS00MDNhLTQyZmYtODQ3Mi1hMjYzMjAwMjNmZjMiLCJleHAiOjE1OTU2MjQ0MjksIm5iZiI6MCwiaWF0IjoxNTk1NTg4NDI5LCJpc3MiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJhdWQiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJzdWIiOiI5ZDhjNGQ2OS05ZmIyLTQxMTUtYTRjMy01M2JjYmI4ZjJkN2YiLCJ0eXAiOiJSZWZyZXNoIiwiYXpwIjoiaWdyYW50LWlvcy1hcHAiLCJhdXRoX3RpbWUiOjAsInNlc3Npb25fc3RhdGUiOiIxMWQwYjg3OC0wMWNkLTQ1YmYtYTQxOC04Yzc0ZjkyNTE5NmUiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJ1bWFfYXV0aG9yaXphdGlvbiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoicHJvZmlsZSBlbWFpbCJ9.DknM937PZWqwPiczJdNeIbEo0-R-09hBbOJiqRrDmqo",
  "token_type": "bearer"
}
```

<h3 id="login-as-user-(old)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns token|[Token](#schematoken)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad request|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Invalid user credentials|None|

<aside class="success">
This operation does not require authentication
</aside>

## Login as organisation admin

<a id="opIdLogin as organisation admin"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/users/admin/login \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://api.igrant.io/v1/users/admin/login HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "username": "string",
  "password": "pa$$word"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('https://api.igrant.io/v1/users/admin/login',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://api.igrant.io/v1/users/admin/login',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://api.igrant.io/v1/users/admin/login', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/users/admin/login', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/admin/login");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/users/admin/login", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /users/admin/login`

Login as organisation admin

> Body parameter

```json
{
  "username": "string",
  "password": "pa$$word"
}
```

<h3 id="login-as-organisation-admin-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Login credentials|
|» username|body|string|true|none|
|» password|body|string(password)|true|none|

> Example responses

> 200 Response

```json
{
  "User": {
    "ID": "5daf22cea531351111afc7c8",
    "Name": "George Floyd",
    "IamID": "9d8c4h69-9fb2-4115-a4c3-53bddb8f2d7f",
    "Email": "dmart@yopmail.com",
    "Phone": "+46 7252 98991",
    "ImageID": "5f1458a5chaa930001e78f12",
    "ImageURL": "https:/<server-url>/image/5f1458a5chaa930001e78f12",
    "LastVisit": "2020-07-22T18:04:02Z",
    "Client": {
      "Token": "fEkxEwh4T2mr-B4yQoZ9TT:APA91bHibhwLXkc2l6LxWxHW5TrKBoLrXGCHDO6A9pXQ0ShvDYPfxXm57D8tIsR-fwybjs-_OFXCgCbBQpYVON2svUiooWgJBFETXg_jUGy0B9etUHFnyuCbXPihyoCuJc2Gn6s9XkN_",
      "Type": 2
    },
    "Orgs": [
      {
        "OrgID": "5dae2a9fa1215e00012103e4",
        "Name": "Nordea Bank AB",
        "Location": "Stockholm, Sweden",
        "Type": "Banking and Finance",
        "TypeID": "5d95a566a67c8800012f27d1",
        "EulaAccepted": false
      }
    ],
    "APIKey": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiI1ZGFmMjJjZWE1MzEzNTAwMDFhZmM3YzgiLCJleHAiOjE2MDQwNjMwNjV9.Irk0XgXfVhIdlgBNz6ggEXlvoIPtzUzJv4-x0VKYBGE",
    "Roles": [
      {
        "RoleID": 1,
        "OrgID": "5daf22d0a531350001afc7c9"
      }
    ]
  },
  "Token": {
    "access_token": "eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDeHhVYTVaQ2NnaENxQUxTZy1wbFVYUkJlNE1ERG9zamF0enNYa1lqMEtFIn0.eyJqdGkiOiIzZDM0NDk3Zi05NDYxLTQyZDItYjA0My01ZTU2MTVhOTg0ODYiLCJleHAiOjE1OTU2MTAwMjksIm5iZiI6MCwiaWF0IjoxNTk1NTg4NDI5LCJpc3MiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJhdWQiOiJhY2NvdW50Iiwic3ViIjoiOWQ4YzRkNjktOWZiMi00MTE1LWE0YzMtNTNiY2JiOGYyZDdmIiwidHlwIjoiQmVhcmVyIiwiYXpwIjoiaWdyYW50LWlvcy1hcHAiLCJhdXRoX3RpbWUiOjAsInNlc3Npb25fc3RhdGUiOiIxMWQwYjg3OC0wMWNkLTQ1YmYtYTQxOC04Yzc0ZjkyNTE5NmUiLCJhY3IiOiIxIiwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbIm9mZmxpbmVfYWNjZXNzIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJSYXZpIFNoYW5rYXIiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJkbWFydEB5b3BtYWlsLmNvbSIsImdpdmVuX25hbWUiOiJSYXZpIFNoYW5rYXIiLCJmYW1pbHlfbmFtZSI6IiIsImVtYWlsIjoiZG1hcnRAeW9wbWFpbC5jb20ifQ.K6eOOztvymq7W6yq7mjioJ76eZ7djtIjowqBlx9oCXIfbdt7W2HF6zX7FvkXFuta79ObDYeiqjt9Hy-9SWgS4-QGOFEM9pvT1aLC6gspeI2143P8ZPWWjHRuOH6Ht6TR8ML_X-DJ5n9hmoB9LDc8Vk39zTHhdmtSpu-yUrWHs2wFDmwO8yFdf9Em038WGxo4PYKzqzdEjsIVhSJy-BpkjoEluYxNkOGh3uQ4LZ7jbmXM83mwqEg8r-RwLljjqP3d2_7TSrNcO4Z8IVNslLv5wuSk9ZgCsPqE6poMjFLmrvOAcu2Rx6Em_me19RN1bTT2wrm_Joulzc02XcMyN9gDoA",
    "expires_in": 21600,
    "refresh_expires_in": 36000,
    "refresh_token": "eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI5YmJiYTI4Ni1mYzI3LTRmMjItODg5Ny05MGU5NTMyNjE0NjkifQ.eyJqdGkiOiJhMzFlZWZkMS00MDNhLTQyZmYtODQ3Mi1hMjYzMjAwMjNmZjMiLCJleHAiOjE1OTU2MjQ0MjksIm5iZiI6MCwiaWF0IjoxNTk1NTg4NDI5LCJpc3MiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJhdWQiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJzdWIiOiI5ZDhjNGQ2OS05ZmIyLTQxMTUtYTRjMy01M2JjYmI4ZjJkN2YiLCJ0eXAiOiJSZWZyZXNoIiwiYXpwIjoiaWdyYW50LWlvcy1hcHAiLCJhdXRoX3RpbWUiOjAsInNlc3Npb25fc3RhdGUiOiIxMWQwYjg3OC0wMWNkLTQ1YmYtYTQxOC04Yzc0ZjkyNTE5NmUiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJ1bWFfYXV0aG9yaXphdGlvbiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoicHJvZmlsZSBlbWFpbCJ9.DknM937PZWqwPiczJdNeIbEo0-R-09hBbOJiqRrDmqo",
    "token_type": "bearer"
  }
}
```

<h3 id="login-as-organisation-admin-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns token and user details|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad request|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Invalid user credentials|None|

<h3 id="login-as-organisation-admin-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» User|[User](#schemauser)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» IamID|string|false|none|none|
|»» Email|string|false|none|none|
|»» Phone|string|false|none|none|
|»» ImageID|string|false|none|none|
|»» ImageURL|string|false|none|none|
|»» LastVisit|string(date-time)|false|none|none|
|»» Client|object|false|none|none|
|»»» Token|string|false|none|none|
|»»» Type|integer|false|none|none|
|»» Orgs|[object]|false|none|none|
|»»» OrgID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Location|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» TypeID|string|false|none|none|
|»»» EulaAccepted|boolean|false|none|none|
|»» APIKey|string|false|none|none|
|»» Roles|[object]|false|none|none|
|»»» RoleID|integer|false|none|none|
|»»» OrgID|string|false|none|none|
|» Token|[Token](#schematoken)|false|none|none|
|»» access_token|string|false|none|none|
|»» expires_in|integer|false|none|none|
|»» refresh_token|string|false|none|none|
|»» refresh_expires_in|integer|false|none|none|
|»» token_type|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Logout user

<a id="opIdLogout user"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/users/logout \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/users/logout HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "refreshtoken": "string",
  "clientid": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/users/logout',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/users/logout',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/users/logout', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/users/logout', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/logout");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/users/logout", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /users/logout`

Logout user

> Body parameter

```json
{
  "refreshtoken": "string",
  "clientid": "string"
}
```

<h3 id="logout-user-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Refresh token and clientid|
|» refreshtoken|body|string|true|none|
|» clientid|body|string|true|none|

<h3 id="logout-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Logout successful|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad request|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Refresh access token

<a id="opIdRefresh access token"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/users/token \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://api.igrant.io/v1/users/token HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "refreshtoken": "string",
  "clientid": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('https://api.igrant.io/v1/users/token',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://api.igrant.io/v1/users/token',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://api.igrant.io/v1/users/token', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/users/token', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/token");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/users/token", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /users/token`

Refreshes an access token

> Body parameter

```json
{
  "refreshtoken": "string",
  "clientid": "string"
}
```

<h3 id="refresh-access-token-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Refresh token and clientid|
|» refreshtoken|body|string|true|none|
|» clientid|body|string|true|none|

> Example responses

> 200 Response

```json
{
  "access_token": "eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDeHhVYTVaQ2NnaENxQUxTZy1wbFVYUkJlNE1ERG9zamF0enNYa1lqMEtFIn0.eyJqdGkiOiIzZDM0NDk3Zi05NDYxLTQyZDItYjA0My01ZTU2MTVhOTg0ODYiLCJleHAiOjE1OTU2MTAwMjksIm5iZiI6MCwiaWF0IjoxNTk1NTg4NDI5LCJpc3MiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJhdWQiOiJhY2NvdW50Iiwic3ViIjoiOWQ4YzRkNjktOWZiMi00MTE1LWE0YzMtNTNiY2JiOGYyZDdmIiwidHlwIjoiQmVhcmVyIiwiYXpwIjoiaWdyYW50LWlvcy1hcHAiLCJhdXRoX3RpbWUiOjAsInNlc3Npb25fc3RhdGUiOiIxMWQwYjg3OC0wMWNkLTQ1YmYtYTQxOC04Yzc0ZjkyNTE5NmUiLCJhY3IiOiIxIiwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbIm9mZmxpbmVfYWNjZXNzIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJSYXZpIFNoYW5rYXIiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJkbWFydEB5b3BtYWlsLmNvbSIsImdpdmVuX25hbWUiOiJSYXZpIFNoYW5rYXIiLCJmYW1pbHlfbmFtZSI6IiIsImVtYWlsIjoiZG1hcnRAeW9wbWFpbC5jb20ifQ.K6eOOztvymq7W6yq7mjioJ76eZ7djtIjowqBlx9oCXIfbdt7W2HF6zX7FvkXFuta79ObDYeiqjt9Hy-9SWgS4-QGOFEM9pvT1aLC6gspeI2143P8ZPWWjHRuOH6Ht6TR8ML_X-DJ5n9hmoB9LDc8Vk39zTHhdmtSpu-yUrWHs2wFDmwO8yFdf9Em038WGxo4PYKzqzdEjsIVhSJy-BpkjoEluYxNkOGh3uQ4LZ7jbmXM83mwqEg8r-RwLljjqP3d2_7TSrNcO4Z8IVNslLv5wuSk9ZgCsPqE6poMjFLmrvOAcu2Rx6Em_me19RN1bTT2wrm_Joulzc02XcMyN9gDoA",
  "expires_in": 21600,
  "refresh_expires_in": 36000,
  "refresh_token": "eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI5YmJiYTI4Ni1mYzI3LTRmMjItODg5Ny05MGU5NTMyNjE0NjkifQ.eyJqdGkiOiJhMzFlZWZkMS00MDNhLTQyZmYtODQ3Mi1hMjYzMjAwMjNmZjMiLCJleHAiOjE1OTU2MjQ0MjksIm5iZiI6MCwiaWF0IjoxNTk1NTg4NDI5LCJpc3MiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJhdWQiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJzdWIiOiI5ZDhjNGQ2OS05ZmIyLTQxMTUtYTRjMy01M2JjYmI4ZjJkN2YiLCJ0eXAiOiJSZWZyZXNoIiwiYXpwIjoiaWdyYW50LWlvcy1hcHAiLCJhdXRoX3RpbWUiOjAsInNlc3Npb25fc3RhdGUiOiIxMWQwYjg3OC0wMWNkLTQ1YmYtYTQxOC04Yzc0ZjkyNTE5NmUiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJ1bWFfYXV0aG9yaXphdGlvbiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoicHJvZmlsZSBlbWFpbCJ9.DknM937PZWqwPiczJdNeIbEo0-R-09hBbOJiqRrDmqo",
  "token_type": "bearer"
}
```

<h3 id="refresh-access-token-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns refreshed token|[Token](#schematoken)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad request|None|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="introduction-to-igrant-io-apis-permissions-and-consents">Permissions and consents</h1>

Permission management enables people to manage and have an overview of data transactions and connections and to execute their legal rights (for example, as per the GDPR Article 6 in the GDPR). Using iGrant.io services, organisations can manage consents from individuals throughout its lifecycle. It can be an active consenting where consent is given in real-time or passive consenting where consents can be given anytime. In either case, individuals can at any time use the service to re-evaluate their consents if the need arise.

## Get consents for a user

<a id="opIdGet consents for a user"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{orgID}/users/{userID}/consents`

Get consents for a particular user. This will include all consents given  for the defined usage purposes and data attributes within the usage purpose.

<h3 id="get-consents-for-a-user-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|userID|path|string|true|User ID|

> Example responses

> 200 Response

```json
{
  "ID": "5e4e91036c7aa200012aa9da",
  "OrgID": "5dae01aa267e930001609aa4",
  "UserID": "5dbc02ecb99fd0000157547a",
  "ConsentsAndPurposes": [
    {
      "Purpose": {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      },
      "Count": {
        "Total": 4,
        "Consented": 4
      },
      "Consents": [
        {
          "ID": "5dae01ee267e930001609aa8",
          "Description": "Name",
          "Value": "",
          "Status": {
            "Consent": "Allow",
            "TimeStamp": "0001-01-01T00:00:00Z",
            "Days": 0,
            "Remaining": 0
          }
        }
      ]
    }
  ]
}
```

<h3 id="get-consents-for-a-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return consents and purposes|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-consents-for-a-user-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|false|none|none|
|» OrgID|string|false|none|none|
|» UserID|string|false|none|none|
|» ConsentsAndPurposes|[object]|false|none|none|
|»» Purpose|[Purpose](#schemapurpose)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Count|object|false|none|none|
|»»» Total|integer|false|none|none|
|»»» Consented|integer|false|none|none|
|»» Consents|[[AttributeConsent](#schemaattributeconsent)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» Value|string|false|none|none|
|»»» Status|object|false|none|none|
|»»»» Consent|string|false|none|none|
|»»»» TimeStamp|string(date-time)|false|none|none|
|»»»» Days|integer|false|none|none|
|»»»» Remaining|integer|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Gets user consent

<a id="opIdGets user consent"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{orgID}/users/{userID}/consents/{consentID}`

Get user consent by ID

<h3 id="gets-user-consent-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|userID|path|string|true|User ID|
|consentID|path|string|true|Consent ID|

> Example responses

> 200 Response

```json
{
  "ID": "5e4e91036c7aa200012aa9da",
  "OrgID": "5dae01aa267e930001609aa4",
  "UserID": "5dbc02ecb99fd0000157547a",
  "ConsentsAndPurposes": [
    {
      "Purpose": {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      },
      "Count": {
        "Total": 4,
        "Consented": 4
      },
      "Consents": [
        {
          "ID": "5dae01ee267e930001609aa8",
          "Description": "Name",
          "Value": "",
          "Status": {
            "Consent": "Allow",
            "TimeStamp": "0001-01-01T00:00:00Z",
            "Days": 0,
            "Remaining": 0
          }
        }
      ]
    }
  ]
}
```

<h3 id="gets-user-consent-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return consents and purposes|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="gets-user-consent-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|false|none|none|
|» OrgID|string|false|none|none|
|» UserID|string|false|none|none|
|» ConsentsAndPurposes|[object]|false|none|none|
|»» Purpose|[Purpose](#schemapurpose)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Count|object|false|none|none|
|»»» Total|integer|false|none|none|
|»»» Consented|integer|false|none|none|
|»» Consents|[[AttributeConsent](#schemaattributeconsent)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» Value|string|false|none|none|
|»»» Status|object|false|none|none|
|»»»» Consent|string|false|none|none|
|»»»» TimeStamp|string(date-time)|false|none|none|
|»»»» Days|integer|false|none|none|
|»»»» Remaining|integer|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get all purpose consents

<a id="opIdGet all purpose consents"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}`

Gets all the consents for a given purpose by ID

<h3 id="get-all-purpose-consents-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|userID|path|string|true|User ID|
|consentID|path|string|true|Consent ID|
|purposeID|path|string|true|Purpose ID|

> Example responses

> 200 Response

```json
{
  "ID": "5e4e91036c7aa200012aa9da",
  "ConsentID": "5e4e91036c7aa200012aa9da",
  "OrgID": "5dae01aa267e930001609aa4",
  "UserID": "5dbc02ecb99fd0000157547a",
  "DataRetention": {
    "Expiry": "Saturday, 03-Oct-20 09:34:32 UTC"
  },
  "Consents": {
    "Purpose": {
      "ID": "5db0303ba531350001afc7e0",
      "Name": "Marketing and campaign",
      "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
      "LawfulUsage": false,
      "PolicyURL": "https://orgname.com/policy_default.html"
    },
    "Count": {
      "Total": 4,
      "Consented": 4
    },
    "Consents": [
      {
        "ID": "5dae01ee267e930001609aa8",
        "Description": "Name",
        "Value": "",
        "Status": {
          "Consent": "Allow",
          "TimeStamp": "0001-01-01T00:00:00Z",
          "Days": 0,
          "Remaining": 0
        }
      }
    ]
  }
}
```

<h3 id="get-all-purpose-consents-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return consents for a given purpose|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-all-purpose-consents-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|false|none|none|
|» ConsentID|string|false|none|none|
|» OrgID|string|false|none|none|
|» UserID|string|false|none|none|
|» DataRetention|object|false|none|none|
|»» Expiry|string|false|none|none|
|» Consents|object|false|none|none|
|»» Purpose|[Purpose](#schemapurpose)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Count|object|false|none|none|
|»»» Total|integer|false|none|none|
|»»» Consented|integer|false|none|none|
|»» Consents|[[AttributeConsent](#schemaattributeconsent)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» Value|string|false|none|none|
|»»» Status|object|false|none|none|
|»»»» Consent|string|false|none|none|
|»»»» TimeStamp|string(date-time)|false|none|none|
|»»»» Days|integer|false|none|none|
|»»»» Remaining|integer|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update consents for attribute

<a id="opIdUpdate consents for attribute"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
PATCH https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID} HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "consentattributes": [
    {
      "attributeid": "5dae01ee267e930001609aa8"
    }
  ],
  "consented": "Allow"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.patch 'https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.patch('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}`

Update attribute consent for a given purpose

> Body parameter

```json
{
  "consentattributes": [
    {
      "attributeid": "5dae01ee267e930001609aa8"
    }
  ],
  "consented": "Allow"
}
```

<h3 id="update-consents-for-attribute-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|userID|path|string|true|User ID|
|consentID|path|string|true|Consent ID|
|purposeID|path|string|true|Purpose ID|
|body|body|object|true|none|
|» consentattributes|body|[object]|true|none|
|»» attributeid|body|string|true|none|
|» consented|body|string|true|none|

> Example responses

> 200 Response

```json
{
  "ID": "5e4e91036c7aa200012aa9da",
  "OrgID": "5dae01aa267e930001609aa4",
  "UserID": "5dbc02ecb99fd0000157547a",
  "Purposes": [
    {
      "ID": "5dae1058a1215e00012103d8",
      "AllowAll": false,
      "Consents": [
        {
          "Status": {
            "Consented": "Allow",
            "TimeStamp": "0001-01-01T00:00:00Z",
            "Days": 0
          },
          "Value": "",
          "TemplateID": "5dae01f4267e930001609aa9"
        }
      ]
    }
  ]
}
```

<h3 id="update-consents-for-attribute-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns consents for the purpose|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Invalid request payload|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|

<h3 id="update-consents-for-attribute-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|false|none|none|
|» OrgID|string|false|none|none|
|» UserID|string|false|none|none|
|» Purposes|[object]|false|none|none|
|»» ID|string|false|none|none|
|»» AllowAll|boolean|false|none|none|
|»» Consents|[object]|false|none|none|
|»»» Status|object|false|none|none|
|»»»» Consented|string|false|none|none|
|»»»» TimeStamp|string(date-time)|false|none|none|
|»»»» Days|integer|false|none|none|
|»»» Value|string|false|none|none|
|»»» TemplateID|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get all consents

<a id="opIdGet all consents"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status`

Gets all consent attributes status for a given usage purpose

<h3 id="get-all-consents-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|userID|path|string|true|User ID|
|consentID|path|string|true|Consent ID|
|purposeID|path|string|true|Purpose ID|

> Example responses

> 200 Response

```json
{
  "Consented": "Disallow"
}
```

<h3 id="get-all-consents-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return all consent attributes status for a given usage purpose|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-all-consents-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Consented|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Updates attribute consents for purpose

<a id="opIdUpdates attribute consents for purpose"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "consented": "Allow"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/status`

Updates all attribute consents of a given purpose

> Body parameter

```json
{
  "consented": "Allow"
}
```

<h3 id="updates-attribute-consents-for-purpose-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|userID|path|string|true|User ID|
|consentID|path|string|true|Consent ID|
|purposeID|path|string|true|Purpose ID|
|body|body|object|true|none|
|» consented|body|string|true|none|

> Example responses

> 200 Response

```json
{
  "ID": "5e4e91036c7aa200012aa9da",
  "OrgID": "5dae01aa267e930001609aa4",
  "UserID": "5dbc02ecb99fd0000157547a",
  "ConsentsAndPurposes": [
    {
      "Purpose": {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      },
      "Count": {
        "Total": 4,
        "Consented": 4
      },
      "Consents": [
        {
          "ID": "5dae01ee267e930001609aa8",
          "Description": "Name",
          "Value": "",
          "Status": {
            "Consent": "Allow",
            "TimeStamp": "0001-01-01T00:00:00Z",
            "Days": 0,
            "Remaining": 0
          }
        }
      ]
    }
  ]
}
```

<h3 id="updates-attribute-consents-for-purpose-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return consents and purposes|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="updates-attribute-consents-for-purpose-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|false|none|none|
|» OrgID|string|false|none|none|
|» UserID|string|false|none|none|
|» ConsentsAndPurposes|[object]|false|none|none|
|»» Purpose|[Purpose](#schemapurpose)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Count|object|false|none|none|
|»»» Total|integer|false|none|none|
|»»» Consented|integer|false|none|none|
|»» Consents|[[AttributeConsent](#schemaattributeconsent)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» Value|string|false|none|none|
|»»» Status|object|false|none|none|
|»»»» Consent|string|false|none|none|
|»»»» TimeStamp|string(date-time)|false|none|none|
|»»»» Days|integer|false|none|none|
|»»»» Remaining|integer|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update an attribute consent

<a id="opIdUpdate an attribute consent"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/attributes/{attributeID} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
PATCH https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/attributes/{attributeID} HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "consented": "Allow",
  "days": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/attributes/{attributeID}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.patch 'https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/attributes/{attributeID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.patch('https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/attributes/{attributeID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/attributes/{attributeID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/attributes/{attributeID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://api.igrant.io/v1/organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/attributes/{attributeID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /organizations/{orgID}/users/{userID}/consents/{consentID}/purposes/{purposeID}/attributes/{attributeID}`

Updates a single attribute consent for a usage purpose

> Body parameter

```json
{
  "consented": "Allow",
  "days": 0
}
```

<h3 id="update-an-attribute-consent-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|userID|path|string|true|User ID|
|consentID|path|string|true|Consent ID|
|purposeID|path|string|true|Purpose ID|
|attributeID|path|string|true|Attribute ID|
|body|body|object|true|none|
|» consented|body|string|true|none|
|» days|body|integer|true|none|

> Example responses

> 200 Response

```json
{
  "Msg": "Consent updated successfully",
  "Status": 200
}
```

<h3 id="update-an-attribute-consent-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Consent updated successfully|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="update-an-attribute-consent-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Msg|string|false|none|none|
|» Status|integer|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Notify consent requests

<a id="opIdNotify consent requests"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/consent \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/consent HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "attributeids": [
    "5f1df5c84e26ea0001b9f3a7"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/consent',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/consent',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/consent', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/consent', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/consent");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/consent", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{orgID}/purposes/{purposeID}/attributes/consent`

Make special request for consent for an attribute for all users in this organization. A notification is sent if the user consent is not present for the given attribute i.e. it is Disallow (as a notification to mobile app)

> Body parameter

```json
{
  "attributeids": [
    "5f1df5c84e26ea0001b9f3a7"
  ]
}
```

<h3 id="notify-consent-requests-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|purposeID|path|string|true|Purpose ID|
|body|body|object|false|none|
|» attributeids|body|[string]|false|none|

<h3 id="notify-consent-requests-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|Notification requesting attribute consent is sent to user devices|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get all consented users (Attribute)

<a id="opIdGet all consented users (Attribute)"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/{attributeID}/consented/users \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/{attributeID}/consented/users HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/{attributeID}/consented/users',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/{attributeID}/consented/users',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/{attributeID}/consented/users', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/{attributeID}/consented/users', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/{attributeID}/consented/users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/attributes/{attributeID}/consented/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{orgID}/purposes/{purposeID}/attributes/{attributeID}/consented/users`

Gets all users who consented to a given attribute for an usage purpose

<h3 id="get-all-consented-users-(attribute)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|purposeID|path|string|true|Purpose ID|
|attributeID|path|string|true|Attribute ID|

> Example responses

> 200 Response

```json
{
  "Users": [
    {
      "ID": "5dbc02ecb99fd0000157547a",
      "Name": "Donny Yang",
      "Phone": "+44 7744 156699",
      "Email": "donny@yopmail.com"
    }
  ],
  "Links": {
    "Self": "https://<server-url>/5dae01aa267e930001609aa4/purposes/5dae1058a1215e00012103d8/attributes/5dae106ba1215e00012103d9/consented/users?limit=50",
    "Next": "https://<server-url>/5dae01aa267e930001609aa4/purposes/5dae1058a1215e00012103d8/attributes/5dae106ba1215e00012103d9/consented/users?limit=50&startid=5dbc02ecb99fd0000157547a"
  }
}
```

<h3 id="get-all-consented-users-(attribute)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns users|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-all-consented-users-(attribute)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Users|[object]|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» Phone|string|false|none|none|
|»» Email|string|false|none|none|
|» Links|object|false|none|none|
|»» Self|string|false|none|none|
|»» Next|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get all consented users (Purpose)

<a id="opIdGet all consented users (Purpose)"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/consented/users \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/consented/users HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/consented/users',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/consented/users',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/consented/users', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/consented/users', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/consented/users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/consented/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{orgID}/purposes/{purposeID}/consented/users`

Gets all users who consented to a given usage purpose

<h3 id="get-all-consented-users-(purpose)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|purposeID|path|string|true|Purpose ID|
|limit|query|integer|false|Pagination limit|
|startid|query|string|false|Pagination start ID (for e.g. action log ID)|

> Example responses

> 200 Response

```json
{
  "Users": [
    {
      "ID": "5dbc02ecb99fd0000157547a",
      "Name": "Donny Yang",
      "Phone": "+44 7744 156699",
      "Email": "donny@yopmail.com"
    }
  ],
  "Links": {
    "Self": "https://<server-url>/5dae01aa267e930001609aa4/purposes/5dae1058a1215e00012103d8/consented/users?limit=50",
    "Next": "https://<server-url>/5dae01aa267e930001609aa4/purposes/5dae1058a1215e00012103d8/consented/users?limit=50&startid=5db0181fa531350001afc7d5"
  }
}
```

<h3 id="get-all-consented-users-(purpose)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns users|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-all-consented-users-(purpose)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Users|[object]|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» Phone|string|false|none|none|
|»» Email|string|false|none|none|
|» Links|object|false|none|none|
|»» Self|string|false|none|none|
|»» Next|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

<h1 id="introduction-to-igrant-io-apis-service-management-user-">Service management (User)</h1>

iGrant.io enables a multi-operator environment via a distributed service registry. The service management functions are at two levels: one at the individual level and the other at the organisational level. This section lists all service management functions towards individual users. This includes functions like registrations, user profile management, subscription to a specific organisatione etc.

## Reset user password

<a id="opIdReset user password"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/user/password/reset \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/user/password/reset HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "password": "qwerty123"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/user/password/reset',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/user/password/reset',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/user/password/reset', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/user/password/reset', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/user/password/reset");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/user/password/reset", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /user/password/reset`

Resets a user password using the current password.

> Body parameter

```json
{
  "password": "qwerty123"
}
```

<h3 id="reset-user-password-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Current password|
|» password|body|string|true|none|

<h3 id="reset-user-password-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|User password resetted successfully|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad request|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Forgot user password

<a id="opIdForgot user password"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT https://api.igrant.io/v1/user/password/forgot \
  -H 'Content-Type: application/json'

```

```http
PUT https://api.igrant.io/v1/user/password/forgot HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "username": "admin@abc.com"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('https://api.igrant.io/v1/user/password/forgot',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json'
}

result = RestClient.put 'https://api.igrant.io/v1/user/password/forgot',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.put('https://api.igrant.io/v1/user/password/forgot', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PUT','https://api.igrant.io/v1/user/password/forgot', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/user/password/forgot");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "https://api.igrant.io/v1/user/password/forgot", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PUT /user/password/forgot`

Forgot user password is used to request a password reset. A notification is sent to the user reset the password to the registered email ID.

> Body parameter

```json
{
  "username": "admin@abc.com"
}
```

<h3 id="forgot-user-password-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Username|
|» username|body|string|false|none|

<h3 id="forgot-user-password-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|User forgot password action handled successfully|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad request|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="success">
This operation does not require authentication
</aside>

## Register new user

<a id="opIdRegister new user"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/users/register \
  -H 'Content-Type: application/json'

```

```http
POST https://api.igrant.io/v1/users/register HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "username": "string",
  "name": "string",
  "password": "pa$$word",
  "phone": "string",
  "isadmin": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('https://api.igrant.io/v1/users/register',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json'
}

result = RestClient.post 'https://api.igrant.io/v1/users/register',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.post('https://api.igrant.io/v1/users/register', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/users/register', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/register");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/users/register", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /users/register`

Registers a new user to the system

> Body parameter

```json
{
  "username": "string",
  "name": "string",
  "password": "pa$$word",
  "phone": "string",
  "isadmin": true
}
```

<h3 id="register-new-user-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|User details|
|» username|body|string|true|none|
|» name|body|string|false|none|
|» password|body|string(password)|true|none|
|» phone|body|string|true|none|
|» isadmin|body|boolean|false|none|

<h3 id="register-new-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|User created successfully|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad request|None|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|User exists with same username|None|

<aside class="success">
This operation does not require authentication
</aside>

## Get user image

<a id="opIdGet user image"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/users/{userID}/image/{imageID} \
  -H 'Accept: image/jpeg' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/users/{userID}/image/{imageID} HTTP/1.1
Host: api.igrant.io
Accept: image/jpeg

```

```javascript

const headers = {
  'Accept':'image/jpeg',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/users/{userID}/image/{imageID}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'image/jpeg',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/users/{userID}/image/{imageID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'image/jpeg',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/users/{userID}/image/{imageID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'image/jpeg',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/users/{userID}/image/{imageID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/{userID}/image/{imageID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"image/jpeg"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/users/{userID}/image/{imageID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /users/{userID}/image/{imageID}`

Get the image for a particular user

<h3 id="get-user-image-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userID|path|string|true|User ID|
|imageID|path|string|true|Image ID|

> Example responses

> 200 Response

<h3 id="get-user-image-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns user image|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|404 not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update users image

<a id="opIdUpdate users image"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/users/{userID}/image \
  -H 'Content-Type: multipart/form-data' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/users/{userID}/image HTTP/1.1
Host: api.igrant.io
Content-Type: multipart/form-data
Accept: application/json

```

```javascript
const inputBody = '{
  "userimage": "string"
}';
const headers = {
  'Content-Type':'multipart/form-data',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/users/{userID}/image',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'multipart/form-data',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/users/{userID}/image',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'multipart/form-data',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/users/{userID}/image', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'multipart/form-data',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/users/{userID}/image', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/{userID}/image");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"multipart/form-data"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/users/{userID}/image", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /users/{userID}/image`

Updates the image of a particular user

> Body parameter

```yaml
userimage: string

```

<h3 id="update-users-image-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userID|path|string|true|User ID|
|body|body|object|true|none|
|» userimage|body|string(binary)|true|none|

> Example responses

> 200 Response

```json
{
  "User": {
    "ID": "5daf22cea531351111afc7c8",
    "Name": "George Floyd",
    "IamID": "9d8c4h69-9fb2-4115-a4c3-53bddb8f2d7f",
    "Email": "dmart@yopmail.com",
    "Phone": "+46 7252 98991",
    "ImageID": "5f1458a5chaa930001e78f12",
    "ImageURL": "https:/<server-url>/image/5f1458a5chaa930001e78f12",
    "LastVisit": "2020-07-22T18:04:02Z",
    "Client": {
      "Token": "fEkxEwh4T2mr-B4yQoZ9TT:APA91bHibhwLXkc2l6LxWxHW5TrKBoLrXGCHDO6A9pXQ0ShvDYPfxXm57D8tIsR-fwybjs-_OFXCgCbBQpYVON2svUiooWgJBFETXg_jUGy0B9etUHFnyuCbXPihyoCuJc2Gn6s9XkN_",
      "Type": 2
    },
    "Orgs": [
      {
        "OrgID": "5dae2a9fa1215e00012103e4",
        "Name": "Nordea Bank AB",
        "Location": "Stockholm, Sweden",
        "Type": "Banking and Finance",
        "TypeID": "5d95a566a67c8800012f27d1",
        "EulaAccepted": false
      }
    ],
    "APIKey": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiI1ZGFmMjJjZWE1MzEzNTAwMDFhZmM3YzgiLCJleHAiOjE2MDQwNjMwNjV9.Irk0XgXfVhIdlgBNz6ggEXlvoIPtzUzJv4-x0VKYBGE",
    "Roles": [
      {
        "RoleID": 1,
        "OrgID": "5daf22d0a531350001afc7c9"
      }
    ]
  }
}
```

<h3 id="update-users-image-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns user|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Invalid user image provided|None|

<h3 id="update-users-image-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» User|[User](#schemauser)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» IamID|string|false|none|none|
|»» Email|string|false|none|none|
|»» Phone|string|false|none|none|
|»» ImageID|string|false|none|none|
|»» ImageURL|string|false|none|none|
|»» LastVisit|string(date-time)|false|none|none|
|»» Client|object|false|none|none|
|»»» Token|string|false|none|none|
|»»» Type|integer|false|none|none|
|»» Orgs|[object]|false|none|none|
|»»» OrgID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Location|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» TypeID|string|false|none|none|
|»»» EulaAccepted|boolean|false|none|none|
|»» APIKey|string|false|none|none|
|»» Roles|[object]|false|none|none|
|»»» RoleID|integer|false|none|none|
|»»» OrgID|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Delete user image

<a id="opIdDelete user image"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/users/{userID}/image \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/users/{userID}/image HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/users/{userID}/image',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/users/{userID}/image',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/users/{userID}/image', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/users/{userID}/image', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/{userID}/image");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/users/{userID}/image", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /users/{userID}/image`

Deletes a particular user image

<h3 id="delete-user-image-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userID|path|string|true|User ID|

> Example responses

> 200 Response

```json
{
  "User": {
    "ID": "5daf22cea531351111afc7c8",
    "Name": "George Floyd",
    "IamID": "9d8c4h69-9fb2-4115-a4c3-53bddb8f2d7f",
    "Email": "dmart@yopmail.com",
    "Phone": "+46 7252 98991",
    "ImageID": "5f1458a5chaa930001e78f12",
    "ImageURL": "https:/<server-url>/image/5f1458a5chaa930001e78f12",
    "LastVisit": "2020-07-22T18:04:02Z",
    "Client": {
      "Token": "fEkxEwh4T2mr-B4yQoZ9TT:APA91bHibhwLXkc2l6LxWxHW5TrKBoLrXGCHDO6A9pXQ0ShvDYPfxXm57D8tIsR-fwybjs-_OFXCgCbBQpYVON2svUiooWgJBFETXg_jUGy0B9etUHFnyuCbXPihyoCuJc2Gn6s9XkN_",
      "Type": 2
    },
    "Orgs": [
      {
        "OrgID": "5dae2a9fa1215e00012103e4",
        "Name": "Nordea Bank AB",
        "Location": "Stockholm, Sweden",
        "Type": "Banking and Finance",
        "TypeID": "5d95a566a67c8800012f27d1",
        "EulaAccepted": false
      }
    ],
    "APIKey": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiI1ZGFmMjJjZWE1MzEzNTAwMDFhZmM3YzgiLCJleHAiOjE2MDQwNjMwNjV9.Irk0XgXfVhIdlgBNz6ggEXlvoIPtzUzJv4-x0VKYBGE",
    "Roles": [
      {
        "RoleID": 1,
        "OrgID": "5daf22d0a531350001afc7c9"
      }
    ]
  }
}
```

<h3 id="delete-user-image-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns user|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="delete-user-image-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» User|[User](#schemauser)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» IamID|string|false|none|none|
|»» Email|string|false|none|none|
|»» Phone|string|false|none|none|
|»» ImageID|string|false|none|none|
|»» ImageURL|string|false|none|none|
|»» LastVisit|string(date-time)|false|none|none|
|»» Client|object|false|none|none|
|»»» Token|string|false|none|none|
|»»» Type|integer|false|none|none|
|»» Orgs|[object]|false|none|none|
|»»» OrgID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Location|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» TypeID|string|false|none|none|
|»»» EulaAccepted|boolean|false|none|none|
|»» APIKey|string|false|none|none|
|»» Roles|[object]|false|none|none|
|»»» RoleID|integer|false|none|none|
|»»» OrgID|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

<h1 id="introduction-to-igrant-io-apis-service-management-organization-">Service management (Organization)</h1>

iGrant.io enables a multi-operator environment via a distributed service registry. The service management functions are at two levels: one at the individual level and the other at the organisational level. This section lists all service management functions towards organisations. This includes functions like organisation onboarding/provisioning, managing organisation users, adding end users or consumers to organisation, agreement handling between a organisations for data exchange etc.

## Register an organisation

<a id="opIdRegister an organisation"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "name": "Delphyx LLP",
  "location": "London, GB",
  "typeid": "5f0570c04a05b00001a05cc2"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations`

Registers an organisation to the system

> Body parameter

```json
{
  "name": "Delphyx LLP",
  "location": "London, GB",
  "typeid": "5f0570c04a05b00001a05cc2"
}
```

<h3 id="register-an-organisation-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» name|body|string|true|none|
|» location|body|string|true|none|
|» typeid|body|string|true|none|
|» eulaurl|body|string|false|none|
|» hlcsupport|body|boolean|false|none|
|» description|body|string|false|none|

> Example responses

> 201 Response

```json
{
  "ID": "5daf22d0a531350001afc7c9",
  "Name": "DMart Retail Chain",
  "CoverImageID": "",
  "CoverImageURL": "",
  "LogoImageID": "5ecf5f979a273200016a13ef",
  "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
  "Location": "Stockholm, Sweden",
  "Type": {
    "ID": "5d17cc114dacb40001b29094",
    "Type": "Retail",
    "ImageID": "5d17cc7f4dacb40001b29095",
    "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
  },
  "Description": "",
  "Enabled": true,
  "PolicyURL": "",
  "EulaURL": "",
  "Templates": [
    {
      "ID": "5f187f9efd59960001434c2e",
      "Consent": "Age",
      "PurposeIDs": [
        "5db0303ba531350001afc7e0",
        "5db03048a531350001afc7e1"
      ]
    }
  ],
  "Purposes": [
    {
      "ID": "5db0303ba531350001afc7e0",
      "Name": "Marketing and campaign",
      "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
      "LawfulUsage": false,
      "PolicyURL": "https://orgname.com/policy_default.html"
    }
  ],
  "Admins": [
    {
      "UserID": "5daf22cea531350001afc7c8",
      "RoleID": 1
    }
  ],
  "BillingInfo": {
    "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
    "MaxUserCounter": 4,
    "DefaultChargeNotified": false,
    "CurrentPeriodEnd": 0,
    "PrevMonthUsers": 1,
    "PayPerUserInfo": {
      "UserCommitment": 0,
      "TimeCommitment": "",
      "CancelOnCommitmentEnd": false,
      "CommitmentPeriodRemaining": 0
    },
    "DefaultPaymentSource": {
      "Brand": "Visa",
      "ExpiryMonth": 4,
      "ExpiryYear": 2024,
      "Last4Digits": "4242"
    },
    "Address": {
      "Name": "George Floyd",
      "City": "Stockholm",
      "Country": "Sweden",
      "Line1": "",
      "Line2": "",
      "PostalCode": "",
      "State": ""
    },
    "ServiceAgreementVersion": "v2.0",
    "FreeTrialExpired": true
  },
  "Subs": {
    "Method": 0,
    "Key": ""
  },
  "HlcSupport": false,
  "PrivacyDashboard": {
    "HostName": "dmart.igrant.io",
    "Version": "v1.1.7",
    "Status": 2,
    "Delete": false
  },
  "DataRetention": {
    "RetentionPeriod": 800,
    "Enabled": true
  }
}
```

<h3 id="register-an-organisation-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Returns created organisation|[Organisation](#schemaorganisation)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get org user roles

<a id="opIdGet org user roles"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/roles \
  -H 'Accept: application/json'

```

```http
GET https://api.igrant.io/v1/organizations/roles HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('https://api.igrant.io/v1/organizations/roles',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/roles',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://api.igrant.io/v1/organizations/roles', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/roles', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/roles");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/roles", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/roles`

Get the list of organisational user roles

> Example responses

> 200 Response

```json
[
  {
    "ID": 1,
    "Role": "Admin"
  },
  {
    "ID": 2,
    "Role": "Dpo"
  },
  {
    "ID": 3,
    "Role": "Developer"
  }
]
```

<h3 id="get-org-user-roles-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the list of organisation roles|Inline|

<h3 id="get-org-user-roles-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|false|none|none|
|» Role|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Get subscription methods

<a id="opIdGet subscription methods"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/subscribe-methods \
  -H 'Accept: application/json'

```

```http
GET https://api.igrant.io/v1/organizations/subscribe-methods HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('https://api.igrant.io/v1/organizations/subscribe-methods',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/subscribe-methods',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://api.igrant.io/v1/organizations/subscribe-methods', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/subscribe-methods', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/subscribe-methods");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/subscribe-methods", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/subscribe-methods`

Gets all organisation subscription methods configured in the system

> Example responses

> 200 Response

```json
{
  "Methods": [
    {
      "ID": 1,
      "Method": "Key-Based"
    }
  ]
}
```

<h3 id="get-subscription-methods-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns all organisation subscription methods|Inline|

<h3 id="get-subscription-methods-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Methods|[object]|false|none|none|
|»» ID|integer|false|none|none|
|»» Method|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Gets organization type

<a id="opIdGets organization type"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/types/{typeID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/types/{typeID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/types/{typeID}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/types/{typeID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/types/{typeID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/types/{typeID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/types/{typeID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/types/{typeID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/types/{typeID}`

Gets organization catogory type by given ID

<h3 id="gets-organization-type-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|typeID|path|string|true|Organisation type ID|

> Example responses

> 200 Response

```json
{
  "ID": "5d17cc114dacb40001b29094",
  "Type": "Retail",
  "ImageID": "5d17cc7f4dacb40001b29095",
  "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
}
```

<h3 id="gets-organization-type-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the organization type|[OrganisationType](#schemaorganisationtype)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get organization

<a id="opIdGet organization"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}`

Get organization by ID

<h3 id="get-organization-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

> Example responses

> 200 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="get-organization-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns organization|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|404 not found|None|

<h3 id="get-organization-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update an organization

<a id="opIdUpdate an organization"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/{organizationID} \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
PATCH https://api.igrant.io/v1/organizations/{organizationID} HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "name": "string",
  "location": "string",
  "description": "string",
  "policyurl": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.patch 'https://api.igrant.io/v1/organizations/{organizationID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.patch('https://api.igrant.io/v1/organizations/{organizationID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','https://api.igrant.io/v1/organizations/{organizationID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://api.igrant.io/v1/organizations/{organizationID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /organizations/{organizationID}`

Updates an organization

> Body parameter

```json
{
  "name": "string",
  "location": "string",
  "description": "string",
  "policyurl": "string"
}
```

<h3 id="update-an-organization-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|body|body|object|false|none|
|» name|body|string|false|none|
|» location|body|string|false|none|
|» description|body|string|false|none|
|» policyurl|body|string|false|none|

<h3 id="update-an-organization-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|Updated organization|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|404 not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get subscription key

<a id="opIdGet subscription key"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/subscribe-key`

Gets subscription key if the subscription method is key based

<h3 id="get-subscription-key-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

> Example responses

> 200 Response

```json
{
  "SubscribeKey": "IT43-YO37-I6GG",
  "SubscribeMethod": "Key-Based"
}
```

<h3 id="get-subscription-key-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the subscription key and method|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-subscription-key-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» SubscribeKey|string|false|none|none|
|» SubscribeMethod|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Renew the subscription key

<a id="opIdRenew the subscription key"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key/renew \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key/renew HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key/renew',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key/renew',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key/renew', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key/renew', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key/renew");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/subscribe-key/renew", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/subscribe-key/renew`

Renew the subscription key if the subscription method is key based

<h3 id="renew-the-subscription-key-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

> Example responses

> 200 Response

```json
{
  "SubscribeKey": "69H7-RWT4-CHQJ",
  "SubscribeMethod": "Key-Based"
}
```

<h3 id="renew-the-subscription-key-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the renewed subscription key|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Unable to renew since, existing subscription method is not key based|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="renew-the-subscription-key-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» SubscribeKey|string|false|none|none|
|» SubscribeMethod|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get subscription method

<a id="opIdGet subscription method"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/subscribe-method`

Get the existing subscription method for an organization

<h3 id="get-subscription-method-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

> Example responses

> 200 Response

```json
{
  "ID": 1,
  "Method": "Key-Based"
}
```

<h3 id="get-subscription-method-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns subscription method|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-subscription-method-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|false|none|none|
|» Method|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Set subscription method

<a id="opIdSet subscription method"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "subscribemethodid": 1
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/subscribe-method", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/subscribe-method`

Sets how users can subscribe to an organization

> Body parameter

```json
{
  "subscribemethodid": 1
}
```

<h3 id="set-subscription-method-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|body|body|object|true|none|
|» subscribemethodid|body|integer|true|none|

<h3 id="set-subscription-method-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Updated subscription method|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get subscription status

<a id="opIdGet subscription status"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/subscription \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/subscription HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/subscription',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/subscription',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/subscription', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/subscription', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/subscription");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/subscription", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/subscription`

Gets the subscription status of an organisation towards users. Used for troubleshooting purposes or used by Enterprise Dashboards.

<h3 id="get-subscription-status-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

> Example responses

> 200 Response

```json
{
  "Enabled": true
}
```

<h3 id="get-subscription-status-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns subscription status|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-subscription-status-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Enable organization

<a id="opIdEnable organization"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/subscription/enable \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/subscription/enable HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/subscription/enable',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/subscription/enable',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/subscription/enable', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/subscription/enable', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/subscription/enable");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/subscription/enable", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/subscription/enable`

Enable organization for subscription towards users. This is performed once the data model is all uploaded and the organisation is ready for consent management and data exchange. 

<h3 id="enable-organization-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

> Example responses

> 200 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="enable-organization-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Enabled organisation for subscription|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="enable-organization-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Disable organization

<a id="opIdDisable organization"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/subscription/disable \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/subscription/disable HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/subscription/disable',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/subscription/disable',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/subscription/disable', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/subscription/disable', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/subscription/disable");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/subscription/disable", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/subscription/disable`

Disables an organisation towards users. This can be manually triggered by the organisation as part of maintainenace or can be forced by a super admin, example if the license conditions fail

<h3 id="disable-organization-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

> Example responses

> 200 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="disable-organization-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Disabled organisation for subscription|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="disable-organization-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update EULA URL

<a id="opIdUpdate EULA URL"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/eulaURL \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/eulaURL HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "eulaurl": "https://igrant.io/eula.html"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/eulaURL',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/eulaURL',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/eulaURL', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/eulaURL', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/eulaURL");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/eulaURL", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/eulaURL`

Updates an organization's EULA URL. This is used if the organisation wishes to notify users if there are any updates to its EULA agrements.

> Body parameter

```json
{
  "eulaurl": "https://igrant.io/eula.html"
}
```

<h3 id="update-eula-url-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|body|body|object|true|none|
|» eulaurl|body|string|true|none|

<h3 id="update-eula-url-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|Updated EULA URL for an organization|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Invalid EULA URL provided|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Delete aorganization EULA url

<a id="opIdDelete aorganization EULA url"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationID}/eulaURL \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationID}/eulaURL HTTP/1.1
Host: api.igrant.io

```

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/eulaURL',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationID}/eulaURL',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationID}/eulaURL', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/organizations/{organizationID}/eulaURL', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/eulaURL");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationID}/eulaURL", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationID}/eulaURL`

Deletes an organization EULA URL

<h3 id="delete-aorganization-eula-url-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

<h3 id="delete-aorganization-eula-url-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|Deleted EULA URL for an organization|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Invalid EULA URL provided|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Delete admin user

<a id="opIdDelete admin user"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationID}/admins \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationID}/admins HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/admins',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationID}/admins',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationID}/admins', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/organizations/{organizationID}/admins', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/admins");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationID}/admins", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationID}/admins`

Deletes an admin user from an organization

<h3 id="delete-admin-user-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

> Example responses

> 200 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="delete-admin-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns organisation|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="delete-admin-user-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update org cover image

<a id="opIdUpdate org cover image"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/coverimage \
  -H 'Content-Type: multipart/form-data' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/coverimage HTTP/1.1
Host: api.igrant.io
Content-Type: multipart/form-data
Accept: application/json

```

```javascript
const inputBody = '{
  "orgimage": "string"
}';
const headers = {
  'Content-Type':'multipart/form-data',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/coverimage',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'multipart/form-data',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/coverimage',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'multipart/form-data',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/coverimage', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'multipart/form-data',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/coverimage', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/coverimage");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"multipart/form-data"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/coverimage", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/coverimage`

Updates an organizations cover image. This images are seen by the users in their app, portal etc.

> Body parameter

```yaml
orgimage: string

```

<h3 id="update-org-cover-image-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|body|body|object|true|none|
|» orgimage|body|string(binary)|true|none|

> Example responses

> 200 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="update-org-cover-image-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns organisation|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="update-org-cover-image-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get org image

<a id="opIdGet org image"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID} \
  -H 'Accept: image/jpeg' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID} HTTP/1.1
Host: api.igrant.io
Accept: image/jpeg

```

```javascript

const headers = {
  'Accept':'image/jpeg',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'image/jpeg',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'image/jpeg',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'image/jpeg',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"image/jpeg"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/image/{imageID}`

Gets the organization image with the image ID

<h3 id="get-org-image-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|imageID|path|string|true|Image ID|

> Example responses

> 200 Response

<h3 id="get-org-image-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns organization image|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|404 not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Updates logo image

<a id="opIdUpdates logo image"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/logoimage \
  -H 'Content-Type: multipart/form-data' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/logoimage HTTP/1.1
Host: api.igrant.io
Content-Type: multipart/form-data
Accept: application/json

```

```javascript
const inputBody = '{
  "orgimage": "string"
}';
const headers = {
  'Content-Type':'multipart/form-data',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/logoimage',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'multipart/form-data',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/logoimage',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'multipart/form-data',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/logoimage', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'multipart/form-data',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/logoimage', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/logoimage");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"multipart/form-data"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/logoimage", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/logoimage`

Updates an organization logo image

> Body parameter

```yaml
orgimage: string

```

<h3 id="updates-logo-image-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|body|body|object|true|none|
|» orgimage|body|string(binary)|true|none|

> Example responses

> 200 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="updates-logo-image-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns organisation|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="updates-logo-image-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get subscribed users

<a id="opIdGet subscribed users"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/users \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/users HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/users',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/users',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/users', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/users', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/users`

Gets the list of users who are subscribed or registerd with an organisation

<h3 id="get-subscribed-users-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|limit|query|integer|false|Pagination limit (No of results)|
|startid|query|string|false|Pagination start offset (ID of the result object for e.g. user ID, organisation ID e.t.c.)|

> Example responses

> 200 Response

```json
{
  "Users": [
    {
      "ID": "5e8468d19380c40001f3ef69",
      "Name": "Joseph George",
      "Phone": "+467252844669",
      "Email": "george@orgmail.com"
    }
  ],
  "Links": {
    "Self": "https://<image-server>/5dae01aa267e930001609aa4/users?limit=20",
    "Next": "https://<image-server>/5dae01aa267e930001609aa4/users?limit=1&startid=5e833b4d9380c40001f3ef65"
  }
}
```

<h3 id="get-subscribed-users-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns organization users|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-subscribed-users-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Users|[object]|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» Phone|string|false|none|none|
|»» Email|string|false|none|none|
|» Links|object|false|none|none|
|»» Self|string|false|none|none|
|»» Next|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Add user to organization

<a id="opIdAdd user to organization"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/users \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/users HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "userid": "5f0c2ec1d6f0970001fae263",
  "subscribekey": "GBDL-SQPR-QN1O"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/users',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/users',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/users', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/users', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/users`

Provisions individual users to organisations. This is used when organisation onboards their users or when users subscribe to organisations, for example in a data wallet.

> Body parameter

```json
{
  "userid": "5f0c2ec1d6f0970001fae263",
  "subscribekey": "GBDL-SQPR-QN1O"
}
```

<h3 id="add-user-to-organization-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|body|body|object|false|none|
|» userid|body|string|false|none|
|» subscribekey|body|string|false|none|

> Example responses

> 200 Response

```json
{
  "User": {
    "ID": "5daf22cea531351111afc7c8",
    "Name": "George Floyd",
    "IamID": "9d8c4h69-9fb2-4115-a4c3-53bddb8f2d7f",
    "Email": "dmart@yopmail.com",
    "Phone": "+46 7252 98991",
    "ImageID": "5f1458a5chaa930001e78f12",
    "ImageURL": "https:/<server-url>/image/5f1458a5chaa930001e78f12",
    "LastVisit": "2020-07-22T18:04:02Z",
    "Client": {
      "Token": "fEkxEwh4T2mr-B4yQoZ9TT:APA91bHibhwLXkc2l6LxWxHW5TrKBoLrXGCHDO6A9pXQ0ShvDYPfxXm57D8tIsR-fwybjs-_OFXCgCbBQpYVON2svUiooWgJBFETXg_jUGy0B9etUHFnyuCbXPihyoCuJc2Gn6s9XkN_",
      "Type": 2
    },
    "Orgs": [
      {
        "OrgID": "5dae2a9fa1215e00012103e4",
        "Name": "Nordea Bank AB",
        "Location": "Stockholm, Sweden",
        "Type": "Banking and Finance",
        "TypeID": "5d95a566a67c8800012f27d1",
        "EulaAccepted": false
      }
    ],
    "APIKey": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiI1ZGFmMjJjZWE1MzEzNTAwMDFhZmM3YzgiLCJleHAiOjE2MDQwNjMwNjV9.Irk0XgXfVhIdlgBNz6ggEXlvoIPtzUzJv4-x0VKYBGE",
    "Roles": [
      {
        "RoleID": 1,
        "OrgID": "5daf22d0a531350001afc7c9"
      }
    ]
  }
}
```

<h3 id="add-user-to-organization-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the added user|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Invalid subscription token|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="add-user-to-organization-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» User|[User](#schemauser)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» IamID|string|false|none|none|
|»» Email|string|false|none|none|
|»» Phone|string|false|none|none|
|»» ImageID|string|false|none|none|
|»» ImageURL|string|false|none|none|
|»» LastVisit|string(date-time)|false|none|none|
|»» Client|object|false|none|none|
|»»» Token|string|false|none|none|
|»»» Type|integer|false|none|none|
|»» Orgs|[object]|false|none|none|
|»»» OrgID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Location|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» TypeID|string|false|none|none|
|»»» EulaAccepted|boolean|false|none|none|
|»» APIKey|string|false|none|none|
|»» Roles|[object]|false|none|none|
|»»» RoleID|integer|false|none|none|
|»»» OrgID|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get total subscribed users

<a id="opIdGet total subscribed users"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/users/count \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/users/count HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/users/count',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/users/count',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/users/count', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/users/count', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/users/count");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/users/count", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/users/count`

Gets the total number of users subscribed to an organisation

<h3 id="get-total-subscribed-users-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

> Example responses

> 200 Response

```json
{
  "SubscribeUserCount": 7
}
```

<h3 id="get-total-subscribed-users-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns subscribed users count|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-total-subscribed-users-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» SubscribeUserCount|integer|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Remove user

<a id="opIdRemove user"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationID}/users/{userID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationID}/users/{userID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/users/{userID}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationID}/users/{userID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationID}/users/{userID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/organizations/{organizationID}/users/{userID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/users/{userID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationID}/users/{userID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationID}/users/{userID}`

Removes user from  an organization

<h3 id="remove-user-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|userID|path|string|true|User ID|

> Example responses

> 200 Response

```json
{
  "User": {
    "ID": "5daf22cea531351111afc7c8",
    "Name": "George Floyd",
    "IamID": "9d8c4h69-9fb2-4115-a4c3-53bddb8f2d7f",
    "Email": "dmart@yopmail.com",
    "Phone": "+46 7252 98991",
    "ImageID": "5f1458a5chaa930001e78f12",
    "ImageURL": "https:/<server-url>/image/5f1458a5chaa930001e78f12",
    "LastVisit": "2020-07-22T18:04:02Z",
    "Client": {
      "Token": "fEkxEwh4T2mr-B4yQoZ9TT:APA91bHibhwLXkc2l6LxWxHW5TrKBoLrXGCHDO6A9pXQ0ShvDYPfxXm57D8tIsR-fwybjs-_OFXCgCbBQpYVON2svUiooWgJBFETXg_jUGy0B9etUHFnyuCbXPihyoCuJc2Gn6s9XkN_",
      "Type": 2
    },
    "Orgs": [
      {
        "OrgID": "5dae2a9fa1215e00012103e4",
        "Name": "Nordea Bank AB",
        "Location": "Stockholm, Sweden",
        "Type": "Banking and Finance",
        "TypeID": "5d95a566a67c8800012f27d1",
        "EulaAccepted": false
      }
    ],
    "APIKey": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiI1ZGFmMjJjZWE1MzEzNTAwMDFhZmM3YzgiLCJleHAiOjE2MDQwNjMwNjV9.Irk0XgXfVhIdlgBNz6ggEXlvoIPtzUzJv4-x0VKYBGE",
    "Roles": [
      {
        "RoleID": 1,
        "OrgID": "5daf22d0a531350001afc7c9"
      }
    ]
  }
}
```

<h3 id="remove-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the user (with updated orgs)|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="remove-user-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» User|[User](#schemauser)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» IamID|string|false|none|none|
|»» Email|string|false|none|none|
|»» Phone|string|false|none|none|
|»» ImageID|string|false|none|none|
|»» ImageURL|string|false|none|none|
|»» LastVisit|string(date-time)|false|none|none|
|»» Client|object|false|none|none|
|»»» Token|string|false|none|none|
|»»» Type|integer|false|none|none|
|»» Orgs|[object]|false|none|none|
|»»» OrgID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Location|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» TypeID|string|false|none|none|
|»»» EulaAccepted|boolean|false|none|none|
|»» APIKey|string|false|none|none|
|»» Roles|[object]|false|none|none|
|»»» RoleID|integer|false|none|none|
|»»» OrgID|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Notify data breach

<a id="opIdNotify data breach"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{orgID}/notify-data-breach \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{orgID}/notify-data-breach HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "headline": "Data breach alert",
  "userscount": 200,
  "dpoemail": "dpo@abc.com",
  "consequence": "Exposed authentication credentials of some of the clients",
  "measures": "Update the account passwords within 24hours"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/notify-data-breach',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{orgID}/notify-data-breach',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{orgID}/notify-data-breach', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{orgID}/notify-data-breach', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/notify-data-breach");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{orgID}/notify-data-breach", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{orgID}/notify-data-breach`

Notifies all subscribed users of any data breaches that has occured in the organisation. This, for example, is as per Art. 34 GDPR (Communication of a personal data breach to the data subject) and can be used for this purpose.

> Body parameter

```json
{
  "headline": "Data breach alert",
  "userscount": 200,
  "dpoemail": "dpo@abc.com",
  "consequence": "Exposed authentication credentials of some of the clients",
  "measures": "Update the account passwords within 24hours"
}
```

<h3 id="notify-data-breach-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|body|body|object|true|none|
|» headline|body|string|true|none|
|» userscount|body|integer|false|none|
|» dpoemail|body|string|true|none|
|» consequence|body|string|true|none|
|» measures|body|string|true|none|

<h3 id="notify-data-breach-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|Data breach notification send to the users|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Invalid request payload|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Notify events

<a id="opIdNotify events"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{orgID}/notify-events \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{orgID}/notify-events HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "details": "General event notification"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/notify-events',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{orgID}/notify-events',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{orgID}/notify-events', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{orgID}/notify-events', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/notify-events");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{orgID}/notify-events", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{orgID}/notify-events`

Notifies all subscribed users about general events

> Body parameter

```json
{
  "details": "General event notification"
}
```

<h3 id="notify-events-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|body|body|object|true|none|
|» details|body|string|true|none|

<h3 id="notify-events-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|General event notification send to the users|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Invalid request payload|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get data request

<a id="opIdGet data request"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/data-requests/{dataReqID}`

Gets a data request by ID

<h3 id="get-data-request-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|dataReqID|path|string|true|Data request ID|

> Example responses

> 200 Response

```json
{
  "ID": "5de4f01e181e17c6477cc217",
  "UserID": "5db0181fa531350001afc7d5",
  "UserName": "donny@yopmail.com",
  "OrgID": "5dae01aa267e930001609aa4",
  "Type": 2,
  "TypeStr": "Download Data",
  "State": 1,
  "RequestedDate": "2019-12-02 11:06:06 +0000 UTC",
  "ClosedDate": "0001-01-01 00:00:00 +0000 UTC",
  "StateStr": "Request initiated",
  "Comment": ""
}
```

<h3 id="get-data-request-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns data request|[DataRequest](#schemadatarequest)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Failed to fetch data request|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update user request status

<a id="opIdUpdate user request status"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
PATCH https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID} HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "state": 7,
  "comment": ""
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.patch 'https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.patch('https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://api.igrant.io/v1/organizations/{organizationID}/data-requests/{dataReqID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /organizations/{organizationID}/data-requests/{dataReqID}`

Updates user requests status for a particular user request

> Body parameter

```json
{
  "state": 7,
  "comment": ""
}
```

<h3 id="update-user-request-status-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|dataReqID|path|string|true|Data request ID|
|body|body|object|true|none|
|» state|body|integer|true|none|
|» comment|body|string|false|none|

> Example responses

> 200 Response

```json
{
  "ID": "5de4f01e181e17c6477cc217",
  "UserID": "5db0181fa531350001afc7d5",
  "UserName": "donny@yopmail.com",
  "OrgID": "5dae01aa267e930001609aa4",
  "Type": 2,
  "TypeStr": "Download Data",
  "State": 1,
  "RequestedDate": "2019-12-02 11:06:06 +0000 UTC",
  "ClosedDate": "0001-01-01 00:00:00 +0000 UTC",
  "StateStr": "Request initiated",
  "Comment": ""
}
```

<h3 id="update-user-request-status-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns data request|[DataRequest](#schemadatarequest)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Invalid request payload|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## GetPrivacyDashboardStatus

<a id="opIdGetPrivacyDashboardStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/privacy-dashboard-status \
  -H 'Accept: application/status' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/privacy-dashboard-status HTTP/1.1
Host: api.igrant.io
Accept: application/status

```

```javascript

const headers = {
  'Accept':'application/status',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/privacy-dashboard-status',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/status',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/privacy-dashboard-status',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/status',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/privacy-dashboard-status', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/status',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/privacy-dashboard-status', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/privacy-dashboard-status");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/status"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/privacy-dashboard-status", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/privacy-dashboard-status`

*Gets the privacy dashboard status strings*

Gets the privacy dashboard status strings

> Example responses

> 200 Response

<h3 id="getprivacydashboardstatus-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns privacy dashboard status strings|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="getprivacydashboardstatus-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|false|none|none|
|» Str|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## GetPrivacyDashboardDockerImages

<a id="opIdGetPrivacyDashboardDockerImages"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/privacy-dashboard/releases \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/privacy-dashboard/releases HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/privacy-dashboard/releases',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/privacy-dashboard/releases',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/privacy-dashboard/releases', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/privacy-dashboard/releases', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/privacy-dashboard/releases");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/privacy-dashboard/releases", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /privacy-dashboard/releases`

*Get privacy dashboard releases*

Get privacy dashboard releases

> Example responses

> 200 Response

```json
[
  {
    "version": "v1.1.7",
    "timestamp": "1590647928119"
  }
]
```

<h3 id="getprivacydashboarddockerimages-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns privacy dashboard release versions|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="getprivacydashboarddockerimages-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» version|string|false|none|none|
|» timestamp|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get privacy dashboard info

<a id="opIdGet privacy dashboard info"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/privacy-dashboards`

Gets the privacy dashboard info of an organization

<h3 id="get-privacy-dashboard-info-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|

> Example responses

> 200 Response

```json
{
  "HostName": "staging-privacy.igrant.io",
  "Version": "v1.1.7",
  "Status": 2,
  "StatusStr": "Deployed"
}
```

<h3 id="get-privacy-dashboard-info-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns privacy dashboard info|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Unable to fetch privacy dashboard info|None|

<h3 id="get-privacy-dashboard-info-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» HostName|string|false|none|none|
|» Version|string|false|none|none|
|» Status|integer|false|none|none|
|» StatusStr|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Deploy privacy dashboard

<a id="opIdDeploy privacy dashboard"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "HostName": "dn-url.igrant.io",
  "Version": "v1.1.7"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/privacy-dashboards`

Deploys privacy or personal data dashboard for an organisation and point to a chosen DNS

> Body parameter

```json
{
  "HostName": "dn-url.igrant.io",
  "Version": "v1.1.7"
}
```

<h3 id="deploy-privacy-dashboard-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|body|body|object|true|none|
|» HostName|body|string|true|none|
|» Version|body|string|true|none|

> Example responses

> 200 Response

```json
{
  "HostName": "dns-url.igrant.io",
  "Version": "v1.1.7",
  "Status": 2,
  "StatusStr": "Deployed"
}
```

<h3 id="deploy-privacy-dashboard-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns privacy dashboard info|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Invalid request payload|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Failed to deploy privacy dashboard|None|

<h3 id="deploy-privacy-dashboard-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» HostName|string|false|none|none|
|» Version|string|false|none|none|
|» Status|integer|false|none|none|
|» StatusStr|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update privacy dashboard release

<a id="opIdUpdate privacy dashboard release"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/version \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
PATCH https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/version HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "version": "v1.1.7"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/version',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.patch 'https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/version',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.patch('https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/version', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/version', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/version");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/version", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /organizations/{organizationID}/privacy-dashboards/version`

Updates the privacy dashboard release version

> Body parameter

```json
{
  "version": "v1.1.7"
}
```

<h3 id="update-privacy-dashboard-release-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|body|body|object|true|none|
|» version|body|string|true|none|

> Example responses

> 200 Response

```json
{
  "HostName": "staging-privacy.igrant.io",
  "Version": "v1.1.7",
  "Status": 2,
  "StatusStr": "Deployed"
}
```

<h3 id="update-privacy-dashboard-release-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns privacy dashboard info|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Invalid request payload|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Failed to update privacy dashboard release version|None|

<h3 id="update-privacy-dashboard-release-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» HostName|string|false|none|none|
|» Version|string|false|none|none|
|» Status|integer|false|none|none|
|» StatusStr|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update privacy dashboard hostname

<a id="opIdUpdate privacy dashboard hostname"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/hostname \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
PATCH https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/hostname HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "hostname": "hostname.igrant.io"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/hostname',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.patch 'https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/hostname',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.patch('https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/hostname', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/hostname', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/hostname");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards/hostname", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /organizations/{organizationID}/privacy-dashboards/hostname`

Updates the privacy dashboard hostname

> Body parameter

```json
{
  "hostname": "hostname.igrant.io"
}
```

<h3 id="update-privacy-dashboard-hostname-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|body|body|object|true|none|
|» hostname|body|string|true|none|

> Example responses

> 200 Response

```json
{
  "HostName": "hostname.igrant.io",
  "Version": "v1.1.7",
  "Status": 2,
  "StatusStr": "Deployed"
}
```

<h3 id="update-privacy-dashboard-hostname-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns privacy dashboard info|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Invalid request payload|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Failed to update privacy dashboard hostname|None|

<h3 id="update-privacy-dashboard-hostname-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» HostName|string|false|none|none|
|» Version|string|false|none|none|
|» Status|integer|false|none|none|
|» StatusStr|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get all webhooks

<a id="opIdGet all webhooks"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/webhooks \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/webhooks HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/webhooks',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/webhooks',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/webhooks', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/webhooks', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/webhooks");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/webhooks", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/webhooks`

Gets all webhooks for an organisation

<h3 id="get-all-webhooks-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|

> Example responses

> 200 Response

```json
[
  {
    "ID": "5f1ea7d84fd11e0001ad4008",
    "PayloadURL": "https://hookb.in/OerzZXd6nrhnzzlke3wl",
    "Disabled": false,
    "TimeStamp": "1595844568",
    "IsLastDeliverySuccess": true
  }
]
```

<h3 id="get-all-webhooks-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return webhooks|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-all-webhooks-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|false|none|none|
|» PayloadURL|string|false|none|none|
|» Disabled|boolean|false|none|none|
|» TimeStamp|string|false|none|none|
|» IsLastDeliverySuccess|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Create webhook

<a id="opIdCreate webhook"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/webhooks \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/webhooks HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "payloadurl": "https://hookb.in/OerzZXd6nrhnzzlke3wl",
  "subscribedevents": [
    "data.download.initiated",
    "data.download.cancelled",
    "org.subscribed"
  ],
  "contenttype": "application/json",
  "secretkey": "qwerty123",
  "disabled": false,
  "skipsslverification": false
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/webhooks',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/webhooks',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/webhooks', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/webhooks', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/webhooks");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/webhooks", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/webhooks`

Creates a webhook endpoint for an organisation

> Body parameter

```json
{
  "payloadurl": "https://hookb.in/OerzZXd6nrhnzzlke3wl",
  "subscribedevents": [
    "data.download.initiated",
    "data.download.cancelled",
    "org.subscribed"
  ],
  "contenttype": "application/json",
  "secretkey": "qwerty123",
  "disabled": false,
  "skipsslverification": false
}
```

<h3 id="create-webhook-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|body|body|object|true|none|
|» payloadurl|body|string|true|none|
|» subscribedevents|body|[string]|true|none|
|» contenttype|body|string|true|none|
|» secretkey|body|string|true|none|
|» disabled|body|boolean|true|none|
|» skipsslverification|body|boolean|true|none|

> Example responses

> 201 Response

```json
{
  "ID": "5f1ea7d84fd11e0001ad4008",
  "OrgID": "5dae01aa267e930001609aa4",
  "PayloadURL": "https://hookb.in/OerzZXd6nrhnzzlke3wl",
  "ContentType": "application/json",
  "SubscribedEvents": [
    "data.download.initiated",
    "data.download.cancelled",
    "org.subscribed",
    "org.unsubscribed"
  ],
  "Disabled": false,
  "SecretKey": "qwerty123",
  "SkipSSLVerification": false,
  "TimeStamp": "1595844568"
}
```

<h3 id="create-webhook-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Return webhook|[Webhook](#schemawebhook)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Invalid request payload|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Failed to create webhook|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get webhook

<a id="opIdGet webhook"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/webhooks/{webhookID}`

Gets a webhook for an organisation by ID

<h3 id="get-webhook-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|webhookID|path|string|true|Webhook ID|

> Example responses

> 200 Response

```json
{
  "ID": "5f1ea7d84fd11e0001ad4008",
  "OrgID": "5dae01aa267e930001609aa4",
  "PayloadURL": "https://hookb.in/OerzZXd6nrhnzzlke3wl",
  "ContentType": "application/json",
  "SubscribedEvents": [
    "data.download.initiated",
    "data.download.cancelled",
    "org.subscribed",
    "org.unsubscribed"
  ],
  "Disabled": false,
  "SecretKey": "qwerty123",
  "SkipSSLVerification": false,
  "TimeStamp": "1595844568"
}
```

<h3 id="get-webhook-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return webhook|[Webhook](#schemawebhook)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update webhook

<a id="opIdUpdate webhook"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
PUT https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID} HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "payloadurl": "https://hookb.in/OerzZXd6nrhnzzlke3wl",
  "subscribedevents": [
    "data.download.initiated",
    "data.download.cancelled",
    "org.subscribed"
  ],
  "contenttype": "application/json",
  "secretkey": "qwerty123",
  "disabled": false,
  "skipsslverification": false
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.put 'https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.put('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PUT','https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PUT /organizations/{organizationID}/webhooks/{webhookID}`

Updates a webhook for an organisation by ID

> Body parameter

```json
{
  "payloadurl": "https://hookb.in/OerzZXd6nrhnzzlke3wl",
  "subscribedevents": [
    "data.download.initiated",
    "data.download.cancelled",
    "org.subscribed"
  ],
  "contenttype": "application/json",
  "secretkey": "qwerty123",
  "disabled": false,
  "skipsslverification": false
}
```

<h3 id="update-webhook-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|webhookID|path|string|true|Webhook ID|
|body|body|object|true|none|
|» payloadurl|body|string|true|none|
|» subscribedevents|body|[string]|true|none|
|» contenttype|body|string|true|none|
|» secretkey|body|string|true|none|
|» disabled|body|boolean|true|none|
|» skipsslverification|body|boolean|true|none|

> Example responses

> 200 Response

```json
{
  "ID": "5f1ea7d84fd11e0001ad4008",
  "OrgID": "5dae01aa267e930001609aa4",
  "PayloadURL": "https://hookb.in/OerzZXd6nrhnzzlke3wl",
  "ContentType": "application/json",
  "SubscribedEvents": [
    "data.download.initiated",
    "data.download.cancelled",
    "org.subscribed",
    "org.unsubscribed"
  ],
  "Disabled": false,
  "SecretKey": "qwerty123",
  "SkipSSLVerification": false,
  "TimeStamp": "1595844568"
}
```

<h3 id="update-webhook-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return webhook|[Webhook](#schemawebhook)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Delete webhook

<a id="opIdDelete webhook"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID} \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID} HTTP/1.1
Host: api.igrant.io

```

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationID}/webhooks/{webhookID}`

Deletes a webhook for an organisation

<h3 id="delete-webhook-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|webhookID|path|string|true|Webhook ID|

<h3 id="delete-webhook-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Deleted webhook|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Ping webhook

<a id="opIdPing webhook"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/ping \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/ping HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/ping',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/ping',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/ping', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/ping', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/ping");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/ping", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/webhooks/{webhookID}/ping`

Pings webhook payload URL to check the response status code is 200 OK or not

<h3 id="ping-webhook-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|webhookID|path|string|true|Webhook ID|

> Example responses

> 200 Response

```json
{
  "ResponseStatusCode": 200,
  "ResponseStatusStr": "200 OK",
  "ExecutionStartTimeStamp": "1595851645",
  "ExecutionEndTimeStamp": "1595851645",
  "Status": "completed",
  "StatusDescription": ""
}
```

<h3 id="ping-webhook-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return ping status|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Failed to fetch the webhook by given ID|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="ping-webhook-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ResponseStatusCode|integer|false|none|none|
|» ResponseStatusStr|string|false|none|none|
|» ExecutionStartTimeStamp|string|false|none|none|
|» ExecutionEndTimeStamp|string|false|none|none|
|» Status|string|false|none|none|
|» StatusDescription|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get webhook deliveries

<a id="opIdGet webhook deliveries"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/webhooks/{webhookID}/delivery`

Gets the recent webhook deliveries

<h3 id="get-webhook-deliveries-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|webhookID|path|string|true|Webhook ID|
|limit|query|integer|false|Pagination limit (No of results)|
|startid|query|string|false|Pagination start offset (for e.g. delivery ID)|

> Example responses

> 200 Response

```json
{
  "WebhookDeliveries": [
    {
      "ID": "5f1ea9642cc8b10001414631",
      "WebhookID": "5f1ea7d84fd11e0001ad4008",
      "ResponseStatusCode": 200,
      "ResponseStatusStr": "200 OK",
      "TimeStamp": "1595844964",
      "Status": "completed",
      "StatusDescription": ""
    }
  ],
  "Links": {
    "Self": "https://staging-api.igrant.io/v1/organizations/5dae01aa267e930001609aa4/webhooks/5f1ea7d84fd11e0001ad4008/delivery?limit=50",
    "Next": "https://staging-api.igrant.io/v1/organizations/5dae01aa267e930001609aa4/webhooks/5f1ea7d84fd11e0001ad4008/delivery?limit=50&startid=5f1ea9642cc8b10001414631"
  }
}
```

<h3 id="get-webhook-deliveries-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return webhook deliveries|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Failed to fetch webhook deliveries|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-webhook-deliveries-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» WebhookDeliveries|[object]|false|none|none|
|»» ID|string|false|none|none|
|»» WebhookID|string|false|none|none|
|»» ResponseStatusCode|integer|false|none|none|
|»» ResponseStatusStr|string|false|none|none|
|»» TimeStamp|string|false|none|none|
|»» Status|string|false|none|none|
|»» StatusDescription|string|false|none|none|
|» Links|object|false|none|none|
|»» Self|string|false|none|none|
|»» Next|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get payload delivery details

<a id="opIdGet payload delivery details"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}`

Gets the payload delivery details for a webhook by ID

<h3 id="get-payload-delivery-details-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|webhookID|path|string|true|Webhook ID|
|deliveryID|path|string|true|Delivery ID|

> Example responses

> 200 Response

```json
{
  "ID": "5f1ea9632cc8b10001414630",
  "RequestHeaders": {
    "Accept": [
      "*/*"
    ],
    "Content-Type": [
      "application/json"
    ],
    "User-Agent": [
      "IGrant-Hookshot/1.0"
    ],
    "X-Igrant-Signature": [
      "t=1595844963,sig=c4822b6a91221f783520240c740774908c5bc6de2a4a29a9d7ce31f19b624863"
    ]
  },
  "RequestPayload": {
    "data": {
      "organisationID": "5dae01aa267e930001609aa4",
      "userID": "5dbc02ecb99fd0000157547a",
      "dataRequestID": "5dae01ee267e930001609bb8"
    },
    "deliveryid": "5f1ea9632cc8b10001414630",
    "timestamp": "1595844963",
    "type": "consent.disallowed",
    "webhookid": "5f1ea7d84fd11e0001ad4008"
  },
  "ResponseHeaders": {
    "Access-Control-Allow-Headers": [
      "DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range"
    ],
    "Access-Control-Allow-Methods": [
      "GET, POST, OPTIONS, PUT, DELETE"
    ],
    "Access-Control-Allow-Origin": [
      "*"
    ],
    "Access-Control-Expose-Headers": [
      "Content-Length,Content-Range"
    ]
  },
  "ResponseBody": "{\"success\":true}",
  "ResponseStatusCode": 200,
  "ResponseStatusStr": "200 OK",
  "ExecutionStartTimeStamp": "1595844963",
  "ExecutionEndTimeStamp": "1595844963",
  "Status": "completed",
  "StatusDescription": ""
}
```

<h3 id="get-payload-delivery-details-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return webhook delivery|[WebhookDelivery](#schemawebhookdelivery)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Failed to fetch webhook delivery|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Redeliver webhook payload

<a id="opIdRedeliver webhook payload"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}/redeliver \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}/redeliver HTTP/1.1
Host: api.igrant.io

```

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}/redeliver',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}/redeliver',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}/redeliver', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}/redeliver', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}/redeliver");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}/redeliver", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/webhooks/{webhookID}/delivery/{deliveryID}/redeliver`

Redo payload delivery to the webhook

<h3 id="redeliver-webhook-payload-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|webhookID|path|string|true|Webhook ID|
|deliveryID|path|string|true|Delivery ID|

<h3 id="redeliver-webhook-payload-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Redelivered the payload to webhook endpoint|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad request|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal server error|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get webhook event-types

<a id="opIdGet webhook event-types"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/webhooks/event-types \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/webhooks/event-types HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/webhooks/event-types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/webhooks/event-types',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/webhooks/event-types', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/webhooks/event-types', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/webhooks/event-types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/webhooks/event-types", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/webhooks/event-types`

List all available webhook event types

> Example responses

> 200 Response

```json
{
  "EventTypes": [
    "data.download.cancelled",
    "data.update.cancelled",
    "org.unsubscribed",
    "data.delete.initiated",
    "data.download.initiated",
    "data.update.initiated",
    "data.delete.cancelled",
    "consent.allowed",
    "consent.disallowed",
    "org.subscribed"
  ]
}
```

<h3 id="get-webhook-event-types-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return webhook event types|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-webhook-event-types-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» EventTypes|[string]|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get webhook payload types

<a id="opIdGet webhook payload types"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/webhooks/payload/content-types \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/webhooks/payload/content-types HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/webhooks/payload/content-types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/webhooks/payload/content-types',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/webhooks/payload/content-types', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/webhooks/payload/content-types', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/webhooks/payload/content-types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/webhooks/payload/content-types", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/webhooks/payload/content-types`

List available webhook payload content types

> Example responses

> 200 Response

```json
{
  "ContentTypes": [
    "application/json",
    "application/x-www-form-urlencoded"
  ]
}
```

<h3 id="get-webhook-payload-types-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return webhook payload content types|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-webhook-payload-types-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ContentTypes|[string]|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Enable data retention policy

<a id="opIdEnable data retention policy"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/data-retention/enable \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/data-retention/enable HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/data-retention/enable',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/data-retention/enable',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/data-retention/enable', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/data-retention/enable', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/data-retention/enable");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/data-retention/enable", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/data-retention/enable`

Enable data retention policy

<h3 id="enable-data-retention-policy-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|

> Example responses

> 200 Response

```json
{
  "ID": "5daf22d0a531350001afc7c9",
  "Name": "DMart Retail Chain",
  "CoverImageID": "",
  "CoverImageURL": "",
  "LogoImageID": "5ecf5f979a273200016a13ef",
  "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
  "Location": "Stockholm, Sweden",
  "Type": {
    "ID": "5d17cc114dacb40001b29094",
    "Type": "Retail",
    "ImageID": "5d17cc7f4dacb40001b29095",
    "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
  },
  "Description": "",
  "Enabled": true,
  "PolicyURL": "",
  "EulaURL": "",
  "Templates": [
    {
      "ID": "5f187f9efd59960001434c2e",
      "Consent": "Age",
      "PurposeIDs": [
        "5db0303ba531350001afc7e0",
        "5db03048a531350001afc7e1"
      ]
    }
  ],
  "Purposes": [
    {
      "ID": "5db0303ba531350001afc7e0",
      "Name": "Marketing and campaign",
      "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
      "LawfulUsage": false,
      "PolicyURL": "https://orgname.com/policy_default.html"
    }
  ],
  "Admins": [
    {
      "UserID": "5daf22cea531350001afc7c8",
      "RoleID": 1
    }
  ],
  "BillingInfo": {
    "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
    "MaxUserCounter": 4,
    "DefaultChargeNotified": false,
    "CurrentPeriodEnd": 0,
    "PrevMonthUsers": 1,
    "PayPerUserInfo": {
      "UserCommitment": 0,
      "TimeCommitment": "",
      "CancelOnCommitmentEnd": false,
      "CommitmentPeriodRemaining": 0
    },
    "DefaultPaymentSource": {
      "Brand": "Visa",
      "ExpiryMonth": 4,
      "ExpiryYear": 2024,
      "Last4Digits": "4242"
    },
    "Address": {
      "Name": "George Floyd",
      "City": "Stockholm",
      "Country": "Sweden",
      "Line1": "",
      "Line2": "",
      "PostalCode": "",
      "State": ""
    },
    "ServiceAgreementVersion": "v2.0",
    "FreeTrialExpired": true
  },
  "Subs": {
    "Method": 0,
    "Key": ""
  },
  "HlcSupport": false,
  "PrivacyDashboard": {
    "HostName": "dmart.igrant.io",
    "Version": "v1.1.7",
    "Status": 2,
    "Delete": false
  },
  "DataRetention": {
    "RetentionPeriod": 800,
    "Enabled": true
  }
}
```

<h3 id="enable-data-retention-policy-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return organization|[Organisation](#schemaorganisation)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Disable data retention policy

<a id="opIdDisable data retention policy"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/data-retention/disable \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/data-retention/disable HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/data-retention/disable',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/data-retention/disable',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/data-retention/disable', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/data-retention/disable', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/data-retention/disable");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/data-retention/disable", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/data-retention/disable`

Disable data retention policy

<h3 id="disable-data-retention-policy-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|

> Example responses

> 200 Response

```json
{
  "ID": "5daf22d0a531350001afc7c9",
  "Name": "DMart Retail Chain",
  "CoverImageID": "",
  "CoverImageURL": "",
  "LogoImageID": "5ecf5f979a273200016a13ef",
  "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
  "Location": "Stockholm, Sweden",
  "Type": {
    "ID": "5d17cc114dacb40001b29094",
    "Type": "Retail",
    "ImageID": "5d17cc7f4dacb40001b29095",
    "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
  },
  "Description": "",
  "Enabled": true,
  "PolicyURL": "",
  "EulaURL": "",
  "Templates": [
    {
      "ID": "5f187f9efd59960001434c2e",
      "Consent": "Age",
      "PurposeIDs": [
        "5db0303ba531350001afc7e0",
        "5db03048a531350001afc7e1"
      ]
    }
  ],
  "Purposes": [
    {
      "ID": "5db0303ba531350001afc7e0",
      "Name": "Marketing and campaign",
      "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
      "LawfulUsage": false,
      "PolicyURL": "https://orgname.com/policy_default.html"
    }
  ],
  "Admins": [
    {
      "UserID": "5daf22cea531350001afc7c8",
      "RoleID": 1
    }
  ],
  "BillingInfo": {
    "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
    "MaxUserCounter": 4,
    "DefaultChargeNotified": false,
    "CurrentPeriodEnd": 0,
    "PrevMonthUsers": 1,
    "PayPerUserInfo": {
      "UserCommitment": 0,
      "TimeCommitment": "",
      "CancelOnCommitmentEnd": false,
      "CommitmentPeriodRemaining": 0
    },
    "DefaultPaymentSource": {
      "Brand": "Visa",
      "ExpiryMonth": 4,
      "ExpiryYear": 2024,
      "Last4Digits": "4242"
    },
    "Address": {
      "Name": "George Floyd",
      "City": "Stockholm",
      "Country": "Sweden",
      "Line1": "",
      "Line2": "",
      "PostalCode": "",
      "State": ""
    },
    "ServiceAgreementVersion": "v2.0",
    "FreeTrialExpired": true
  },
  "Subs": {
    "Method": 0,
    "Key": ""
  },
  "HlcSupport": false,
  "PrivacyDashboard": {
    "HostName": "dmart.igrant.io",
    "Version": "v1.1.7",
    "Status": 2,
    "Delete": false
  },
  "DataRetention": {
    "RetentionPeriod": 800,
    "Enabled": true
  }
}
```

<h3 id="disable-data-retention-policy-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return organization|[Organisation](#schemaorganisation)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update data retention policy

<a id="opIdUpdate data retention policy"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/data-retention \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/data-retention HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "RetentionPeriod": 800
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/data-retention',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/data-retention',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/data-retention', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/data-retention', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/data-retention");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/data-retention", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/data-retention`

Update data retention policy

> Body parameter

```json
{
  "RetentionPeriod": 800
}
```

<h3 id="update-data-retention-policy-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|body|body|object|true|none|
|» RetentionPeriod|body|integer|true|none|

> Example responses

> 200 Response

```json
{
  "ID": "5daf22d0a531350001afc7c9",
  "Name": "DMart Retail Chain",
  "CoverImageID": "",
  "CoverImageURL": "",
  "LogoImageID": "5ecf5f979a273200016a13ef",
  "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
  "Location": "Stockholm, Sweden",
  "Type": {
    "ID": "5d17cc114dacb40001b29094",
    "Type": "Retail",
    "ImageID": "5d17cc7f4dacb40001b29095",
    "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
  },
  "Description": "",
  "Enabled": true,
  "PolicyURL": "",
  "EulaURL": "",
  "Templates": [
    {
      "ID": "5f187f9efd59960001434c2e",
      "Consent": "Age",
      "PurposeIDs": [
        "5db0303ba531350001afc7e0",
        "5db03048a531350001afc7e1"
      ]
    }
  ],
  "Purposes": [
    {
      "ID": "5db0303ba531350001afc7e0",
      "Name": "Marketing and campaign",
      "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
      "LawfulUsage": false,
      "PolicyURL": "https://orgname.com/policy_default.html"
    }
  ],
  "Admins": [
    {
      "UserID": "5daf22cea531350001afc7c8",
      "RoleID": 1
    }
  ],
  "BillingInfo": {
    "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
    "MaxUserCounter": 4,
    "DefaultChargeNotified": false,
    "CurrentPeriodEnd": 0,
    "PrevMonthUsers": 1,
    "PayPerUserInfo": {
      "UserCommitment": 0,
      "TimeCommitment": "",
      "CancelOnCommitmentEnd": false,
      "CommitmentPeriodRemaining": 0
    },
    "DefaultPaymentSource": {
      "Brand": "Visa",
      "ExpiryMonth": 4,
      "ExpiryYear": 2024,
      "Last4Digits": "4242"
    },
    "Address": {
      "Name": "George Floyd",
      "City": "Stockholm",
      "Country": "Sweden",
      "Line1": "",
      "Line2": "",
      "PostalCode": "",
      "State": ""
    },
    "ServiceAgreementVersion": "v2.0",
    "FreeTrialExpired": true
  },
  "Subs": {
    "Method": 0,
    "Key": ""
  },
  "HlcSupport": false,
  "PrivacyDashboard": {
    "HostName": "dmart.igrant.io",
    "Version": "v1.1.7",
    "Status": 2,
    "Delete": false
  },
  "DataRetention": {
    "RetentionPeriod": 800,
    "Enabled": true
  }
}
```

<h3 id="update-data-retention-policy-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return organization|[Organisation](#schemaorganisation)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get data retention policy

<a id="opIdGet data retention policy"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/data-retention \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/data-retention HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/data-retention',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/data-retention',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/data-retention', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/data-retention', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/data-retention");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/data-retention", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/data-retention`

Get data retention policy

<h3 id="get-data-retention-policy-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|

> Example responses

> 200 Response

```json
{
  "RetentionPeriod": 800,
  "Enabled": true
}
```

<h3 id="get-data-retention-policy-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return data retention policy for an organization|[OrganisationDataRetention](#schemaorganisationdataretention)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

<h1 id="introduction-to-igrant-io-apis-data-model-management">Data model management</h1>

iGrant.io maintains a metadata indexed registry with a publish–subscribe service. It supports all CRUD (create, read, update, and delete) services for managing metadata of the data models for any organisation. These services are used for transparency, compliance, facilitating agreement handling between ecosystem players and exercising personal data rights in a standardised manner.

## Add usage purpose

<a id="opIdAdd usage purpose"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/purposes \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/purposes HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "purposes": [
    {
      "name": "Marketing and capmpaign",
      "description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
      "lawfulusage": false,
      "policyurl": "https://igrant.io/policy_default.html"
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/purposes',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/purposes',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/purposes', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/purposes', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/purposes");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/purposes", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/purposes`

Adds a new personal data usage purpose to an organisation. This is provisioned by an organisation during data model upload. The organization is able to give a description towards their users, and the applicable lawful bases for processing, for example as defined in Article 6 of the GDPR.

> Body parameter

```json
{
  "purposes": [
    {
      "name": "Marketing and capmpaign",
      "description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
      "lawfulusage": false,
      "policyurl": "https://igrant.io/policy_default.html"
    }
  ]
}
```

<h3 id="add-usage-purpose-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|body|body|object|true|none|
|» purposes|body|[object]|false|none|
|»» name|body|string|true|none|
|»» description|body|string|true|none|
|»» lawfulusage|body|boolean|false|none|
|»» policyurl|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="add-usage-purpose-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Returns organisation (with newly created purposes)|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="add-usage-purpose-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get all usage purposes

<a id="opIdGet all usage purposes"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/purposes \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/purposes HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/purposes',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/purposes',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/purposes', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/purposes', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/purposes");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/purposes", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/purposes`

Gets all the usage purposes defined in the organisation. This information is used towards an organisation list the usage purpose and to obtain user consents.

<h3 id="get-all-usage-purposes-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|

> Example responses

> 201 Response

```json
{
  "OrgID": "5dae01aa267e930001609aa4",
  "Purposes": [
    {
      "ID": "5db0303ba531350001afc7e0",
      "Name": "Marketing and campaign",
      "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
      "LawfulUsage": false,
      "PolicyURL": "https://orgname.com/policy_default.html"
    }
  ]
}
```

<h3 id="get-all-usage-purposes-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Returns all the purposes for an organization|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-all-usage-purposes-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» OrgID|string|false|none|none|
|» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» Description|string|false|none|none|
|»» LawfulUsage|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get a usage purpose

<a id="opIdGet a usage purpose"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/purposes/{purposeID}`

Gets a particular usage purpose defined in the organisation. This information is used towards an organisation user to obtain user consents.

<h3 id="get-a-usage-purpose-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|purposeID|path|string|true|Purpose ID|

> Example responses

> 200 Response

```json
{
  "Purpose": {
    "ID": "5db0303ba531350001afc7e0",
    "Name": "Marketing and campaign",
    "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
    "LawfulUsage": false,
    "PolicyURL": "https://orgname.com/policy_default.html"
  },
  "Templates": [
    {
      "ID": "5f187f9efd59960001434c2e",
      "Consent": "Age"
    }
  ]
}
```

<h3 id="get-a-usage-purpose-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns purpose and associated attributes|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-a-usage-purpose-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Purpose|[Purpose](#schemapurpose)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» Description|string|false|none|none|
|»» LawfulUsage|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|» Templates|[[Template](#schematemplate)]|false|none|none|
|»» ID|string|false|none|none|
|»» Consent|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Delete a usage purpose

<a id="opIdDelete a usage purpose"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationID}/purposes/{purposeID}`

Deletes an existing data usage purpose.

<h3 id="delete-a-usage-purpose-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|purposeID|path|string|true|Purpose ID|

> Example responses

> 201 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="delete-a-usage-purpose-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Returns organisation|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="delete-a-usage-purpose-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update usage purpose

<a id="opIdUpdate usage purpose"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
PUT https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID} HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "name": "Marketing and campaign",
  "description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
  "lawfulusage": false,
  "policyurl": "https://igrant.io/policy_default.html"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.put 'https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.put('https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PUT','https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PUT /organizations/{organizationID}/purposes/{purposeID}`

Updates a new personal data usage purpose in an organisation. The organisation is able to modify details provisioned earlier.

> Body parameter

```json
{
  "name": "Marketing and campaign",
  "description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
  "lawfulusage": false,
  "policyurl": "https://igrant.io/policy_default.html"
}
```

<h3 id="update-usage-purpose-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|
|purposeID|path|string|true|Purpose ID|
|body|body|object|true|none|
|» name|body|string|true|none|
|» description|body|string|true|none|
|» lawfulusage|body|boolean|false|none|
|» policyurl|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="update-usage-purpose-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Returns the organisation|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="update-usage-purpose-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get attributes with usage purposes

<a id="opIdGet attributes with usage purposes"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/templates \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/templates HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/templates',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/templates',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/templates', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/templates', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/templates");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/templates", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/templates`

Gets all attributes and its attached list of one or more usage purposes

<h3 id="get-attributes-with-usage-purposes-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

> Example responses

> 201 Response

```json
{
  "OrgID": "5dae01aa267e930001609aa4",
  "Templates": [
    {
      "ID": "5f187f9efd59960001434c2e",
      "Consent": "Age",
      "PurposeIDs": [
        "5db0303ba531350001afc7e0",
        "5db03048a531350001afc7e1"
      ]
    }
  ]
}
```

<h3 id="get-attributes-with-usage-purposes-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Returns attributes and attached purposes|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-attributes-with-usage-purposes-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» OrgID|string|false|none|none|
|» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|object|false|none|none|
|»»» PurposeIDs|[string]|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Add attribute to purpose

<a id="opIdAdd attribute to purpose"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/templates \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/templates HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "templates": [
    {
      "consent": "Age",
      "purposeids": [
        "5f1c9298fd59960001434c6d"
      ]
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/templates',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/templates',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/templates', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/templates', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/templates");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/templates", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/templates`

Adds an attribute and attaches it one or more pre-defined usage purposes

> Body parameter

```json
{
  "templates": [
    {
      "consent": "Age",
      "purposeids": [
        "5f1c9298fd59960001434c6d"
      ]
    }
  ]
}
```

<h3 id="add-attribute-to-purpose-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|body|body|object|true|none|
|» templates|body|[object]|true|none|
|»» consent|body|string|true|none|
|»» purposeids|body|[string]|true|none|

> Example responses

> 201 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="add-attribute-to-purpose-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Returns organisation|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="add-attribute-to-purpose-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Delete attribute

<a id="opIdDelete attribute"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationID}/templates/{templateID}`

Deletes an attribute and the detaches it from a usage purpose

<h3 id="delete-attribute-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|templateID|path|string|true|Attribute ID|

> Example responses

> 201 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="delete-attribute-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Returns organisation|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="delete-attribute-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update attribute

<a id="opIdUpdate attribute"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
PUT https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID} HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "consent": "Age",
  "purposeids": [
    "5f1c9298fd59960001434c6d"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.put 'https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.put('https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PUT','https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "https://api.igrant.io/v1/organizations/{organizationID}/templates/{templateID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PUT /organizations/{organizationID}/templates/{templateID}`

Updates an attribute details, attaches or detaches to one or more purposes

> Body parameter

```json
{
  "consent": "Age",
  "purposeids": [
    "5f1c9298fd59960001434c6d"
  ]
}
```

<h3 id="update-attribute-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|templateID|path|string|true|Attribute ID|
|body|body|object|false|none|
|» consent|body|string|true|none|
|» purposeids|body|[string]|true|none|

> Example responses

> 201 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="update-attribute-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Returns organisation|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="update-attribute-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

<h1 id="introduction-to-igrant-io-apis-personal-data-transfer">Personal data transfer</h1>

A key aspect of iGrant.io is that it enables a consented data exchange. The platform allows organisations to define the data exchange purpose and the lawful basis of processing or exchanging data. The lawful basis can be based on consent or other legal basis (e.g. lawful purpose, contract, legal obligation, vital interests, public task, legitimate interests). If it's without consent, individuals will only have limited or no rights to withdraw the consents, however the individual can still follow what data is processed and why.

## Generate org QR code

<a id="opIdGenerate org QR code"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/qrcode \
  -H 'Accept: image/png' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/qrcode HTTP/1.1
Host: api.igrant.io
Accept: image/png

```

```javascript

const headers = {
  'Accept':'image/png',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/qrcode',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'image/png',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/qrcode',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'image/png',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/qrcode', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'image/png',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/qrcode', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/qrcode");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"image/png"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/qrcode", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/qrcode`

Generates a QR code for organization

<h3 id="generate-org-qr-code-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|

> Example responses

> 200 Response

<h3 id="generate-org-qr-code-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns organization QR code|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get org QR code

<a id="opIdGet org QR code"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/qrcode \
  -H 'Accept: image/png' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/qrcode HTTP/1.1
Host: api.igrant.io
Accept: image/png

```

```javascript

const headers = {
  'Accept':'image/png',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/qrcode',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'image/png',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/qrcode',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'image/png',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/qrcode', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'image/png',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/qrcode', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/qrcode");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"image/png"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/qrcode", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/qrcode`

Gets an organization QR code

<h3 id="get-org-qr-code-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|

> Example responses

> 200 Response

<h3 id="get-org-qr-code-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns organization QR code|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|QR code does not exist|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Delete org QR code

<a id="opIdDelete org QR code"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationID}/qrcode \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationID}/qrcode HTTP/1.1
Host: api.igrant.io

```

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/qrcode',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationID}/qrcode',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationID}/qrcode', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/organizations/{organizationID}/qrcode', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/qrcode");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationID}/qrcode", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationID}/qrcode`

Deletes an organization QR code

<h3 id="delete-org-qr-code-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|

<h3 id="delete-org-qr-code-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Deleted organization QR code|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|QR code doesnot exist|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get org QR code (web)

<a id="opIdGet org QR code (web)"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{orgID}/qrcode/web \
  -H 'Accept: image/png' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{orgID}/qrcode/web HTTP/1.1
Host: api.igrant.io
Accept: image/png

```

```javascript

const headers = {
  'Accept':'image/png',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/qrcode/web',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'image/png',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{orgID}/qrcode/web',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'image/png',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{orgID}/qrcode/web', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'image/png',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{orgID}/qrcode/web', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/qrcode/web");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"image/png"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{orgID}/qrcode/web", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{orgID}/qrcode/web`

Get organization QR code (web)

<h3 id="get-org-qr-code-(web)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|

> Example responses

> 200 Response

<h3 id="get-org-qr-code-(web)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns organization QR code|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|QR code does not exist|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get purpose QR code

<a id="opIdGet purpose QR code"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode \
  -H 'Accept: image/png' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode HTTP/1.1
Host: api.igrant.io
Accept: image/png

```

```javascript

const headers = {
  'Accept':'image/png',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'image/png',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'image/png',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'image/png',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"image/png"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{orgID}/purposes/{purposeID}/qrcode`

Gets an organization QR code created for a particular usage purpose

<h3 id="get-purpose-qr-code-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|purposeID|path|string|true|Purpose ID|

> Example responses

> 200 Response

<h3 id="get-purpose-qr-code-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns purpose QR code|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|QR code does not exist|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Generate purpose QR code

<a id="opIdGenerate purpose QR code"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode \
  -H 'Accept: image/png' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode HTTP/1.1
Host: api.igrant.io
Accept: image/png

```

```javascript

const headers = {
  'Accept':'image/png',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'image/png',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'image/png',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'image/png',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"image/png"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{orgID}/purposes/{purposeID}/qrcode`

Generates a QR code for an organization for a particular usage purpose

<h3 id="generate-purpose-qr-code-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|purposeID|path|string|true|Purpose ID|

> Example responses

> 200 Response

<h3 id="generate-purpose-qr-code-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns purpose QR code|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|QR code does not exist|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Delete purpose QR code

<a id="opIdDelete purpose QR code"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode HTTP/1.1
Host: api.igrant.io

```

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{orgID}/purposes/{purposeID}/qrcode`

Deletes an organization's purpose level QR code

<h3 id="delete-purpose-qr-code-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|purposeID|path|string|true|Purpose ID|

<h3 id="delete-purpose-qr-code-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Deleted purpose QR code|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|QR code doesnot exist|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get purpose QR code (web)

<a id="opIdGet purpose QR code (web)"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode/web \
  -H 'Accept: image/png' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode/web HTTP/1.1
Host: api.igrant.io
Accept: image/png

```

```javascript

const headers = {
  'Accept':'image/png',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode/web',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'image/png',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode/web',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'image/png',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode/web', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'image/png',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode/web', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode/web");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"image/png"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{orgID}/purposes/{purposeID}/qrcode/web", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{orgID}/purposes/{purposeID}/qrcode/web`

Gets the QR code for an organization for a particular usage purpose that was generated earlier (web)

<h3 id="get-purpose-qr-code-(web)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|purposeID|path|string|true|Purpose ID|

> Example responses

> 200 Response

<h3 id="get-purpose-qr-code-(web)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns purpose QR code|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|QR code doesnot exist|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get data requests

<a id="opIdGet data requests"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{orgID}/data-requests?status=open \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{orgID}/data-requests?status=open HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/data-requests?status=open',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{orgID}/data-requests',
  params: {
  'status' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{orgID}/data-requests', params={
  'status': 'open'
}, headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{orgID}/data-requests', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/data-requests?status=open");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{orgID}/data-requests", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{orgID}/data-requests`

Get data requests. These are requests placed by the users to the organization in regards with their data. for e.g. data download request, data delete request, data modify request

<h3 id="get-data-requests-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|status|query|string|true|Status of the data request|
|limit|query|integer|false|Pagination limit|
|startid|query|string|false|Pagination start ID (for e.g. data request ID)|

#### Enumerated Values

|Parameter|Value|
|---|---|
|status|open|
|status|closed|

> Example responses

> 200 Response

```json
{
  "DataRequests": [
    {
      "ID": "5de4f01e181e17c6477cc217",
      "UserID": "5db0181fa531350001afc7d5",
      "UserName": "donny@yopmail.com",
      "OrgID": "5dae01aa267e930001609aa4",
      "Type": 2,
      "TypeStr": "Download Data",
      "State": 1,
      "RequestedDate": "2019-12-02 11:06:06 +0000 UTC",
      "ClosedDate": "0001-01-01 00:00:00 +0000 UTC",
      "StateStr": "Request initiated",
      "Comment": ""
    }
  ],
  "IsRequestsOngoing": false,
  "IsDataDeleteRequestOngoing": false,
  "IsDataDownloadRequestOngoing": false,
  "Links": {
    "Self": "https://staging-api.igrant.io/v1/organizations/5dae01aa267e930001609aa4/data-requests?limit=50",
    "Next": "https://staging-api.igrant.io/v1/organizations/5dae01aa267e930001609aa4/data-requests?limit=50&startid=5de4f01e181e17c6477cc217"
  }
}
```

<h3 id="get-data-requests-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns user data requests|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Invalid status|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Unable to fetch data request for the organization|None|

<h3 id="get-data-requests-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» DataRequests|[[DataRequest](#schemadatarequest)]|false|none|none|
|»» ID|string|false|none|none|
|»» UserID|string|false|none|none|
|»» UserName|string|false|none|none|
|»» OrgID|string|false|none|none|
|»» Type|integer|false|none|none|
|»» TypeStr|string|false|none|none|
|»» State|integer|false|none|none|
|»» RequestedDate|string(date-time)|false|none|none|
|»» ClosedDate|string(date-time)|false|none|none|
|»» StateStr|string|false|none|none|
|»» Comment|string|false|none|none|
|» IsRequestsOngoing|boolean|false|none|none|
|» IsDataDeleteRequestOngoing|boolean|false|none|none|
|» IsDataDownloadRequestOngoing|boolean|false|none|none|
|» Links|object|false|none|none|
|»» Self|string|false|none|none|
|»» Next|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

<h1 id="introduction-to-igrant-io-apis-logging-and-accountability">Logging and accountability</h1>

This provides all APIs that are used to retried logs for organisations and is used primarily by the business admins (including DPOs) to have some visibility into the actions within iGrant.io for their organisations. Logs are categoried into different areas like Security (Login/Logout), API Calls, Organisation Users (Owner/Admin/… in the future DPO, etc), End User and Webhooks

## Get logs

<a id="opIdGet logs"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{orgID}/logs \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{orgID}/logs HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{orgID}/logs',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{orgID}/logs',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{orgID}/logs', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{orgID}/logs', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{orgID}/logs");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{orgID}/logs", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{orgID}/logs`

Gets all action logs for an organization

<h3 id="get-logs-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|orgID|path|string|true|Organization ID|
|limit|query|integer|false|Pagination limit|
|startid|query|string|false|Pagination start ID (for e.g. action log ID)|

> Example responses

> 200 Response

```json
{
  "Logs": [
    {
      "ID": "5f1dfeb1181e17c6479ef3d2",
      "Type": 2,
      "TypeStr": "API calls",
      "UserID": "5daf22cea531350001afc7c8",
      "UserName": "dmart@yopmail.com",
      "TimeStamp": "2020-07-26 22:07:45 +0000 UTC",
      "Log": "Organization API: /v1/organizations/5dae01aa267e930001609aa4/purposes/5dae1058a1215e00012103d8/consented/users called by user: dmart@yopmail.com"
    }
  ],
  "Links": {
    "Self": "https://staging-api.igrant.io/v1/organizations/5dae01aa267e930001609aa4/logs?limit=50",
    "Next": "https://staging-api.igrant.io/v1/organizations/5dae01aa267e930001609aa4/logs?startid=5db6c4d1181e17c64776e72a&limit=50"
  }
}
```

<h3 id="get-logs-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns organisation logs|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-logs-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Logs|[[OrganisationActionLog](#schemaorganisationactionlog)]|false|none|none|
|»» ID|string|false|none|none|
|»» Type|integer|false|none|none|
|»» TypeStr|string|false|none|none|
|»» UserID|string|false|none|none|
|»» UserName|string|false|none|none|
|»» TimeStamp|string(date-time)|false|none|none|
|»» Log|string|false|none|none|
|» Links|object|false|none|none|
|»» Self|string|false|none|none|
|»» Next|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

<h1 id="introduction-to-igrant-io-apis-internal">Internal</h1>

Strictly for internal use of iGrant.io or based on auhorisation

## Unregisters user

<a id="opIdUnregisters user"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/users/unregister \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/users/unregister HTTP/1.1
Host: api.igrant.io

```

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/users/unregister',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/users/unregister',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/users/unregister', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/users/unregister', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/unregister");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/users/unregister", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /users/unregister`

Unregisters user i.e. removes user from IAM and database

<h3 id="unregisters-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|User removed successfully|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get all organisations

<a id="opIdGet all organisations"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations`

Gets all organisations in the system

> Example responses

> 200 Response

```json
[
  {
    "ID": "5dae01aa267e930001609aa4",
    "Name": "iGrant.io Dev",
    "TypeID": "5d95a566a67c8800012f27d1",
    "Type": "RegTech"
  }
]
```

<h3 id="get-all-organisations-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns array of basic organisational detail (along with type information)|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-all-organisations-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|false|none|none|
|» Name|string|false|none|none|
|» TypeID|string|false|none|none|
|» Type|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Search organisation

<a id="opIdSearch organisation"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/search \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/search HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/search',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/search',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/search', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/search', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/search");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/search", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/search`

Search organisations by name

<h3 id="search-organisation-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|name|query|string|false|Name of the organisation|

> Example responses

> 200 Response

```json
{
  "Organizations": [
    {
      "ID": "5daf22d0a531350001afc7c9",
      "Name": "DMart Retail Chain",
      "Location": "Ernakulam, India",
      "Type": "Retail",
      "Subscribed": false
    }
  ]
}
```

<h3 id="search-organisation-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns all organisations matched by the name|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="search-organisation-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organizations|[object]|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|string|false|none|none|
|»» Subscribed|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get data request states

<a id="opIdGet data request states"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/data-requests \
  -H 'Accept: application/json'

```

```http
GET https://api.igrant.io/v1/organizations/data-requests HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('https://api.igrant.io/v1/organizations/data-requests',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/data-requests',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://api.igrant.io/v1/organizations/data-requests', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/data-requests', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/data-requests");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/data-requests", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/data-requests`

Get all data request states configured in the system

> Example responses

> 200 Response

```json
[
  {
    "ID": 1,
    "Str": "Request initiated"
  },
  {
    "ID": 2,
    "Str": "Request acknowledged"
  },
  {
    "ID": 6,
    "Str": "Request processed without action"
  },
  {
    "ID": 7,
    "Str": "Request processed with action"
  },
  {
    "ID": 8,
    "Str": "Request cancelled by user"
  }
]
```

<h3 id="get-data-request-states-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns data request states|Inline|

<h3 id="get-data-request-states-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|false|none|none|
|» Str|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Get organization types

<a id="opIdGet organization types"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/types \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/types HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/types',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/types', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/types', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/types", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/types`

Gets all organization category types in the system. E.g. Retail, Banking and finance etc.

> Example responses

> 200 Response

```json
[
  {
    "ID": "5d17cc114dacb40001b29094",
    "Type": "Retail",
    "ImageID": "5d17cc334dacb40002b29093",
    "ImageURL": "https://<server-url>/organizations/types/5d17cc334dacb40002b29093/image"
  }
]
```

<h3 id="get-organization-types-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns all organization types|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-organization-types-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|false|none|none|
|» Type|string|false|none|none|
|» ImageID|string|false|none|none|
|» ImageURL|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Add organization type

<a id="opIdAdd organization type"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/types \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/types HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "type": "Banking"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/types',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/types',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/types', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/types', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/types", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/types`

Add an organization type

> Body parameter

```json
{
  "type": "Banking"
}
```

<h3 id="add-organization-type-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» type|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "ID": "5d17cc114dacb40001b29094",
  "Type": "Retail",
  "ImageID": "5d17cc7f4dacb40001b29095",
  "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
}
```

<h3 id="add-organization-type-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Returns created organization type|[OrganisationType](#schemaorganisationtype)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Deletes organization type

<a id="opIdDeletes organization type"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/types/{typeID} \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/organizations/types/{typeID} HTTP/1.1
Host: api.igrant.io

```

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/types/{typeID}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/types/{typeID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/organizations/types/{typeID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/organizations/types/{typeID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/types/{typeID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/types/{typeID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/types/{typeID}`

Deletes organization type by given ID

<h3 id="deletes-organization-type-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|typeID|path|string|true|Organisation type ID|

<h3 id="deletes-organization-type-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Successfully deleted organisation type|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|404 not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update organization type

<a id="opIdUpdate organization type"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/types/{typeID} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
PATCH https://api.igrant.io/v1/organizations/types/{typeID} HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "type": "Retail"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/types/{typeID}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.patch 'https://api.igrant.io/v1/organizations/types/{typeID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.patch('https://api.igrant.io/v1/organizations/types/{typeID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','https://api.igrant.io/v1/organizations/types/{typeID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/types/{typeID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://api.igrant.io/v1/organizations/types/{typeID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /organizations/types/{typeID}`

Updates an organization category type

> Body parameter

```json
{
  "type": "Retail"
}
```

<h3 id="update-organization-type-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|typeID|path|string|true|Organization type ID|
|body|body|object|true|none|
|» type|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "ID": "5d17cc114dacb40001b29094",
  "Type": "Retail",
  "ImageID": "5d17cc7f4dacb40001b29095",
  "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
}
```

<h3 id="update-organization-type-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Return updated organisation type|[OrganisationType](#schemaorganisationtype)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|404 not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get organization type image

<a id="opIdGet organization type image"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/types/{typeID}/image \
  -H 'Accept: image/jpeg' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/types/{typeID}/image HTTP/1.1
Host: api.igrant.io
Accept: image/jpeg

```

```javascript

const headers = {
  'Accept':'image/jpeg',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/types/{typeID}/image',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'image/jpeg',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/types/{typeID}/image',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'image/jpeg',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/types/{typeID}/image', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'image/jpeg',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/types/{typeID}/image', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/types/{typeID}/image");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"image/jpeg"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/types/{typeID}/image", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/types/{typeID}/image`

Gets an organization type image by type ID

<h3 id="get-organization-type-image-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|typeID|path|string|true|Organisation type ID|

> Example responses

> 200 Response

<h3 id="get-organization-type-image-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns organization type icon|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|404 not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Update organization type image

<a id="opIdUpdate organization type image"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/types/{typeID}/image \
  -H 'Content-Type: multipart/form-data' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/types/{typeID}/image HTTP/1.1
Host: api.igrant.io
Content-Type: multipart/form-data

```

```javascript
const inputBody = '{
  "orgtypeicon": "string"
}';
const headers = {
  'Content-Type':'multipart/form-data',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/types/{typeID}/image',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'multipart/form-data',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/types/{typeID}/image',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'multipart/form-data',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/types/{typeID}/image', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'multipart/form-data',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/types/{typeID}/image', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/types/{typeID}/image");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"multipart/form-data"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/types/{typeID}/image", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/types/{typeID}/image`

Updates organization type image

> Body parameter

```yaml
orgtypeicon: string

```

<h3 id="update-organization-type-image-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|typeID|path|string|true|Organization type ID|
|body|body|object|true|none|
|» orgtypeicon|body|string(binary)|true|none|

<h3 id="update-organization-type-image-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Updated organization type image|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|404 not found|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Invalid org type icon file provided|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Delete organization

<a id="opIdDelete organization"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationID} \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationID} HTTP/1.1
Host: api.igrant.io

```

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/organizations/{organizationID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationID}`

Deletes an organization by ID

<h3 id="delete-organization-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

<h3 id="delete-organization-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Deleted organization|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|404 not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get organisation admins

<a id="opIdGet organisation admins"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/admins \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/admins HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/admins',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/admins',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/admins', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/admins', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/admins");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/admins", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/admins`

Gets all admin users of an organisation. The various user types include admins, DPOs and developers

<h3 id="get-organisation-admins-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|

> Example responses

> 200 Response

```json
[
  {
    "UserID": "5dae01aa267e930001609aa3",
    "Role": "Admin"
  }
]
```

<h3 id="get-organisation-admins-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return organisation admins|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-organisation-admins-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» UserID|string|false|none|none|
|» Role|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Add organisation roles

<a id="opIdAdd organisation roles"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/admins \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/admins HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "userid": "5dbc02ecb99fd0000157547a",
  "roleid": 1
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/admins',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/admins',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/admins', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/organizations/{organizationID}/admins', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/admins");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/admins", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/admins`

Add admins, dpo and other roles to organization users.

> Body parameter

```json
{
  "userid": "5dbc02ecb99fd0000157547a",
  "roleid": 1
}
```

<h3 id="add-organisation-roles-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|body|body|object|true|none|
|» userid|body|string|true|none|
|» roleid|body|integer|true|none|

> Example responses

> 201 Response

```json
{
  "Organization": {
    "ID": "5daf22d0a531350001afc7c9",
    "Name": "DMart Retail Chain",
    "CoverImageID": "",
    "CoverImageURL": "",
    "LogoImageID": "5ecf5f979a273200016a13ef",
    "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
    "Location": "Stockholm, Sweden",
    "Type": {
      "ID": "5d17cc114dacb40001b29094",
      "Type": "Retail",
      "ImageID": "5d17cc7f4dacb40001b29095",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
    },
    "Description": "",
    "Enabled": true,
    "PolicyURL": "",
    "EulaURL": "",
    "Templates": [
      {
        "ID": "5f187f9efd59960001434c2e",
        "Consent": "Age",
        "PurposeIDs": [
          "5db0303ba531350001afc7e0",
          "5db03048a531350001afc7e1"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "5db0303ba531350001afc7e0",
        "Name": "Marketing and campaign",
        "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
        "LawfulUsage": false,
        "PolicyURL": "https://orgname.com/policy_default.html"
      }
    ],
    "Admins": [
      {
        "UserID": "5daf22cea531350001afc7c8",
        "RoleID": 1
      }
    ],
    "BillingInfo": {
      "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
      "MaxUserCounter": 4,
      "DefaultChargeNotified": false,
      "CurrentPeriodEnd": 0,
      "PrevMonthUsers": 1,
      "PayPerUserInfo": {
        "UserCommitment": 0,
        "TimeCommitment": "",
        "CancelOnCommitmentEnd": false,
        "CommitmentPeriodRemaining": 0
      },
      "DefaultPaymentSource": {
        "Brand": "Visa",
        "ExpiryMonth": 4,
        "ExpiryYear": 2024,
        "Last4Digits": "4242"
      },
      "Address": {
        "Name": "George Floyd",
        "City": "Stockholm",
        "Country": "Sweden",
        "Line1": "",
        "Line2": "",
        "PostalCode": "",
        "State": ""
      },
      "ServiceAgreementVersion": "v2.0",
      "FreeTrialExpired": true
    },
    "Subs": {
      "Method": 0,
      "Key": ""
    },
    "HlcSupport": false,
    "PrivacyDashboard": {
      "HostName": "dmart.igrant.io",
      "Version": "v1.1.7",
      "Status": 2,
      "Delete": false
    },
    "DataRetention": {
      "RetentionPeriod": 800,
      "Enabled": true
    }
  }
}
```

<h3 id="add-organisation-roles-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Returns organisation|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="add-organisation-roles-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Organization|[Organisation](#schemaorganisation)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get org cover image

<a id="opIdGet org cover image"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}/web \
  -H 'Accept: image/jpeg' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}/web HTTP/1.1
Host: api.igrant.io
Accept: image/jpeg

```

```javascript

const headers = {
  'Accept':'image/jpeg',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}/web',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'image/jpeg',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}/web',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'image/jpeg',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}/web', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'image/jpeg',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}/web', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}/web");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"image/jpeg"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/image/{imageID}/web", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/image/{imageID}/web`

Gets an organization cover image

<h3 id="get-org-cover-image-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organisation ID|
|imageID|path|string|true|Image ID|

> Example responses

> 200 Response

<h3 id="get-org-cover-image-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns organization image|string|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|404 not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get all users

<a id="opIdGet all users"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/users \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/users HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/users',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/users',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/users', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/users', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /users`

Get all users

> Example responses

> 200 Response

```json
[
  {
    "ID": "5dae01aa267e930001609aa3",
    "Email": "dmart@yopmail.com",
    "Name": "Ravi Shankar"
  }
]
```

<h3 id="get-all-users-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return all the users|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-all-users-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|false|none|none|
|» Email|string|false|none|none|
|» Name|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Add user

<a id="opIdAdd user"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/users \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
POST https://api.igrant.io/v1/users HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "phone": "+12222332233",
  "name": "Donny Yang"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/users',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.igrant.io/v1/users',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.igrant.io/v1/users', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.igrant.io/v1/users', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /users`

Add user to the system

> Body parameter

```json
{
  "phone": "+12222332233",
  "name": "Donny Yang"
}
```

<h3 id="add-user-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» phone|body|string|true|none|
|» name|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "User": {
    "ID": "5daf22cea531351111afc7c8",
    "Name": "George Floyd",
    "IamID": "9d8c4h69-9fb2-4115-a4c3-53bddb8f2d7f",
    "Email": "dmart@yopmail.com",
    "Phone": "+46 7252 98991",
    "ImageID": "5f1458a5chaa930001e78f12",
    "ImageURL": "https:/<server-url>/image/5f1458a5chaa930001e78f12",
    "LastVisit": "2020-07-22T18:04:02Z",
    "Client": {
      "Token": "fEkxEwh4T2mr-B4yQoZ9TT:APA91bHibhwLXkc2l6LxWxHW5TrKBoLrXGCHDO6A9pXQ0ShvDYPfxXm57D8tIsR-fwybjs-_OFXCgCbBQpYVON2svUiooWgJBFETXg_jUGy0B9etUHFnyuCbXPihyoCuJc2Gn6s9XkN_",
      "Type": 2
    },
    "Orgs": [
      {
        "OrgID": "5dae2a9fa1215e00012103e4",
        "Name": "Nordea Bank AB",
        "Location": "Stockholm, Sweden",
        "Type": "Banking and Finance",
        "TypeID": "5d95a566a67c8800012f27d1",
        "EulaAccepted": false
      }
    ],
    "APIKey": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiI1ZGFmMjJjZWE1MzEzNTAwMDFhZmM3YzgiLCJleHAiOjE2MDQwNjMwNjV9.Irk0XgXfVhIdlgBNz6ggEXlvoIPtzUzJv4-x0VKYBGE",
    "Roles": [
      {
        "RoleID": 1,
        "OrgID": "5daf22d0a531350001afc7c9"
      }
    ]
  }
}
```

<h3 id="add-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Return created user|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Invalid request payload|None|

<h3 id="add-user-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» User|[User](#schemauser)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» IamID|string|false|none|none|
|»» Email|string|false|none|none|
|»» Phone|string|false|none|none|
|»» ImageID|string|false|none|none|
|»» ImageURL|string|false|none|none|
|»» LastVisit|string(date-time)|false|none|none|
|»» Client|object|false|none|none|
|»»» Token|string|false|none|none|
|»»» Type|integer|false|none|none|
|»» Orgs|[object]|false|none|none|
|»»» OrgID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Location|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» TypeID|string|false|none|none|
|»»» EulaAccepted|boolean|false|none|none|
|»» APIKey|string|false|none|none|
|»» Roles|[object]|false|none|none|
|»»» RoleID|integer|false|none|none|
|»»» OrgID|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get user by ID

<a id="opIdGet user by ID"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/users/{userID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/users/{userID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/users/{userID}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/users/{userID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/users/{userID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/users/{userID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/{userID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/users/{userID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /users/{userID}`

Get user by ID

<h3 id="get-user-by-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userID|path|string|true|User ID|

> Example responses

> 200 Response

```json
{
  "User": {
    "ID": "5daf22cea531351111afc7c8",
    "Name": "George Floyd",
    "IamID": "9d8c4h69-9fb2-4115-a4c3-53bddb8f2d7f",
    "Email": "dmart@yopmail.com",
    "Phone": "+46 7252 98991",
    "ImageID": "5f1458a5chaa930001e78f12",
    "ImageURL": "https:/<server-url>/image/5f1458a5chaa930001e78f12",
    "LastVisit": "2020-07-22T18:04:02Z",
    "Client": {
      "Token": "fEkxEwh4T2mr-B4yQoZ9TT:APA91bHibhwLXkc2l6LxWxHW5TrKBoLrXGCHDO6A9pXQ0ShvDYPfxXm57D8tIsR-fwybjs-_OFXCgCbBQpYVON2svUiooWgJBFETXg_jUGy0B9etUHFnyuCbXPihyoCuJc2Gn6s9XkN_",
      "Type": 2
    },
    "Orgs": [
      {
        "OrgID": "5dae2a9fa1215e00012103e4",
        "Name": "Nordea Bank AB",
        "Location": "Stockholm, Sweden",
        "Type": "Banking and Finance",
        "TypeID": "5d95a566a67c8800012f27d1",
        "EulaAccepted": false
      }
    ],
    "APIKey": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiI1ZGFmMjJjZWE1MzEzNTAwMDFhZmM3YzgiLCJleHAiOjE2MDQwNjMwNjV9.Irk0XgXfVhIdlgBNz6ggEXlvoIPtzUzJv4-x0VKYBGE",
    "Roles": [
      {
        "RoleID": 1,
        "OrgID": "5daf22d0a531350001afc7c9"
      }
    ]
  }
}
```

<h3 id="get-user-by-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the user|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Invalid user ID|None|

<h3 id="get-user-by-id-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» User|[User](#schemauser)|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» IamID|string|false|none|none|
|»» Email|string|false|none|none|
|»» Phone|string|false|none|none|
|»» ImageID|string|false|none|none|
|»» ImageURL|string|false|none|none|
|»» LastVisit|string(date-time)|false|none|none|
|»» Client|object|false|none|none|
|»»» Token|string|false|none|none|
|»»» Type|integer|false|none|none|
|»» Orgs|[object]|false|none|none|
|»»» OrgID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Location|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» TypeID|string|false|none|none|
|»»» EulaAccepted|boolean|false|none|none|
|»» APIKey|string|false|none|none|
|»» Roles|[object]|false|none|none|
|»»» RoleID|integer|false|none|none|
|»»» OrgID|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Delete user

<a id="opIdDelete user"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/users/{userID} \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/users/{userID} HTTP/1.1
Host: api.igrant.io

```

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/users/{userID}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/users/{userID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/users/{userID}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/users/{userID}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/{userID}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/users/{userID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /users/{userID}`

Delete user

<h3 id="delete-user-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userID|path|string|true|User ID|

<h3 id="delete-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Deleted the user|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|User not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get users image

<a id="opIdGet users image"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/users/{userID}/image/{imageID}/web \
  -H 'Accept: image/jpeg' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/users/{userID}/image/{imageID}/web HTTP/1.1
Host: api.igrant.io
Accept: image/jpeg

```

```javascript

const headers = {
  'Accept':'image/jpeg',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/users/{userID}/image/{imageID}/web',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'image/jpeg',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/users/{userID}/image/{imageID}/web',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'image/jpeg',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/users/{userID}/image/{imageID}/web', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'image/jpeg',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/users/{userID}/image/{imageID}/web', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/{userID}/image/{imageID}/web");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"image/jpeg"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/users/{userID}/image/{imageID}/web", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /users/{userID}/image/{imageID}/web`

Get the image for a particular user

<h3 id="get-users-image-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userID|path|string|true|User ID|
|imageID|path|string|true|Image ID|

> Example responses

> 200 Response

<h3 id="get-users-image-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns user image|string|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|404 not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Get subscribed organisations

<a id="opIdGet subscribed organisations"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/users/{userID}/organizations \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
GET https://api.igrant.io/v1/users/{userID}/organizations HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/users/{userID}/organizations',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.igrant.io/v1/users/{userID}/organizations',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.igrant.io/v1/users/{userID}/organizations', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.igrant.io/v1/users/{userID}/organizations', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/users/{userID}/organizations");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/users/{userID}/organizations", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /users/{userID}/organizations`

Gets details of all organizations subscribed by the user

<h3 id="get-subscribed-organisations-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|userID|path|string|true|User ID|
|typeID|query|string|false|Organization type ID (for filtering)|

> Example responses

> 200 Response

```json
{
  "UserOrganizations": [
    {
      "ID": "5daf22d0a531350001afc7c9",
      "Name": "DMart Retail Chain",
      "CoverImageID": "",
      "CoverImageURL": "",
      "LogoImageID": "5ecf5f979a273200016a13ef",
      "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
      "Location": "Stockholm, Sweden",
      "Type": {
        "ID": "5d17cc114dacb40001b29094",
        "Type": "Retail",
        "ImageID": "5d17cc7f4dacb40001b29095",
        "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
      },
      "Description": "",
      "Enabled": true,
      "PolicyURL": "",
      "EulaURL": "",
      "Templates": [
        {
          "ID": "5f187f9efd59960001434c2e",
          "Consent": "Age",
          "PurposeIDs": [
            "5db0303ba531350001afc7e0",
            "5db03048a531350001afc7e1"
          ]
        }
      ],
      "Purposes": [
        {
          "ID": "5db0303ba531350001afc7e0",
          "Name": "Marketing and campaign",
          "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
          "LawfulUsage": false,
          "PolicyURL": "https://orgname.com/policy_default.html"
        }
      ],
      "Admins": [
        {
          "UserID": "5daf22cea531350001afc7c8",
          "RoleID": 1
        }
      ],
      "BillingInfo": {
        "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
        "MaxUserCounter": 4,
        "DefaultChargeNotified": false,
        "CurrentPeriodEnd": 0,
        "PrevMonthUsers": 1,
        "PayPerUserInfo": {
          "UserCommitment": 0,
          "TimeCommitment": "",
          "CancelOnCommitmentEnd": false,
          "CommitmentPeriodRemaining": 0
        },
        "DefaultPaymentSource": {
          "Brand": "Visa",
          "ExpiryMonth": 4,
          "ExpiryYear": 2024,
          "Last4Digits": "4242"
        },
        "Address": {
          "Name": "George Floyd",
          "City": "Stockholm",
          "Country": "Sweden",
          "Line1": "",
          "Line2": "",
          "PostalCode": "",
          "State": ""
        },
        "ServiceAgreementVersion": "v2.0",
        "FreeTrialExpired": true
      },
      "Subs": {
        "Method": 0,
        "Key": ""
      },
      "HlcSupport": false,
      "PrivacyDashboard": {
        "HostName": "dmart.igrant.io",
        "Version": "v1.1.7",
        "Status": 2,
        "Delete": false
      },
      "DataRetention": {
        "RetentionPeriod": 800,
        "Enabled": true
      }
    }
  ]
}
```

<h3 id="get-subscribed-organisations-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns subscribed organizations|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="get-subscribed-organisations-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» UserOrganizations|[[Organisation](#schemaorganisation)]|false|none|none|
|»» ID|string|false|none|none|
|»» Name|string|false|none|none|
|»» CoverImageID|string|false|none|none|
|»» CoverImageURL|string|false|none|none|
|»» LogoImageID|string|false|none|none|
|»» LogoImageURL|string|false|none|none|
|»» Location|string|false|none|none|
|»» Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|»»» ID|string|false|none|none|
|»»» Type|string|false|none|none|
|»»» ImageID|string|false|none|none|
|»»» ImageURL|string|false|none|none|
|»» Description|string|false|none|none|
|»» Enabled|boolean|false|none|none|
|»» PolicyURL|string|false|none|none|
|»» EulaURL|string|false|none|none|
|»» Templates|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[Template](#schematemplate)|false|none|none|
|»»»» ID|string|false|none|none|
|»»»» Consent|string|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» PurposeIDs|[string]|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|»»» ID|string|false|none|none|
|»»» Name|string|false|none|none|
|»»» Description|string|false|none|none|
|»»» LawfulUsage|boolean|false|none|none|
|»»» PolicyURL|string|false|none|none|
|»» Admins|[object]|false|none|none|
|»»» UserID|string|false|none|none|
|»»» RoleID|string|false|none|none|
|»» BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|»»» BillingRegistrationID|string|false|none|none|
|»»» MaxUserCounter|integer|false|none|none|
|»»» DefaultChargeNotified|boolean|false|none|none|
|»»» CurrentPeriodEnd|integer|false|none|none|
|»»» PrevMonthUsers|integer|false|none|none|
|»»» PayPerUserInfo|object|false|none|none|
|»»»» UserCommitment|integer|false|none|none|
|»»»» TimeCommitment|string|false|none|none|
|»»»» CancelOnCommitmentEnd|boolean|false|none|none|
|»»»» CommitmentPeriodRemaining|integer|false|none|none|
|»»» DefaultPaymentSource|object|false|none|none|
|»»»» Brand|string|false|none|none|
|»»»» ExpiryMonth|integer|false|none|none|
|»»»» ExpiryYear|integer|false|none|none|
|»»»» Last4Digits|string|false|none|none|
|»»» Address|object|false|none|none|
|»»»» Name|string|false|none|none|
|»»»» City|string|false|none|none|
|»»»» Country|string|false|none|none|
|»»»» Line1|string|false|none|none|
|»»»» Line2|string|false|none|none|
|»»»» PostalCode|string|false|none|none|
|»»»» State|string|false|none|none|
|»»» ServiceAgreementVersion|string|false|none|none|
|»»» FreeTrialExpired|boolean|false|none|none|
|»» Subs|object|false|none|none|
|»»» Method|integer|false|none|none|
|»»» Key|string|false|none|none|
|»» HlcSupport|boolean|false|none|none|
|»» PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|»»» HostName|string|false|none|none|
|»»» Version|string|false|none|none|
|»»» Status|integer|false|none|none|
|»»» Delete|boolean|false|none|none|
|»» DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|
|»»» RetentionPeriod|integer|false|none|none|
|»»» Enabled|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

## Delete privacy dashboard

<a id="opIdDelete privacy dashboard"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationID}/privacy-dashboards", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationID}/privacy-dashboards`

Admin restricted API to delete the privacy dashboard for the organization

<h3 id="delete-privacy-dashboard-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|Organization ID|

> Example responses

> 200 Response

```json
{
  "HostName": "dmart.igrant.io",
  "Version": "v1.1.7",
  "Status": 2,
  "Delete": false
}
```

<h3 id="delete-privacy-dashboard-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Deleted privacy dashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Failed to delete privacy dashboard|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearerAuth
</aside>

# Schemas

<h2 id="tocS_Token">Token</h2>
<!-- backwards compatibility -->
<a id="schematoken"></a>
<a id="schema_Token"></a>
<a id="tocStoken"></a>
<a id="tocstoken"></a>

```json
{
  "access_token": "eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDeHhVYTVaQ2NnaENxQUxTZy1wbFVYUkJlNE1ERG9zamF0enNYa1lqMEtFIn0.eyJqdGkiOiIzZDM0NDk3Zi05NDYxLTQyZDItYjA0My01ZTU2MTVhOTg0ODYiLCJleHAiOjE1OTU2MTAwMjksIm5iZiI6MCwiaWF0IjoxNTk1NTg4NDI5LCJpc3MiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJhdWQiOiJhY2NvdW50Iiwic3ViIjoiOWQ4YzRkNjktOWZiMi00MTE1LWE0YzMtNTNiY2JiOGYyZDdmIiwidHlwIjoiQmVhcmVyIiwiYXpwIjoiaWdyYW50LWlvcy1hcHAiLCJhdXRoX3RpbWUiOjAsInNlc3Npb25fc3RhdGUiOiIxMWQwYjg3OC0wMWNkLTQ1YmYtYTQxOC04Yzc0ZjkyNTE5NmUiLCJhY3IiOiIxIiwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbIm9mZmxpbmVfYWNjZXNzIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJSYXZpIFNoYW5rYXIiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJkbWFydEB5b3BtYWlsLmNvbSIsImdpdmVuX25hbWUiOiJSYXZpIFNoYW5rYXIiLCJmYW1pbHlfbmFtZSI6IiIsImVtYWlsIjoiZG1hcnRAeW9wbWFpbC5jb20ifQ.K6eOOztvymq7W6yq7mjioJ76eZ7djtIjowqBlx9oCXIfbdt7W2HF6zX7FvkXFuta79ObDYeiqjt9Hy-9SWgS4-QGOFEM9pvT1aLC6gspeI2143P8ZPWWjHRuOH6Ht6TR8ML_X-DJ5n9hmoB9LDc8Vk39zTHhdmtSpu-yUrWHs2wFDmwO8yFdf9Em038WGxo4PYKzqzdEjsIVhSJy-BpkjoEluYxNkOGh3uQ4LZ7jbmXM83mwqEg8r-RwLljjqP3d2_7TSrNcO4Z8IVNslLv5wuSk9ZgCsPqE6poMjFLmrvOAcu2Rx6Em_me19RN1bTT2wrm_Joulzc02XcMyN9gDoA",
  "expires_in": 21600,
  "refresh_expires_in": 36000,
  "refresh_token": "eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI5YmJiYTI4Ni1mYzI3LTRmMjItODg5Ny05MGU5NTMyNjE0NjkifQ.eyJqdGkiOiJhMzFlZWZkMS00MDNhLTQyZmYtODQ3Mi1hMjYzMjAwMjNmZjMiLCJleHAiOjE1OTU2MjQ0MjksIm5iZiI6MCwiaWF0IjoxNTk1NTg4NDI5LCJpc3MiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJhdWQiOiJodHRwczovL3N0YWdpbmctaWFtLmlncmFudC5pby9hdXRoL3JlYWxtcy9pZ3JhbnQtdXNlcnMiLCJzdWIiOiI5ZDhjNGQ2OS05ZmIyLTQxMTUtYTRjMy01M2JjYmI4ZjJkN2YiLCJ0eXAiOiJSZWZyZXNoIiwiYXpwIjoiaWdyYW50LWlvcy1hcHAiLCJhdXRoX3RpbWUiOjAsInNlc3Npb25fc3RhdGUiOiIxMWQwYjg3OC0wMWNkLTQ1YmYtYTQxOC04Yzc0ZjkyNTE5NmUiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJ1bWFfYXV0aG9yaXphdGlvbiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoicHJvZmlsZSBlbWFpbCJ9.DknM937PZWqwPiczJdNeIbEo0-R-09hBbOJiqRrDmqo",
  "token_type": "bearer"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|access_token|string|false|none|none|
|expires_in|integer|false|none|none|
|refresh_token|string|false|none|none|
|refresh_expires_in|integer|false|none|none|
|token_type|string|false|none|none|

<h2 id="tocS_User">User</h2>
<!-- backwards compatibility -->
<a id="schemauser"></a>
<a id="schema_User"></a>
<a id="tocSuser"></a>
<a id="tocsuser"></a>

```json
{
  "ID": "5daf22cea531351111afc7c8",
  "Name": "George Floyd",
  "IamID": "9d8c4h69-9fb2-4115-a4c3-53bddb8f2d7f",
  "Email": "dmart@yopmail.com",
  "Phone": "+46 7252 98991",
  "ImageID": "5f1458a5chaa930001e78f12",
  "ImageURL": "https:/<server-url>/image/5f1458a5chaa930001e78f12",
  "LastVisit": "2020-07-22T18:04:02Z",
  "Client": {
    "Token": "fEkxEwh4T2mr-B4yQoZ9TT:APA91bHibhwLXkc2l6LxWxHW5TrKBoLrXGCHDO6A9pXQ0ShvDYPfxXm57D8tIsR-fwybjs-_OFXCgCbBQpYVON2svUiooWgJBFETXg_jUGy0B9etUHFnyuCbXPihyoCuJc2Gn6s9XkN_",
    "Type": 2
  },
  "Orgs": [
    {
      "OrgID": "5dae2a9fa1215e00012103e4",
      "Name": "Nordea Bank AB",
      "Location": "Stockholm, Sweden",
      "Type": "Banking and Finance",
      "TypeID": "5d95a566a67c8800012f27d1",
      "EulaAccepted": false
    }
  ],
  "APIKey": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiI1ZGFmMjJjZWE1MzEzNTAwMDFhZmM3YzgiLCJleHAiOjE2MDQwNjMwNjV9.Irk0XgXfVhIdlgBNz6ggEXlvoIPtzUzJv4-x0VKYBGE",
  "Roles": [
    {
      "RoleID": 1,
      "OrgID": "5daf22d0a531350001afc7c9"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|none|
|Name|string|false|none|none|
|IamID|string|false|none|none|
|Email|string|false|none|none|
|Phone|string|false|none|none|
|ImageID|string|false|none|none|
|ImageURL|string|false|none|none|
|LastVisit|string(date-time)|false|none|none|
|Client|object|false|none|none|
|» Token|string|false|none|none|
|» Type|integer|false|none|none|
|Orgs|[object]|false|none|none|
|» OrgID|string|false|none|none|
|» Name|string|false|none|none|
|» Location|string|false|none|none|
|» Type|string|false|none|none|
|» TypeID|string|false|none|none|
|» EulaAccepted|boolean|false|none|none|
|APIKey|string|false|none|none|
|Roles|[object]|false|none|none|
|» RoleID|integer|false|none|none|
|» OrgID|string|false|none|none|

<h2 id="tocS_Webhook">Webhook</h2>
<!-- backwards compatibility -->
<a id="schemawebhook"></a>
<a id="schema_Webhook"></a>
<a id="tocSwebhook"></a>
<a id="tocswebhook"></a>

```json
{
  "ID": "5f1ea7d84fd11e0001ad4008",
  "OrgID": "5dae01aa267e930001609aa4",
  "PayloadURL": "https://hookb.in/OerzZXd6nrhnzzlke3wl",
  "ContentType": "application/json",
  "SubscribedEvents": [
    "data.download.initiated",
    "data.download.cancelled",
    "org.subscribed",
    "org.unsubscribed"
  ],
  "Disabled": false,
  "SecretKey": "qwerty123",
  "SkipSSLVerification": false,
  "TimeStamp": "1595844568"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|none|
|OrgID|string|false|none|none|
|PayloadURL|string|false|none|none|
|ContentType|string|false|none|none|
|SubscribedEvents|[string]|false|none|none|
|Disabled|boolean|false|none|none|
|SecretKey|string|false|none|none|
|SkipSSLVerification|boolean|false|none|none|
|TimeStamp|string|false|none|none|

<h2 id="tocS_DataRequestWebhookEvent">DataRequestWebhookEvent</h2>
<!-- backwards compatibility -->
<a id="schemadatarequestwebhookevent"></a>
<a id="schema_DataRequestWebhookEvent"></a>
<a id="tocSdatarequestwebhookevent"></a>
<a id="tocsdatarequestwebhookevent"></a>

```json
{
  "organisationID": "5dae01aa267e930001609aa4",
  "userID": "5dbc02ecb99fd0000157547a",
  "dataRequestID": "5dae01ee267e930001609bb8"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|organisationID|string|false|none|none|
|userID|string|false|none|none|
|dataRequestID|string|false|none|none|

<h2 id="tocS_DataUpdateRequestWebhookEvent">DataUpdateRequestWebhookEvent</h2>
<!-- backwards compatibility -->
<a id="schemadataupdaterequestwebhookevent"></a>
<a id="schema_DataUpdateRequestWebhookEvent"></a>
<a id="tocSdataupdaterequestwebhookevent"></a>
<a id="tocsdataupdaterequestwebhookevent"></a>

```json
{
  "organisationID": "5dae01aa267e930001609aa4",
  "userID": "5dbc02ecb99fd0000157547a",
  "dataRequestID": "5dae01ee267e930001609bb8",
  "consentID": "5e4e91036c7aa200012aa9da",
  "purposeID": "5dae1058a1215e00012103d8",
  "attributeID": "5dae01ee267e930001609aa8"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|organisationID|string|false|none|none|
|userID|string|false|none|none|
|dataRequestID|string|false|none|none|
|consentID|string|false|none|none|
|purposeID|string|false|none|none|
|attributeID|string|false|none|none|

<h2 id="tocS_ConsentWebhookEvent">ConsentWebhookEvent</h2>
<!-- backwards compatibility -->
<a id="schemaconsentwebhookevent"></a>
<a id="schema_ConsentWebhookEvent"></a>
<a id="tocSconsentwebhookevent"></a>
<a id="tocsconsentwebhookevent"></a>

```json
{
  "organisationID": "5dae01aa267e930001609aa4",
  "userID": "5dbc02ecb99fd0000157547a",
  "consentID": "5e4e91036c7aa200012aa9da",
  "purposeID": "5dae1058a1215e00012103d8",
  "attribute": [
    "5dae01ee267e930001609aa8",
    "5dae01f4267e930001609aa9",
    "5dae106ba1215e00012103d9",
    "5f1df5c84e26ea0001b9f3a7",
    "5f1df6214e26ea0001b9f3ad"
  ],
  "days": 0,
  "timestamp": "1595844963"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|organisationID|string|false|none|none|
|userID|string|false|none|none|
|consentID|string|false|none|none|
|purposeID|string|false|none|none|
|attribute|[string]|false|none|none|
|days|integer|false|none|none|
|timestamp|string|false|none|none|

<h2 id="tocS_OrgSubscriptionWebhookEvent">OrgSubscriptionWebhookEvent</h2>
<!-- backwards compatibility -->
<a id="schemaorgsubscriptionwebhookevent"></a>
<a id="schema_OrgSubscriptionWebhookEvent"></a>
<a id="tocSorgsubscriptionwebhookevent"></a>
<a id="tocsorgsubscriptionwebhookevent"></a>

```json
{
  "organisationID": "5dae01aa267e930001609aa4",
  "userID": "5dbc02ecb99fd0000157547a"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|organisationID|string|false|none|none|
|userID|string|false|none|none|

<h2 id="tocS_WebhookEvent">WebhookEvent</h2>
<!-- backwards compatibility -->
<a id="schemawebhookevent"></a>
<a id="schema_WebhookEvent"></a>
<a id="tocSwebhookevent"></a>
<a id="tocswebhookevent"></a>

```json
{
  "data": {
    "organisationID": "5dae01aa267e930001609aa4",
    "userID": "5dbc02ecb99fd0000157547a",
    "dataRequestID": "5dae01ee267e930001609bb8"
  },
  "deliveryid": "5f1ea9632cc8b10001414630",
  "timestamp": "1595844963",
  "type": "consent.disallowed",
  "webhookid": "5f1ea7d84fd11e0001ad4008"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|data|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[DataRequestWebhookEvent](#schemadatarequestwebhookevent)|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[DataUpdateRequestWebhookEvent](#schemadataupdaterequestwebhookevent)|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[ConsentWebhookEvent](#schemaconsentwebhookevent)|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[OrgSubscriptionWebhookEvent](#schemaorgsubscriptionwebhookevent)|false|none|none|

continued

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deliveryid|string|false|none|none|
|timestamp|string|false|none|none|
|type|string|false|none|none|
|webhookid|string|false|none|none|

<h2 id="tocS_WebhookDelivery">WebhookDelivery</h2>
<!-- backwards compatibility -->
<a id="schemawebhookdelivery"></a>
<a id="schema_WebhookDelivery"></a>
<a id="tocSwebhookdelivery"></a>
<a id="tocswebhookdelivery"></a>

```json
{
  "ID": "5f1ea9632cc8b10001414630",
  "RequestHeaders": {
    "Accept": [
      "*/*"
    ],
    "Content-Type": [
      "application/json"
    ],
    "User-Agent": [
      "IGrant-Hookshot/1.0"
    ],
    "X-Igrant-Signature": [
      "t=1595844963,sig=c4822b6a91221f783520240c740774908c5bc6de2a4a29a9d7ce31f19b624863"
    ]
  },
  "RequestPayload": {
    "data": {
      "organisationID": "5dae01aa267e930001609aa4",
      "userID": "5dbc02ecb99fd0000157547a",
      "dataRequestID": "5dae01ee267e930001609bb8"
    },
    "deliveryid": "5f1ea9632cc8b10001414630",
    "timestamp": "1595844963",
    "type": "consent.disallowed",
    "webhookid": "5f1ea7d84fd11e0001ad4008"
  },
  "ResponseHeaders": {
    "Access-Control-Allow-Headers": [
      "DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range"
    ],
    "Access-Control-Allow-Methods": [
      "GET, POST, OPTIONS, PUT, DELETE"
    ],
    "Access-Control-Allow-Origin": [
      "*"
    ],
    "Access-Control-Expose-Headers": [
      "Content-Length,Content-Range"
    ]
  },
  "ResponseBody": "{\"success\":true}",
  "ResponseStatusCode": 200,
  "ResponseStatusStr": "200 OK",
  "ExecutionStartTimeStamp": "1595844963",
  "ExecutionEndTimeStamp": "1595844963",
  "Status": "completed",
  "StatusDescription": ""
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|none|
|RequestHeaders|object|false|none|none|
|» **additionalProperties**|[string]|false|none|none|
|RequestPayload|[WebhookEvent](#schemawebhookevent)|false|none|none|
|ResponseHeaders|object|false|none|none|
|» **additionalProperties**|[string]|false|none|none|
|ResponseBody|string|false|none|none|
|ResponseStatusCode|integer|false|none|none|
|ResponseStatusStr|string|false|none|none|
|ExecutionStartTimeStamp|string|false|none|none|
|ExecutionEndTimeStamp|string|false|none|none|
|Status|string|false|none|none|
|StatusDescription|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Status|completed|
|Status|failed|

<h2 id="tocS_DataRequest">DataRequest</h2>
<!-- backwards compatibility -->
<a id="schemadatarequest"></a>
<a id="schema_DataRequest"></a>
<a id="tocSdatarequest"></a>
<a id="tocsdatarequest"></a>

```json
{
  "ID": "5de4f01e181e17c6477cc217",
  "UserID": "5db0181fa531350001afc7d5",
  "UserName": "donny@yopmail.com",
  "OrgID": "5dae01aa267e930001609aa4",
  "Type": 2,
  "TypeStr": "Download Data",
  "State": 1,
  "RequestedDate": "2019-12-02 11:06:06 +0000 UTC",
  "ClosedDate": "0001-01-01 00:00:00 +0000 UTC",
  "StateStr": "Request initiated",
  "Comment": ""
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|none|
|UserID|string|false|none|none|
|UserName|string|false|none|none|
|OrgID|string|false|none|none|
|Type|integer|false|none|none|
|TypeStr|string|false|none|none|
|State|integer|false|none|none|
|RequestedDate|string(date-time)|false|none|none|
|ClosedDate|string(date-time)|false|none|none|
|StateStr|string|false|none|none|
|Comment|string|false|none|none|

<h2 id="tocS_OrganisationType">OrganisationType</h2>
<!-- backwards compatibility -->
<a id="schemaorganisationtype"></a>
<a id="schema_OrganisationType"></a>
<a id="tocSorganisationtype"></a>
<a id="tocsorganisationtype"></a>

```json
{
  "ID": "5d17cc114dacb40001b29094",
  "Type": "Retail",
  "ImageID": "5d17cc7f4dacb40001b29095",
  "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|none|
|Type|string|false|none|none|
|ImageID|string|false|none|none|
|ImageURL|string|false|none|none|

<h2 id="tocS_OrganisationActionLog">OrganisationActionLog</h2>
<!-- backwards compatibility -->
<a id="schemaorganisationactionlog"></a>
<a id="schema_OrganisationActionLog"></a>
<a id="tocSorganisationactionlog"></a>
<a id="tocsorganisationactionlog"></a>

```json
{
  "ID": "5f1dfeb1181e17c6479ef3d2",
  "Type": 2,
  "TypeStr": "API calls",
  "UserID": "5daf22cea531350001afc7c8",
  "UserName": "dmart@yopmail.com",
  "TimeStamp": "2020-07-26 22:07:45 +0000 UTC",
  "Log": "Organization API: /v1/organizations/5dae01aa267e930001609aa4/purposes/5dae1058a1215e00012103d8/consented/users called by user: dmart@yopmail.com"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|none|
|Type|integer|false|none|none|
|TypeStr|string|false|none|none|
|UserID|string|false|none|none|
|UserName|string|false|none|none|
|TimeStamp|string(date-time)|false|none|none|
|Log|string|false|none|none|

<h2 id="tocS_OrganisationDataRetention">OrganisationDataRetention</h2>
<!-- backwards compatibility -->
<a id="schemaorganisationdataretention"></a>
<a id="schema_OrganisationDataRetention"></a>
<a id="tocSorganisationdataretention"></a>
<a id="tocsorganisationdataretention"></a>

```json
{
  "RetentionPeriod": 800,
  "Enabled": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|RetentionPeriod|integer|false|none|none|
|Enabled|boolean|false|none|none|

<h2 id="tocS_OrganisationBillingInfo">OrganisationBillingInfo</h2>
<!-- backwards compatibility -->
<a id="schemaorganisationbillinginfo"></a>
<a id="schema_OrganisationBillingInfo"></a>
<a id="tocSorganisationbillinginfo"></a>
<a id="tocsorganisationbillinginfo"></a>

```json
{
  "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
  "MaxUserCounter": 4,
  "DefaultChargeNotified": false,
  "CurrentPeriodEnd": 0,
  "PrevMonthUsers": 1,
  "PayPerUserInfo": {
    "UserCommitment": 0,
    "TimeCommitment": "",
    "CancelOnCommitmentEnd": false,
    "CommitmentPeriodRemaining": 0
  },
  "DefaultPaymentSource": {
    "Brand": "Visa",
    "ExpiryMonth": 4,
    "ExpiryYear": 2024,
    "Last4Digits": "4242"
  },
  "Address": {
    "Name": "George Floyd",
    "City": "Stockholm",
    "Country": "Sweden",
    "Line1": "",
    "Line2": "",
    "PostalCode": "",
    "State": ""
  },
  "ServiceAgreementVersion": "v2.0",
  "FreeTrialExpired": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|BillingRegistrationID|string|false|none|none|
|MaxUserCounter|integer|false|none|none|
|DefaultChargeNotified|boolean|false|none|none|
|CurrentPeriodEnd|integer|false|none|none|
|PrevMonthUsers|integer|false|none|none|
|PayPerUserInfo|object|false|none|none|
|» UserCommitment|integer|false|none|none|
|» TimeCommitment|string|false|none|none|
|» CancelOnCommitmentEnd|boolean|false|none|none|
|» CommitmentPeriodRemaining|integer|false|none|none|
|DefaultPaymentSource|object|false|none|none|
|» Brand|string|false|none|none|
|» ExpiryMonth|integer|false|none|none|
|» ExpiryYear|integer|false|none|none|
|» Last4Digits|string|false|none|none|
|Address|object|false|none|none|
|» Name|string|false|none|none|
|» City|string|false|none|none|
|» Country|string|false|none|none|
|» Line1|string|false|none|none|
|» Line2|string|false|none|none|
|» PostalCode|string|false|none|none|
|» State|string|false|none|none|
|ServiceAgreementVersion|string|false|none|none|
|FreeTrialExpired|boolean|false|none|none|

<h2 id="tocS_OrganisationPrivacyBoard">OrganisationPrivacyBoard</h2>
<!-- backwards compatibility -->
<a id="schemaorganisationprivacyboard"></a>
<a id="schema_OrganisationPrivacyBoard"></a>
<a id="tocSorganisationprivacyboard"></a>
<a id="tocsorganisationprivacyboard"></a>

```json
{
  "HostName": "dmart.igrant.io",
  "Version": "v1.1.7",
  "Status": 2,
  "Delete": false
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|HostName|string|false|none|none|
|Version|string|false|none|none|
|Status|integer|false|none|none|
|Delete|boolean|false|none|none|

<h2 id="tocS_Template">Template</h2>
<!-- backwards compatibility -->
<a id="schematemplate"></a>
<a id="schema_Template"></a>
<a id="tocStemplate"></a>
<a id="tocstemplate"></a>

```json
{
  "ID": "5f187f9efd59960001434c2e",
  "Consent": "Age"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|none|
|Consent|string|false|none|none|

<h2 id="tocS_Purpose">Purpose</h2>
<!-- backwards compatibility -->
<a id="schemapurpose"></a>
<a id="schema_Purpose"></a>
<a id="tocSpurpose"></a>
<a id="tocspurpose"></a>

```json
{
  "ID": "5db0303ba531350001afc7e0",
  "Name": "Marketing and campaign",
  "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
  "LawfulUsage": false,
  "PolicyURL": "https://orgname.com/policy_default.html"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|none|
|Name|string|false|none|none|
|Description|string|false|none|none|
|LawfulUsage|boolean|false|none|none|
|PolicyURL|string|false|none|none|

<h2 id="tocS_AttributeConsent">AttributeConsent</h2>
<!-- backwards compatibility -->
<a id="schemaattributeconsent"></a>
<a id="schema_AttributeConsent"></a>
<a id="tocSattributeconsent"></a>
<a id="tocsattributeconsent"></a>

```json
{
  "ID": "5dae01ee267e930001609aa8",
  "Description": "Name",
  "Value": "",
  "Status": {
    "Consent": "Allow",
    "TimeStamp": "0001-01-01T00:00:00Z",
    "Days": 0,
    "Remaining": 0
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|none|
|Description|string|false|none|none|
|Value|string|false|none|none|
|Status|object|false|none|none|
|» Consent|string|false|none|none|
|» TimeStamp|string(date-time)|false|none|none|
|» Days|integer|false|none|none|
|» Remaining|integer|false|none|none|

<h2 id="tocS_Organisation">Organisation</h2>
<!-- backwards compatibility -->
<a id="schemaorganisation"></a>
<a id="schema_Organisation"></a>
<a id="tocSorganisation"></a>
<a id="tocsorganisation"></a>

```json
{
  "ID": "5daf22d0a531350001afc7c9",
  "Name": "DMart Retail Chain",
  "CoverImageID": "",
  "CoverImageURL": "",
  "LogoImageID": "5ecf5f979a273200016a13ef",
  "LogoImageURL": "https://<server-url>/5daf22d0a531350001afc7c9/image/5ecf5f979a273200016a13ef",
  "Location": "Stockholm, Sweden",
  "Type": {
    "ID": "5d17cc114dacb40001b29094",
    "Type": "Retail",
    "ImageID": "5d17cc7f4dacb40001b29095",
    "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5d17cc114dacb40001b29094/image"
  },
  "Description": "",
  "Enabled": true,
  "PolicyURL": "",
  "EulaURL": "",
  "Templates": [
    {
      "ID": "5f187f9efd59960001434c2e",
      "Consent": "Age",
      "PurposeIDs": [
        "5db0303ba531350001afc7e0",
        "5db03048a531350001afc7e1"
      ]
    }
  ],
  "Purposes": [
    {
      "ID": "5db0303ba531350001afc7e0",
      "Name": "Marketing and campaign",
      "Description": "For this purpose, following personal data attributes shown below are used. You may consent to share your data at attribute level.",
      "LawfulUsage": false,
      "PolicyURL": "https://orgname.com/policy_default.html"
    }
  ],
  "Admins": [
    {
      "UserID": "5daf22cea531350001afc7c8",
      "RoleID": 1
    }
  ],
  "BillingInfo": {
    "BillingRegistrationID": "cus_G2URbi8W6DT7hh",
    "MaxUserCounter": 4,
    "DefaultChargeNotified": false,
    "CurrentPeriodEnd": 0,
    "PrevMonthUsers": 1,
    "PayPerUserInfo": {
      "UserCommitment": 0,
      "TimeCommitment": "",
      "CancelOnCommitmentEnd": false,
      "CommitmentPeriodRemaining": 0
    },
    "DefaultPaymentSource": {
      "Brand": "Visa",
      "ExpiryMonth": 4,
      "ExpiryYear": 2024,
      "Last4Digits": "4242"
    },
    "Address": {
      "Name": "George Floyd",
      "City": "Stockholm",
      "Country": "Sweden",
      "Line1": "",
      "Line2": "",
      "PostalCode": "",
      "State": ""
    },
    "ServiceAgreementVersion": "v2.0",
    "FreeTrialExpired": true
  },
  "Subs": {
    "Method": 0,
    "Key": ""
  },
  "HlcSupport": false,
  "PrivacyDashboard": {
    "HostName": "dmart.igrant.io",
    "Version": "v1.1.7",
    "Status": 2,
    "Delete": false
  },
  "DataRetention": {
    "RetentionPeriod": 800,
    "Enabled": true
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|none|
|Name|string|false|none|none|
|CoverImageID|string|false|none|none|
|CoverImageURL|string|false|none|none|
|LogoImageID|string|false|none|none|
|LogoImageURL|string|false|none|none|
|Location|string|false|none|none|
|Type|[OrganisationType](#schemaorganisationtype)|false|none|none|
|Description|string|false|none|none|
|Enabled|boolean|false|none|none|
|PolicyURL|string|false|none|none|
|EulaURL|string|false|none|none|
|Templates|[allOf]|false|none|none|

allOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[Template](#schematemplate)|false|none|none|

and

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|object|false|none|none|
|»» PurposeIDs|[string]|false|none|none|

continued

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Purposes|[[Purpose](#schemapurpose)]|false|none|none|
|Admins|[object]|false|none|none|
|» UserID|string|false|none|none|
|» RoleID|string|false|none|none|
|BillingInfo|[OrganisationBillingInfo](#schemaorganisationbillinginfo)|false|none|none|
|Subs|object|false|none|none|
|» Method|integer|false|none|none|
|» Key|string|false|none|none|
|HlcSupport|boolean|false|none|none|
|PrivacyDashboard|[OrganisationPrivacyBoard](#schemaorganisationprivacyboard)|false|none|none|
|DataRetention|[OrganisationDataRetention](#schemaorganisationdataretention)|false|none|none|

