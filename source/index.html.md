---
title: REST API documentation
language_tabs:
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - javascript--nodejs: Node.JS
  - ruby: Ruby
  - python: Python
  - java: Java
  - go: Go
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

# API Reference

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

> The base URL is 'https://api.igrant.io/v1'.

> This is version **1.5.2**

This specification is documented in **OpenAPI format**, it describes the REST APIs of iGrant.io. 

# Authentication

iGrant.io offers one form of authentication:
- Bearer authentication
  
This form of authentication is a form of authentication scheme that involves security tokens. The client sends this token in the ***Authorization header*** when making requests. 

You can manage your API keys in the iGrant.io Dashboard. 

<h1 id="rest-api-documentation-organizations">Organizations</h1>

Below you can find a collection of endpoints that respond to GET, POST, PUT, PATCH and DELETE requests for your organisation.

## get organizations

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://api.igrant.io/v1/organizations HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

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
  'Authorization' => 'API_KEY'
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
  'Authorization': 'API_KEY'
}

r = requests.get('https://api.igrant.io/v1/organizations', params={

}, headers = headers)

print r.json()

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
        "Authorization": []string{"API_KEY"},
        
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

*Get all organizations*

Gets existing organizations whose consent data is managed.

> Example responses

> 200 Response

```json
{
  "Organizations": [
    {
      "ID": "OrgID",
      "Name": "TestOrg",
      "CoverImageID": "ID",
      "CoverImageurl": "url",
      "LogoImageID": "ID",
      "LogoImageURL": "url",
      "Location": "Turku",
      "Type": {
        "ID": "ID",
        "Type": "Retail",
        "ImageID": "imageID",
        "ImageURL": "url"
      },
      "Description": "Testorg stores and processes the following data of yours. For each of your personal data attributes, you can view what is used as contractual basis in order for us to carry out a business relation with you. You can view the current status for all your personal data attributes, the purpose in which they are used and provide you the choice to opt-in or opt-out. \\n\\nYes, We are GDPR compliant.",
      "Enabled": true,
      "Policyurl": "URL",
      "Templates": [
        {
          "ID": "TemplateID",
          "Consent": "Spouse",
          "PurposeIDs": [
            "IDs.."
          ]
        }
      ],
      "Purposes": [
        {
          "ID": "PurposeID",
          "Description": "Contractual purpose",
          "LawfulUsage": false,
          "PolicyURL": "URL"
        }
      ],
      "Admins": [
        {
          "UserID": "UserID",
          "RoleID": 1
        }
      ]
    }
  ]
}
```

<h3 id="get__organizations-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of available organizations.|[Organizations](#schemaorganizations)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## add an organization

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://api.igrant.io/v1/organizations HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "Name": "string",
  "Location": "string",
  "Description": "string",
  "TypeID": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

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
  'Authorization' => 'API_KEY'
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
  'Authorization': 'API_KEY'
}

r = requests.post('https://api.igrant.io/v1/organizations', params={

}, headers = headers)

print r.json()

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
        "Authorization": []string{"API_KEY"},
        
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

Adds a new organization

> Body parameter

```json
{
  "Name": "string",
  "Location": "string",
  "Description": "string",
  "TypeID": "string"
}
```

<h3 id="post__organizations-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateOrganization](#schemacreateorganization)|true|none|

> Example responses

> 201 Response

```json
{
  "Organization": {
    "ID": "string",
    "Name": "string",
    "CoverImageID": "string",
    "CoverImageurl": "string",
    "LogoImageID": "string",
    "LogoImageURL": "string",
    "Location": "string",
    "Type": {
      "ID": "5bba67ba98135900010927a5",
      "Type": "Retail",
      "ImageID": "5bba67e798135900010927a7",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "Template": [
      {
        "ID": "5bba6a9998135900010927ba",
        "Consent": "Spouse",
        "PurposeIDs": [
          "5bba69db98135900010927ac, 8bba69db98135900010927af"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "string",
        "Description": "string",
        "LawfulUsage": true,
        "PolicyURL": "string"
      }
    ],
    "Admins": [
      {
        "userID": "string",
        "roleID": 0
      }
    ]
  }
}
```

<h3 id="post__organizations-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|New Organization added successfully.|[OrganizationObject](#schemaorganizationobject)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## get existing organizations roles

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/roles \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://api.igrant.io/v1/organizations/roles HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/roles',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

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
  'Accept' => 'application/json',
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/roles',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.get('https://api.igrant.io/v1/organizations/roles', params={

}, headers = headers)

print r.json()

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
        "Authorization": []string{"API_KEY"},
        
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

Gets existing roles in an orgnisation

> Example responses

> 200 Response

```json
{
  "ID": 1,
  "Role": "Admin"
}
```

<h3 id="get__organizations_roles-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of available roles.|[Roles](#schemaroles)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## view organization

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationId} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationId}`

*View organization*

Get organization details.

<h3 id="get__organizations_{organizationid}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|

> Example responses

> 200 Response

```json
{
  "Organization": {
    "ID": "string",
    "Name": "string",
    "CoverImageID": "string",
    "CoverImageurl": "string",
    "LogoImageID": "string",
    "LogoImageURL": "string",
    "Location": "string",
    "Type": {
      "ID": "5bba67ba98135900010927a5",
      "Type": "Retail",
      "ImageID": "5bba67e798135900010927a7",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "Template": [
      {
        "ID": "5bba6a9998135900010927ba",
        "Consent": "Spouse",
        "PurposeIDs": [
          "5bba69db98135900010927ac, 8bba69db98135900010927af"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "string",
        "Description": "string",
        "LawfulUsage": true,
        "PolicyURL": "string"
      }
    ],
    "Admins": [
      {
        "userID": "string",
        "roleID": 0
      }
    ]
  }
}
```

<h3 id="get__organizations_{organizationid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|[OrganizationObject](#schemaorganizationobject)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Organization id not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## delete organizations

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId} \
  -H 'Authorization: API_KEY'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationId} HTTP/1.1
Host: api.igrant.io

```

```javascript
var headers = {
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationId}`

*Delete an organization*

Deletes a given organization by ID.

<h3 id="delete__organizations_{organizationid}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|

<h3 id="delete__organizations_{organizationid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Organization ID not found.|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## update organizations

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/{organizationId} \
  -H 'Content-Type: application/json' \
  -H 'Authorization: API_KEY'

```

```http
PATCH https://api.igrant.io/v1/organizations/{organizationId} HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "Location": "string",
  "Description": "string",
  "Policyurl": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.patch 'https://api.igrant.io/v1/organizations/{organizationId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.patch('https://api.igrant.io/v1/organizations/{organizationId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://api.igrant.io/v1/organizations/{organizationId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /organizations/{organizationId}`

*Update organization*

Update organization information

> Body parameter

```json
{
  "Location": "string",
  "Description": "string",
  "Policyurl": "string"
}
```

<h3 id="patch__organizations_{organizationid}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|body|body|[body](#schemabody)|false|none|

<h3 id="patch__organizations_{organizationid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|Updated organization data successfully.|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## update logo image

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/logoimage \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationId}/logoimage HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/logoimage',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "orgimage": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/logoimage',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationId}/logoimage',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationId}/logoimage', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/logoimage");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationId}/logoimage", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationId}/logoimage`

*Update logo image*

Updates the logo image for an organization

> Body parameter

```json
{
  "orgimage": "string"
}
```

<h3 id="post__organizations_{organizationid}_logoimage-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organizaton|
|body|body|[body_1](#schemabody_1)|true|none|

> Example responses

> 200 Response

```json
{
  "Organization": {
    "ID": "string",
    "Name": "string",
    "CoverImageID": "string",
    "CoverImageurl": "string",
    "LogoImageID": "string",
    "LogoImageURL": "string",
    "Location": "string",
    "Type": {
      "ID": "5bba67ba98135900010927a5",
      "Type": "Retail",
      "ImageID": "5bba67e798135900010927a7",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "Template": [
      {
        "ID": "5bba6a9998135900010927ba",
        "Consent": "Spouse",
        "PurposeIDs": [
          "5bba69db98135900010927ac, 8bba69db98135900010927af"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "string",
        "Description": "string",
        "LawfulUsage": true,
        "PolicyURL": "string"
      }
    ],
    "Admins": [
      {
        "userID": "string",
        "roleID": 0
      }
    ]
  }
}
```

<h3 id="post__organizations_{organizationid}_logoimage-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Updated logo image|[OrganizationObject](#schemaorganizationobject)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## update cover image 

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/coverimage \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationId}/coverimage HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/coverimage',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "orgimage": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/coverimage',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationId}/coverimage',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationId}/coverimage', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/coverimage");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationId}/coverimage", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationId}/coverimage`

*Update cover image*

Updates the cover image for an organization

> Body parameter

```json
{
  "orgimage": "string"
}
```

<h3 id="post__organizations_{organizationid}_coverimage-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organizaton|
|body|body|[body_2](#schemabody_2)|true|none|

> Example responses

> 200 Response

```json
{
  "Organization": {
    "ID": "string",
    "Name": "string",
    "CoverImageID": "string",
    "CoverImageurl": "string",
    "LogoImageID": "string",
    "LogoImageURL": "string",
    "Location": "string",
    "Type": {
      "ID": "5bba67ba98135900010927a5",
      "Type": "Retail",
      "ImageID": "5bba67e798135900010927a7",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "Template": [
      {
        "ID": "5bba6a9998135900010927ba",
        "Consent": "Spouse",
        "PurposeIDs": [
          "5bba69db98135900010927ac, 8bba69db98135900010927af"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "string",
        "Description": "string",
        "LawfulUsage": true,
        "PolicyURL": "string"
      }
    ],
    "Admins": [
      {
        "userID": "string",
        "roleID": 0
      }
    ]
  }
}
```

<h3 id="post__organizations_{organizationid}_coverimage-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Updated cover image|[OrganizationObject](#schemaorganizationobject)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## Add admins to an organization

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/admins \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationId}/admins HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/admins',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "userID": "string",
  "roleID": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/admins',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationId}/admins',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationId}/admins', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/admins");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationId}/admins", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationId}/admins`

*Add admins to an organization*

Add admins to an organization

> Body parameter

```json
{
  "userID": "string",
  "roleID": 0
}
```

<h3 id="post__organizations_{organizationid}_admins-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|Id of the organization to which add a user|
|body|body|[userDataAdmin](#schemauserdataadmin)|true|none|

> Example responses

> 200 Response

```json
{
  "Organization": {
    "ID": "string",
    "Name": "string",
    "CoverImageID": "string",
    "CoverImageurl": "string",
    "LogoImageID": "string",
    "LogoImageURL": "string",
    "Location": "string",
    "Type": {
      "ID": "5bba67ba98135900010927a5",
      "Type": "Retail",
      "ImageID": "5bba67e798135900010927a7",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "Template": [
      {
        "ID": "5bba6a9998135900010927ba",
        "Consent": "Spouse",
        "PurposeIDs": [
          "5bba69db98135900010927ac, 8bba69db98135900010927af"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "string",
        "Description": "string",
        "LawfulUsage": true,
        "PolicyURL": "string"
      }
    ],
    "Admins": [
      {
        "userID": "string",
        "roleID": 0
      }
    ]
  }
}
```

<h3 id="post__organizations_{organizationid}_admins-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success; returns organization details|[OrganizationObject](#schemaorganizationobject)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Failed to add admin user to organization|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## Remove admins from an organization

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId}/admins \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationId}/admins HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/admins',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/admins',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationId}/admins',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationId}/admins', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/admins");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationId}/admins", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationId}/admins`

*Delete admins*

Delete admins from an organization

<h3 id="delete__organizations_{organizationid}_admins-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|Id of the organization for which a user shall be deleted|

> Example responses

> 200 Response

```json
{
  "Organization": {
    "ID": "string",
    "Name": "string",
    "CoverImageID": "string",
    "CoverImageurl": "string",
    "LogoImageID": "string",
    "LogoImageURL": "string",
    "Location": "string",
    "Type": {
      "ID": "5bba67ba98135900010927a5",
      "Type": "Retail",
      "ImageID": "5bba67e798135900010927a7",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "Template": [
      {
        "ID": "5bba6a9998135900010927ba",
        "Consent": "Spouse",
        "PurposeIDs": [
          "5bba69db98135900010927ac, 8bba69db98135900010927af"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "string",
        "Description": "string",
        "LawfulUsage": true,
        "PolicyURL": "string"
      }
    ],
    "Admins": [
      {
        "userID": "string",
        "roleID": 0
      }
    ]
  }
}
```

<h3 id="delete__organizations_{organizationid}_admins-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success; Organization details with deleted admin|[OrganizationObject](#schemaorganizationobject)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Failed to delete admin user to organization|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## get all users

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId}/users \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationId}/users HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationId}/users',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationId}/users', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationId}/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationId}/users`

*Get all users*

Gets all users associated with an organization

<h3 id="get__organizations_{organizationid}_users-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|

> Example responses

> 200 Response

```json
{
  "User": {
    "ID": "5b9025defef8d50001ebb6f2",
    "Name": "Test production",
    "IamID": "7c7591e507",
    "Email": "p@p.io",
    "Phone": "+358 549 45043",
    "ImageID": "423049",
    "ImageURL": "imageurl.fi",
    "LastVisit": "2018-09-05 18:55:21",
    "Client": {
      "Token": 34234234,
      "Type": 0
    },
    "Orgs": [
      {
        "OrgID": "5b4ab3f926eddc0001ad3885",
        "Name": "iGrant.io",
        "Location": "Stockholm, Sweden",
        "Type": "RegTech",
        "TypeID\"": "b4ab3bf26eddc0001ad3883"
      }
    ]
  }
}
```

<h3 id="get__organizations_{organizationid}_users-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|[User](#schemauser)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Organization id not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## subsribe user

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/users \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationId}/users HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "userId": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationId}/users',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationId}/users', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationId}/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationId}/users`

*Subscribe user*

Subscribe a user to an organization

> Body parameter

```json
{
  "userId": "string"
}
```

<h3 id="post__organizations_{organizationid}_users-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization to which a user shall be added|
|body|body|[body_3](#schemabody_3)|true|none|

> Example responses

> 200 Response

```json
{
  "User": {
    "ID": "5b9025defef8d50001ebb6f2",
    "Name": "Test production",
    "IamID": "7c7591e507",
    "Email": "p@p.io",
    "Phone": "+358 549 45043",
    "ImageID": "423049",
    "ImageURL": "imageurl.fi",
    "LastVisit": "2018-09-05 18:55:21",
    "Client": {
      "Token": 34234234,
      "Type": 0
    },
    "Orgs": [
      {
        "OrgID": "5b4ab3f926eddc0001ad3885",
        "Name": "iGrant.io",
        "Location": "Stockholm, Sweden",
        "Type": "RegTech",
        "TypeID\"": "b4ab3bf26eddc0001ad3883"
      }
    ]
  }
}
```

<h3 id="post__organizations_{organizationid}_users-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success, returns the user details|[User](#schemauser)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Failure, cannot subscribe to disabled organization|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## Gets user details

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId}/users/{userId} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationId}/users/{userId} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationId}/users/{userId}`

*Get user details*

Gets user details

<h3 id="get__organizations_{organizationid}_users_{userid}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|userId|path|string|true|ID of the user|

> Example responses

> 200 Response

```json
{
  "User": {
    "ID": "5b9025defef8d50001ebb6f2",
    "Name": "Test production",
    "IamID": "7c7591e507",
    "Email": "p@p.io",
    "Phone": "+358 549 45043",
    "ImageID": "423049",
    "ImageURL": "imageurl.fi",
    "LastVisit": "2018-09-05 18:55:21",
    "Client": {
      "Token": 34234234,
      "Type": 0
    },
    "Orgs": [
      {
        "OrgID": "5b4ab3f926eddc0001ad3885",
        "Name": "iGrant.io",
        "Location": "Stockholm, Sweden",
        "Type": "RegTech",
        "TypeID\"": "b4ab3bf26eddc0001ad3883"
      }
    ]
  }
}
```

<h3 id="get__organizations_{organizationid}_users_{userid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|[User](#schemauser)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Organization id or User id not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## delete user from an organisation

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId}/users/{userId} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationId}/users/{userId} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationId}/users/{userId}`

*Delete user*

Removes a given user from the organization.

<h3 id="delete__organizations_{organizationid}_users_{userid}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|userId|path|string|true|ID of the user|

> Example responses

> 200 Response

```json
{
  "User": {
    "ID": "5b9025defef8d50001ebb6f2",
    "Name": "Test production",
    "IamID": "7c7591e507",
    "Email": "p@p.io",
    "Phone": "+358 549 45043",
    "ImageID": "423049",
    "ImageURL": "imageurl.fi",
    "LastVisit": "2018-09-05 18:55:21",
    "Client": {
      "Token": 34234234,
      "Type": 0
    },
    "Orgs": [
      {
        "OrgID": "5b4ab3f926eddc0001ad3885",
        "Name": "iGrant.io",
        "Location": "Stockholm, Sweden",
        "Type": "RegTech",
        "TypeID\"": "b4ab3bf26eddc0001ad3883"
      }
    ]
  }
}
```

<h3 id="delete__organizations_{organizationid}_users_{userid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Removed user successfully from organization.|[User](#schemauser)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Organization id or User id not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## get user consent data 

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationId}/users/{userId}/consents`

*Get user consent data*

Gets existing user data sets stored with an organization

<h3 id="get__organizations_{organizationid}_users_{userid}_consents-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|userId|path|string|true|ID of the user|

> Example responses

> 200 Response

```json
{
  "ID": "5bba6a9998135900010927bb",
  "OrgID": "5bba686e98135900010927a8",
  "UserID": "5bc786ea90e2a00001de6de1",
  "ConsentsAndPurposes": [
    {
      "Purpose": {
        "ID": "5bba69db98135900010927ac",
        "Description": "Contractual Purpose",
        "LawfulUsage": "False",
        "PolicyUrl": "https://www.ica.se/policies/behandling-av-personuppgifter/"
      },
      "Count": {
        "Total": "2",
        "Consented": "2"
      },
      "Consents": [
        {
          "ID": "5bba6a9998135900010927bb",
          "Description": "No. of kids",
          "Value": "",
          "Status": {
            "Consented": "Allow",
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

<h3 id="get__organizations_{organizationid}_users_{userid}_consents-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|[Consent](#schemaconsent)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Organization id or User id not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## Update the user consents

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents \
  -H 'Content-Type: application/json' \
  -H 'Authorization: API_KEY'

```

```http
PATCH https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "ID": "5bba6a9998135900010927bb",
  "OrgID": "5bba686e98135900010927a8",
  "UserID": "5bc786ea90e2a00001de6de1",
  "ConsentsAndPurposes": [
    {
      "Purpose": {
        "ID": "5bba69db98135900010927ac",
        "Description": "Contractual Purpose",
        "LawfulUsage": "False",
        "PolicyUrl": "https://www.ica.se/policies/behandling-av-personuppgifter/"
      },
      "Count": {
        "Total": "2",
        "Consented": "2"
      },
      "Consents": [
        {
          "ID": "5bba6a9998135900010927bb",
          "Description": "No. of kids",
          "Value": "",
          "Status": {
            "Consented": "Allow",
            "TimeStamp": "0001-01-01T00:00:00Z",
            "Days": 0,
            "Remaining": 0
          }
        }
      ]
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.patch 'https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.patch('https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /organizations/{organizationId}/users/{userId}/consents`

*Update user consents*

Update the user consents.

> Body parameter

```json
{
  "ID": "5bba6a9998135900010927bb",
  "OrgID": "5bba686e98135900010927a8",
  "UserID": "5bc786ea90e2a00001de6de1",
  "ConsentsAndPurposes": [
    {
      "Purpose": {
        "ID": "5bba69db98135900010927ac",
        "Description": "Contractual Purpose",
        "LawfulUsage": "False",
        "PolicyUrl": "https://www.ica.se/policies/behandling-av-personuppgifter/"
      },
      "Count": {
        "Total": "2",
        "Consented": "2"
      },
      "Consents": [
        {
          "ID": "5bba6a9998135900010927bb",
          "Description": "No. of kids",
          "Value": "",
          "Status": {
            "Consented": "Allow",
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

<h3 id="patch__organizations_{organizationid}_users_{userid}_consents-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|userId|path|string|true|ID of the user|
|body|body|[Consent](#schemaconsent)|true|User consents|

<h3 id="patch__organizations_{organizationid}_users_{userid}_consents-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Successfully modified the user consents|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Organization id or User id not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## get consent by id 

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId}");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationId}/users/{userId}/consents/{consentId}`

*Get a consent*

Gets a given consent by id.

<h3 id="get__organizations_{organizationid}_users_{userid}_consents_{consentid}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|userId|path|string|true|ID of the user|
|consentId|path|string|true|ID of the consent|

> Example responses

> 200 Response

```json
{
  "ID": "5bba6a9998135900010927bb",
  "OrgID": "5bba686e98135900010927a8",
  "UserID": "5bc786ea90e2a00001de6de1",
  "ConsentsAndPurposes": [
    {
      "Purpose": {
        "ID": "5bba69db98135900010927ac",
        "Description": "Contractual Purpose",
        "LawfulUsage": "False",
        "PolicyUrl": "https://www.ica.se/policies/behandling-av-personuppgifter/"
      },
      "Count": {
        "Total": "2",
        "Consented": "2"
      },
      "Consents": [
        {
          "ID": "5bba6a9998135900010927bb",
          "Description": "No. of kids",
          "Value": "",
          "Status": {
            "Consented": "Allow",
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

<h3 id="get__organizations_{organizationid}_users_{userid}_consents_{consentid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Consent information of given Id.|[Consent](#schemaconsent)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Organization id or User id not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## delete consent by id

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId} \
  -H 'Authorization: API_KEY'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId} HTTP/1.1
Host: api.igrant.io

```

```javascript
var headers = {
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId}");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationId}/users/{userId}/consents/{consentId}`

*Delete a consent*

Delete a given consent by ID

<h3 id="delete__organizations_{organizationid}_users_{userid}_consents_{consentid}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|userId|path|string|true|ID of the user|
|consentId|path|string|true|ID of the consent|

<h3 id="delete__organizations_{organizationid}_users_{userid}_consents_{consentid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## get purpose details

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}`

*Get purpose details*

Retrieves purpose details

<h3 id="get__organizations_{organizationid}_users_{userid}_consents_{consentid}_purposes_{purposeid}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|UserId|path|string|true|ID of the user|
|ConsentId|path|string|true|ID of the consent|
|PurposeId|path|string|true|ID of the purpose|

> Example responses

> 200 Response

```json
{
  "ID": "string",
  "ConsentID": "string",
  "OrgID": "string",
  "UserID": "string",
  "Consents": {
    "Purpose": {
      "ID": "string",
      "Description": "string",
      "LawfulUsage": true,
      "PolicyURL": "string"
    },
    "Count": {
      "Total": 2,
      "Consented": 2
    },
    "Consents": [
      {
        "ID": "string",
        "Description": "string",
        "Value": "string",
        "Status": {
          "Consented": "string",
          "TimeStamp": "string",
          "Days": 0,
          "Remaining": 0
        }
      }
    ]
  }
}
```

<h3 id="get__organizations_{organizationid}_users_{userid}_consents_{consentid}_purposes_{purposeid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|[PurposeDetail](#schemapurposedetail)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## get purpose status

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.get('https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status`

*Get purpose details*

Retrieves purpose details

<h3 id="get__organizations_{organizationid}_users_{userid}_consents_{consentid}_purposes_{purposeid}_status-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|UserId|path|string|true|ID of the user|
|ConsentId|path|string|true|ID of the consent|
|PurposeId|path|string|true|ID of the purpose|

> Example responses

> 200 Response

```json
{
  "Consented": "string"
}
```

<h3 id="get__organizations_{organizationid}_users_{userid}_consents_{consentid}_purposes_{purposeid}_status-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|[StatusConsented](#schemastatusconsented)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Request failed|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## set purpose status

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "Consented": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status`

*Set overall status for a purpose*

Sets overall status for a given purpose, alternatives are "Allow" and "DisAllow"

> Body parameter

```json
{
  "Consented": "string"
}
```

<h3 id="post__organizations_{organizationid}_users_{userid}_consents_{consentid}_purposes_{purposeid}_status-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|UserId|path|string|true|ID of the user|
|ConsentId|path|string|true|ID of the consent|
|PurposeId|path|string|true|ID of the purpose|
|body|body|[body_4](#schemabody_4)|true|none|

> Example responses

> 200 Response

```json
{
  "ID": "string",
  "ConsentID": "string",
  "OrgID": "string",
  "UserID": "string",
  "Consents": {
    "Purpose": {
      "ID": "string",
      "Description": "string",
      "LawfulUsage": true,
      "PolicyURL": "string"
    },
    "Count": {
      "Total": 2,
      "Consented": 2
    },
    "Consents": [
      {
        "ID": "string",
        "Description": "string",
        "Value": "string",
        "Status": {
          "Consented": "string",
          "TimeStamp": "string",
          "Days": 0,
          "Remaining": 0
        }
      }
    ]
  }
}
```

<h3 id="post__organizations_{organizationid}_users_{userid}_consents_{consentid}_purposes_{purposeid}_status-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|[PurposeDetail](#schemapurposedetail)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Failed response|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## update consent status

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/attributes/{attrId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
PATCH https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/attributes/{attrId} HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/attributes/{attrId}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "Consented": "string",
  "Days": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/attributes/{attrId}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.patch 'https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/attributes/{attrId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.patch('https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/attributes/{attrId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/attributes/{attrId}");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/attributes/{attrId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/attributes/{attrId}`

*Update consent status*

Updates "Consented" status in a given purpose (Allow/DisAllow) OR "Days", i.e. "{ "days": 40} 

> Body parameter

```json
{
  "Consented": "string",
  "Days": 0
}
```

<h3 id="patch__organizations_{organizationid}_users_{userid}_consents_{consentid}_purposes_{purposeid}_attributes_{attrid}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|UserId|path|string|true|ID of the user|
|ConsentId|path|string|true|ID of the consent|
|PurposeId|path|string|true|ID of the purpose|
|attrId|path|string|true|ID of attribute (consentId)|
|body|body|[ConsentedDays](#schemaconsenteddays)|true|none|

> Example responses

> 200 Response

```json
"{\"Msg\":\"Consent updated successfully\",\"Status\":200}"
```

<h3 id="patch__organizations_{organizationid}_users_{userid}_consents_{consentid}_purposes_{purposeid}_attributes_{attrid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|[inline_response_200](#schemainline_response_200)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Failed response|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## delete purposes

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId}/purposes/{purposeID} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationId}/purposes/{purposeID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/purposes/{purposeID}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/purposes/{purposeID}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationId}/purposes/{purposeID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationId}/purposes/{purposeID}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/purposes/{purposeID}");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationId}/purposes/{purposeID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationId}/purposes/{purposeID}`

*Delete a purpose*

Deletes a purpose from an organization based on IDs

<h3 id="delete__organizations_{organizationid}_purposes_{purposeid}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization from which a purpose shall be deleted|
|purposeID|path|string|true|ID of the purpose that shall be deleted|

> Example responses

> 201 Response

```json
{
  "Organization": {
    "ID": "string",
    "Name": "string",
    "CoverImageID": "string",
    "CoverImageurl": "string",
    "LogoImageID": "string",
    "LogoImageURL": "string",
    "Location": "string",
    "Type": {
      "ID": "5bba67ba98135900010927a5",
      "Type": "Retail",
      "ImageID": "5bba67e798135900010927a7",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "Template": [
      {
        "ID": "5bba6a9998135900010927ba",
        "Consent": "Spouse",
        "PurposeIDs": [
          "5bba69db98135900010927ac, 8bba69db98135900010927af"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "string",
        "Description": "string",
        "LawfulUsage": true,
        "PolicyURL": "string"
      }
    ],
    "Admins": [
      {
        "userID": "string",
        "roleID": 0
      }
    ]
  }
}
```

<h3 id="delete__organizations_{organizationid}_purposes_{purposeid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success, returns the organization details|[OrganizationObject](#schemaorganizationobject)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## set consent for atributes

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/purposes/{PurposeId}/attributes/consent \
  -H 'Content-Type: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationId}/purposes/{PurposeId}/attributes/consent HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/purposes/{PurposeId}/attributes/consent',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "attributeIDs": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/purposes/{PurposeId}/attributes/consent',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationId}/purposes/{PurposeId}/attributes/consent',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationId}/purposes/{PurposeId}/attributes/consent', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/purposes/{PurposeId}/attributes/consent");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationId}/purposes/{PurposeId}/attributes/consent", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationId}/purposes/{PurposeId}/attributes/consent`

*Set attributes in a purpose*

Notification request for attributes in a purpose

> Body parameter

```json
{
  "attributeIDs": [
    "string"
  ]
}
```

<h3 id="post__organizations_{organizationid}_purposes_{purposeid}_attributes_consent-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|PurposeId|path|string|true|ID of the user|
|body|body|[body_5](#schemabody_5)|true|none|

<h3 id="post__organizations_{organizationid}_purposes_{purposeid}_attributes_consent-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|Accepted, successful response|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## delete template

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId}/templates/{templateID} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationId}/templates/{templateID} HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/templates/{templateID}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/templates/{templateID}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationId}/templates/{templateID}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationId}/templates/{templateID}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/templates/{templateID}");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationId}/templates/{templateID}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationId}/templates/{templateID}`

*Delete a template*

Deletes a template from an organization based on IDs

<h3 id="delete__organizations_{organizationid}_templates_{templateid}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization from which a template shall be deleted|
|templateID|path|string|true|ID of the template that shall be deleted|

> Example responses

> 201 Response

```json
{
  "Organization": {
    "ID": "string",
    "Name": "string",
    "CoverImageID": "string",
    "CoverImageurl": "string",
    "LogoImageID": "string",
    "LogoImageURL": "string",
    "Location": "string",
    "Type": {
      "ID": "5bba67ba98135900010927a5",
      "Type": "Retail",
      "ImageID": "5bba67e798135900010927a7",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "Template": [
      {
        "ID": "5bba6a9998135900010927ba",
        "Consent": "Spouse",
        "PurposeIDs": [
          "5bba69db98135900010927ac, 8bba69db98135900010927af"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "string",
        "Description": "string",
        "LawfulUsage": true,
        "PolicyURL": "string"
      }
    ],
    "Admins": [
      {
        "userID": "string",
        "roleID": 0
      }
    ]
  }
}
```

<h3 id="delete__organizations_{organizationid}_templates_{templateid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success, returns the organization details|[OrganizationObject](#schemaorganizationobject)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## get user consents

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/user/organizations/{organizationId}/consents \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://api.igrant.io/v1/user/organizations/{organizationId}/consents HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/user/organizations/{organizationId}/consents',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/user/organizations/{organizationId}/consents',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://api.igrant.io/v1/user/organizations/{organizationId}/consents',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.get('https://api.igrant.io/v1/user/organizations/{organizationId}/consents', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/user/organizations/{organizationId}/consents");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/user/organizations/{organizationId}/consents", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /user/organizations/{organizationId}/consents`

*Get consents for users*

Get the consents for users for a given organization

<h3 id="get__user_organizations_{organizationid}_consents-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|

> Example responses

> 200 Response

```json
{
  "ID": "5bba6a9998135900010927bb",
  "OrgID": "5bba686e98135900010927a8",
  "UserID": "5bc786ea90e2a00001de6de1",
  "ConsentsAndPurposes": [
    {
      "Purpose": {
        "ID": "5bba69db98135900010927ac",
        "Description": "Contractual Purpose",
        "LawfulUsage": "False",
        "PolicyUrl": "https://www.ica.se/policies/behandling-av-personuppgifter/"
      },
      "Count": {
        "Total": "2",
        "Consented": "2"
      },
      "Consents": [
        {
          "ID": "5bba6a9998135900010927bb",
          "Description": "No. of kids",
          "Value": "",
          "Status": {
            "Consented": "Allow",
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

<h3 id="get__user_organizations_{organizationid}_consents-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|[Consent](#schemaconsent)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Failed to fetch organization ID, organization ID not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

# Schemas

<h2 id="tocSconsent">Consent</h2>

<a id="schemaconsent"></a>

```json
{
  "ID": "5bba6a9998135900010927bb",
  "OrgID": "5bba686e98135900010927a8",
  "UserID": "5bc786ea90e2a00001de6de1",
  "ConsentsAndPurposes": [
    {
      "Purpose": {
        "ID": "5bba69db98135900010927ac",
        "Description": "Contractual Purpose",
        "LawfulUsage": "False",
        "PolicyUrl": "https://www.ica.se/policies/behandling-av-personuppgifter/"
      },
      "Count": {
        "Total": "2",
        "Consented": "2"
      },
      "Consents": [
        {
          "ID": "5bba6a9998135900010927bb",
          "Description": "No. of kids",
          "Value": "",
          "Status": {
            "Consented": "Allow",
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|ID of the consent|
|OrgID|string|false|none|Organization ID|
|UserID|string|false|none|ID of the user|
|ConsentsAndPurposes|[[Consent_ConsentsAndPurposes](#schemaconsent_consentsandpurposes)]|false|none|none|

<h2 id="tocSstatusconsented">StatusConsented</h2>

<a id="schemastatusconsented"></a>

```json
{
  "Consented": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Consented|string|false|none|Status of the consent for a given purpose|

<h2 id="tocSconsenteddays">ConsentedDays</h2>

<a id="schemaconsenteddays"></a>

```json
{
  "Consented": "string",
  "Days": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Consented|string|false|none|Status of the consent for a given purpose|
|Days|integer(int32)|false|none|Amount of days consented|

<h2 id="tocSpurposedetail">PurposeDetail</h2>

<a id="schemapurposedetail"></a>

```json
{
  "ID": "string",
  "ConsentID": "string",
  "OrgID": "string",
  "UserID": "string",
  "Consents": {
    "Purpose": {
      "ID": "string",
      "Description": "string",
      "LawfulUsage": true,
      "PolicyURL": "string"
    },
    "Count": {
      "Total": 2,
      "Consented": 2
    },
    "Consents": [
      {
        "ID": "string",
        "Description": "string",
        "Value": "string",
        "Status": {
          "Consented": "string",
          "TimeStamp": "string",
          "Days": 0,
          "Remaining": 0
        }
      }
    ]
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|ID of purpose|
|ConsentID|string|false|none|ID of consent|
|OrgID|string|false|none|Organization ID|
|UserID|string|false|none|ID of user|
|Consents|[PurposeDetail_Consents](#schemapurposedetail_consents)|false|none|none|

<h2 id="tocSconsents">Consents</h2>

<a id="schemaconsents"></a>

```json
{
  "ID": "string",
  "Description": "string",
  "Value": "string",
  "Status": {
    "Consented": "string",
    "TimeStamp": "string",
    "Days": 0,
    "Remaining": 0
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|Consent ID|
|Description|string|false|none|description|
|Value|string|false|none|Consent value|
|Status|[Status](#schemastatus)|false|none|none|

<h2 id="tocSstatus">Status</h2>

<a id="schemastatus"></a>

```json
{
  "Consented": "string",
  "TimeStamp": "string",
  "Days": 0,
  "Remaining": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Consented|string|false|none|Allow/DisAllow|
|TimeStamp|string|false|none|Timestamp|
|Days|integer(int32)|false|none|Amount of days to consent|
|Remaining|integer(int32)|false|none|Amount of days remaining|

<h2 id="tocScount">Count</h2>

<a id="schemacount"></a>

```json
{
  "Total": 2,
  "Consented": 2
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Total|integer(int32)|false|none|Total amount of purposes|
|Consented|integer(int32)|false|none|Total consented|

<h2 id="tocScreateorganization">CreateOrganization</h2>

<a id="schemacreateorganization"></a>

```json
{
  "Name": "string",
  "Location": "string",
  "Description": "string",
  "TypeID": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Name|string|true|none|Name of the organization|
|Location|string|true|none|Location of the organization|
|Description|string|true|none|Description of the organization|
|TypeID|string|true|none|ID of the type of organization|

<h2 id="tocSconsenttemplate">ConsentTemplate</h2>

<a id="schemaconsenttemplate"></a>

```json
{
  "ID": "5bba6a9998135900010927ba",
  "Consent": "Spouse",
  "PurposeIDs": [
    "5bba69db98135900010927ac, 8bba69db98135900010927af"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|ID of the consent|
|Consent|string|false|none|Consent, e.g. Spouse|
|PurposeIDs|[string]|false|none|An array of PurposeIDs|

<h2 id="tocStype">Type</h2>

<a id="schematype"></a>

```json
{
  "ID": "5bba67ba98135900010927a5",
  "Type": "Retail",
  "ImageID": "5bba67e798135900010927a7",
  "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|ID of Type|
|Type|string|false|none|Describes the type of organization (field, ID of field etc.)|
|ImageID|string|false|none|ID of image|
|ImageURL|string|false|none|URL of image (where the Image is located)|

<h2 id="tocSpurpose">Purpose</h2>

<a id="schemapurpose"></a>

```json
{
  "ID": "string",
  "Description": "string",
  "LawfulUsage": true,
  "PolicyURL": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|ID of purpose|
|Description|string|false|none|Description of purpose|
|LawfulUsage|boolean|false|none|Lawful usage (True or False)|
|PolicyURL|string|false|none|URL of policy|

<h2 id="tocSclientdata">ClientData</h2>

<a id="schemaclientdata"></a>

```json
{
  "Token": "string",
  "Type": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Token|string|false|none|Client token|
|Type|integer(int32)|false|none|Type of client|

<h2 id="tocSorgs">Orgs</h2>

<a id="schemaorgs"></a>

```json
{
  "OrgID": "string",
  "Name": "string",
  "Location": "string",
  "Type": "string",
  "TypeID": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|OrgID|string|false|none|This is the ID of the organization|
|Name|string|false|none|Name of organization|
|Location|string|false|none|Location of the organization|
|Type|string|false|none|Field of organization like retail, medical etc|
|TypeID|string|false|none|Type ID|

<h2 id="tocSuser">User</h2>

<a id="schemauser"></a>

```json
{
  "User": {
    "ID": "5b9025defef8d50001ebb6f2",
    "Name": "Test production",
    "IamID": "7c7591e507",
    "Email": "p@p.io",
    "Phone": "+358 549 45043",
    "ImageID": "423049",
    "ImageURL": "imageurl.fi",
    "LastVisit": "2018-09-05 18:55:21",
    "Client": {
      "Token": 34234234,
      "Type": 0
    },
    "Orgs": [
      {
        "OrgID": "5b4ab3f926eddc0001ad3885",
        "Name": "iGrant.io",
        "Location": "Stockholm, Sweden",
        "Type": "RegTech",
        "TypeID\"": "b4ab3bf26eddc0001ad3883"
      }
    ]
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|The ID of the user|
|Name|string|false|none|The name of the user|
|IamID|string|false|none|Identity management ID|
|Email|string|false|none|User email address|
|Phone|string|false|none|User phone number|
|ImageID|string|false|none|User image ID|
|ImageURL|string|false|none|URL of user image|
|LastVisit|string(date)|false|none|Date and time of LastVisit|
|Client|[ClientData](#schemaclientdata)|false|none|none|
|Orgs|[[Orgs](#schemaorgs)]|false|none|none|

<h2 id="tocSorganization">Organization</h2>

<a id="schemaorganization"></a>

```json
{
  "ID": "string",
  "Name": "string",
  "CoverImageID": "string",
  "CoverImageurl": "string",
  "LogoImageID": "string",
  "LogoImageURL": "string",
  "Location": "string",
  "Type": {
    "ID": "5bba67ba98135900010927a5",
    "Type": "Retail",
    "ImageID": "5bba67e798135900010927a7",
    "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
  },
  "Description": "string",
  "Enabled": true,
  "Policyurl": "string",
  "Template": [
    {
      "ID": "5bba6a9998135900010927ba",
      "Consent": "Spouse",
      "PurposeIDs": [
        "5bba69db98135900010927ac, 8bba69db98135900010927af"
      ]
    }
  ],
  "Purposes": [
    {
      "ID": "string",
      "Description": "string",
      "LawfulUsage": true,
      "PolicyURL": "string"
    }
  ],
  "Admins": [
    {
      "userID": "string",
      "roleID": 0
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|ID of the organization|
|Name|string|false|none|Name of the organization|
|CoverImageID|string|false|none|This is the ID of the coverImage|
|CoverImageurl|string|false|none|URL of the coverImage|
|LogoImageID|string|false|none|ID of the logo Image|
|LogoImageURL|string|false|none|URL of the logoImage|
|Location|string|false|none|Location of the organization (Country, City)|
|Type|[Type](#schematype)|false|none|none|
|Description|string|false|none|The description of the organization|
|Enabled|boolean|false|none|Boolean value for indicating if the organization is enabled in the system|
|Policyurl|string|false|none|URL of company policy|
|Template|[[ConsentTemplate](#schemaconsenttemplate)]|false|none|Contains properties of a consent|
|Purposes|[[Purpose](#schemapurpose)]|false|none|contains information about purposes|
|Admins|[[userDataAdmin](#schemauserdataadmin)]|false|none|represents the admins of the organization|

<h2 id="tocSorganizationobject">OrganizationObject</h2>

<a id="schemaorganizationobject"></a>

```json
{
  "Organization": {
    "ID": "string",
    "Name": "string",
    "CoverImageID": "string",
    "CoverImageurl": "string",
    "LogoImageID": "string",
    "LogoImageURL": "string",
    "Location": "string",
    "Type": {
      "ID": "5bba67ba98135900010927a5",
      "Type": "Retail",
      "ImageID": "5bba67e798135900010927a7",
      "ImageURL": "https://staging-api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "Template": [
      {
        "ID": "5bba6a9998135900010927ba",
        "Consent": "Spouse",
        "PurposeIDs": [
          "5bba69db98135900010927ac, 8bba69db98135900010927af"
        ]
      }
    ],
    "Purposes": [
      {
        "ID": "string",
        "Description": "string",
        "LawfulUsage": true,
        "PolicyURL": "string"
      }
    ],
    "Admins": [
      {
        "userID": "string",
        "roleID": 0
      }
    ]
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Organization|[Organization](#schemaorganization)|false|none|none|

<h2 id="tocSroles">Roles</h2>

<a id="schemaroles"></a>

```json
{
  "ID": 1,
  "Role": "Admin"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|integer(int32)|false|none|Unique ID of the roles|
|Role|string|false|none|Name of the role|

<h2 id="tocSuserdataadmin">userDataAdmin</h2>

<a id="schemauserdataadmin"></a>

```json
{
  "userID": "string",
  "roleID": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|userID|string|false|none|ID of user|
|roleID|integer(int32)|false|none|ID of role|

<h2 id="tocSorganizations">Organizations</h2>

<a id="schemaorganizations"></a>

```json
{
  "Organizations": [
    {
      "ID": "OrgID",
      "Name": "TestOrg",
      "CoverImageID": "ID",
      "CoverImageurl": "url",
      "LogoImageID": "ID",
      "LogoImageURL": "url",
      "Location": "Turku",
      "Type": {
        "ID": "ID",
        "Type": "Retail",
        "ImageID": "imageID",
        "ImageURL": "url"
      },
      "Description": "Testorg stores and processes the following data of yours. For each of your personal data attributes, you can view what is used as contractual basis in order for us to carry out a business relation with you. You can view the current status for all your personal data attributes, the purpose in which they are used and provide you the choice to opt-in or opt-out. \\n\\nYes, We are GDPR compliant.",
      "Enabled": true,
      "Policyurl": "URL",
      "Templates": [
        {
          "ID": "TemplateID",
          "Consent": "Spouse",
          "PurposeIDs": [
            "IDs.."
          ]
        }
      ],
      "Purposes": [
        {
          "ID": "PurposeID",
          "Description": "Contractual purpose",
          "LawfulUsage": false,
          "PolicyURL": "URL"
        }
      ],
      "Admins": [
        {
          "UserID": "UserID",
          "RoleID": 1
        }
      ]
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[Organization](#schemaorganization)]|false|none|none|

<h2 id="tocSbody">body</h2>

<a id="schemabody"></a>

```json
{
  "Location": "string",
  "Description": "string",
  "Policyurl": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Location|string|false|none|location of the organization|
|Description|string|false|none|description of the organization|
|Policyurl|string|false|none|Organization's policyURL|

<h2 id="tocSbody_1">body_1</h2>

<a id="schemabody_1"></a>

```json
{
  "orgimage": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|orgimage|string|false|none|link to logo|

<h2 id="tocSbody_2">body_2</h2>

<a id="schemabody_2"></a>

```json
{
  "orgimage": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|orgimage|string|false|none|link to image|

<h2 id="tocSbody_3">body_3</h2>

<a id="schemabody_3"></a>

```json
{
  "userId": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|userId|string|false|none|none|

<h2 id="tocSbody_4">body_4</h2>

<a id="schemabody_4"></a>

```json
{
  "Consented": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Consented|string|true|none|Status of the consent for a given purpose|

<h2 id="tocSinline_response_200">inline_response_200</h2>

<a id="schemainline_response_200"></a>

```json
"{\"Msg\":\"Consent updated successfully\",\"Status\":200}"

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Msg|string|false|none|Response message|
|Status|integer(int32)|false|none|Status Code|

<h2 id="tocSbody_5">body_5</h2>

<a id="schemabody_5"></a>

```json
{
  "attributeIDs": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|attributeIDs|[string]|false|none|none|

<h2 id="tocSconsent_purpose">Consent_Purpose</h2>

<a id="schemaconsent_purpose"></a>

```json
{
  "ID": "string",
  "Description": "string",
  "LawfulUsage": true,
  "PolicyURL": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|none|
|Description|string|false|none|none|
|LawfulUsage|boolean|false|none|none|
|PolicyURL|string|false|none|none|

<h2 id="tocSconsent_count">Consent_Count</h2>

<a id="schemaconsent_count"></a>

```json
{
  "Total": 0,
  "Consented": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Total|integer(int32)|false|none|Total amount of purposes|
|Consented|integer(int32)|false|none|Total consented|

<h2 id="tocSconsent_consents">Consent_Consents</h2>

<a id="schemaconsent_consents"></a>

```json
{
  "ID": "string",
  "Description": "string",
  "Value": "string",
  "Status": {
    "Consented": "string",
    "TimeStamp": "string",
    "Days": 0,
    "Remaining": 0
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string|false|none|Consent ID|
|Description|string|false|none|Description of consent|
|Value|string|false|none|Value of consent|
|Status|[Status](#schemastatus)|false|none|none|

<h2 id="tocSconsent_consentsandpurposes">Consent_ConsentsAndPurposes</h2>

<a id="schemaconsent_consentsandpurposes"></a>

```json
{
  "Purpose": {
    "ID": "string",
    "Description": "string",
    "LawfulUsage": true,
    "PolicyURL": "string"
  },
  "Count": {
    "Total": 0,
    "Consented": 0
  },
  "Consents": {
    "ID": "string",
    "Description": "string",
    "Value": "string",
    "Status": {
      "Consented": "string",
      "TimeStamp": "string",
      "Days": 0,
      "Remaining": 0
    }
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Purpose|[Consent_Purpose](#schemaconsent_purpose)|false|none|none|
|Count|[Consent_Count](#schemaconsent_count)|false|none|none|
|Consents|[Consent_Consents](#schemaconsent_consents)|false|none|none|

<h2 id="tocSpurposedetail_consents">PurposeDetail_Consents</h2>

<a id="schemapurposedetail_consents"></a>

```json
{
  "Purpose": {
    "ID": "string",
    "Description": "string",
    "LawfulUsage": true,
    "PolicyURL": "string"
  },
  "Count": {
    "Total": 2,
    "Consented": 2
  },
  "Consents": [
    {
      "ID": "string",
      "Description": "string",
      "Value": "string",
      "Status": {
        "Consented": "string",
        "TimeStamp": "string",
        "Days": 0,
        "Remaining": 0
      }
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Purpose|[Purpose](#schemapurpose)|false|none|none|
|Count|[Count](#schemacount)|false|none|none|
|Consents|[[Consents](#schemaconsents)]|false|none|none|

