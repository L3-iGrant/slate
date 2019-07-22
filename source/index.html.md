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

# Introduction

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

> The API end point is 'https://api.igrant.io/v1'.

> This is version **1.6.0**

This specification is documented in **OpenAPI format**, it describes the REST APIs of **[iGrant.io](https://igrant.io)**. 

# Authentication

iGrant.io offers one form of authentication:  - Bearer authentication
  
This form of authentication is a form of authentication scheme that involves security tokens. The client sends this token in the ***Authorization header*** when making requests.

Base URLs:

* <a href="https://api.igrant.io/v1">https://api.igrant.io/v1</a>


<h1 id="rest-api-documentation-organizations">Organizations</h1>

Below you can find a collection of endpoints that respond to GET, POST, PUT, PATCH and DELETE requests.


## Create an organization

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

Creates a new organization for which consent data need to be managed.

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
      "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "EulaURL": "string",
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
    ],
    "BillingInfo": {
      "BillingRegistrationID": "string",
      "PlanType": "string"
    }
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

## View organizations

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

View all existing organizations whose consent data is managed.

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
      "EulaURL": "EulaURL",
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
      ],
      "BillingInfo": {
        "BillingRegistrationID": "",
        "PlanType": ""
      }
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


## View an organization

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

View an organization details using the organization ID.

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
      "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "EulaURL": "string",
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
    ],
    "BillingInfo": {
      "BillingRegistrationID": "string",
      "PlanType": "string"
    }
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


## Delete an organization

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId} \
  -H 'Authorization: Bearer API_KEY'

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

Delete an organization using the organization ID.

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


## Update an organization

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/{organizationId} \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

Update basic organization details using organization ID.

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
|body|body|object|false|none|
|Location|body|string|false|location of the organization|
|Description|body|string|false|description of the organization|
|Policyurl|body|string|false|Organization's policyURL|

<h3 id="patch__organizations_{organizationid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|Updated organization data successfully.|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


## View user roles

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/roles \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

View available user roles possible within an organisation.

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



## Create subscription token

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token HTTP/1.1
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
  url: 'https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token',
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
  "SubscribeToken": "string",
  "SubscribeMethod": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token',
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

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token',
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

r = requests.post('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token");
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
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationID}/subscribe-token`

Create subscription token if the organisation subsciption is key based.

> Body parameter

```json
{
  "SubscribeToken": "string",
  "SubscribeMethod": "string"
}
```

<h3 id="post__organizations_{organizationid}_subscribe-token-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|id of the organization|
|body|body|[SubscribeToken](#schemasubscribetoken)|true|none|

> Example responses

> 200 Response

```json
{
  "SubscribeToken": "string",
  "SubscribeMethod": "string"
}
```

<h3 id="post__organizations_{organizationid}_subscribe-token-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SubscribeToken](#schemasubscribetoken)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


## View subscription token

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token',
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

fetch('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token',
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

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token',
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

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token");
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
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/subscribe-token`

View the subscription method for an organisation. If its key based, it will also return the subscription key that will be used by the user to subscribe to the organisation.

<h3 id="get__organizations_{organizationid}_subscribe-token-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|id of the organization|

> Example responses

> 200 Response

```json
{
  "SubscribeToken": "string",
  "SubscribeMethod": "string"
}
```

<h3 id="get__organizations_{organizationid}_subscribe-token-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[SubscribeToken](#schemasubscribetoken)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>



## Delete subscription token

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token \
  -H 'Authorization: Bearer API_KEY'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token HTTP/1.1
Host: api.igrant.io

```

```javascript
var headers = {
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token',
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

fetch('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token',
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

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token");
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
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationID}/subscribe-token", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationID}/subscribe-token`

Deletes the subscription token for an organisation. This is usually called when the organisation disables a key-based subscription method or when the subscription method is changed to other forms. e.g. using organization IDAM.

<h3 id="delete__organizations_{organizationid}_subscribe-token-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|id of the organization|

<h3 id="delete__organizations_{organizationid}_subscribe-token-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|No content|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## Enable an organization

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/enable \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationId}/enable HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/enable',
  method: 'post',

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

fetch('https://api.igrant.io/v1/organizations/{organizationId}/enable',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationId}/enable',
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

r = requests.post('https://api.igrant.io/v1/organizations/{organizationId}/enable', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/enable");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationId}/enable", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationId}/enable`

Enables an organization. This is needed to publish the organization towards users.

<h3 id="post__organizations_{organizationid}_enable-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|id of the organization|

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
      "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "EulaURL": "string",
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
    ],
    "BillingInfo": {
      "BillingRegistrationID": "string",
      "PlanType": "string"
    }
  }
}
```

<h3 id="post__organizations_{organizationid}_enable-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK, Enabled|[OrganizationObject](#schemaorganizationobject)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## Disable an organization

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId}/enable \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationId}/enable HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/enable',
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

fetch('https://api.igrant.io/v1/organizations/{organizationId}/enable',
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

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationId}/enable',
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

r = requests.delete('https://api.igrant.io/v1/organizations/{organizationId}/enable', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/enable");
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
    req, err := http.NewRequest("DELETE", "https://api.igrant.io/v1/organizations/{organizationId}/enable", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{organizationId}/enable`

Disables an organisation. This is needed to unpublish the organization towards the users.

<h3 id="delete__organizations_{organizationid}_enable-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|id of the organization|

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
      "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "EulaURL": "string",
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
    ],
    "BillingInfo": {
      "BillingRegistrationID": "string",
      "PlanType": "string"
    }
  }
}
```

<h3 id="delete__organizations_{organizationid}_enable-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK, disabled|[OrganizationObject](#schemaorganizationobject)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## Update EULA url

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/eulaURL \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationId}/eulaURL HTTP/1.1
Host: api.igrant.io
Content-Type: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/eulaURL',
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
  "eulaURL": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/eulaURL',
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

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationId}/eulaURL',
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

r = requests.post('https://api.igrant.io/v1/organizations/{organizationId}/eulaURL', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/eulaURL");
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
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationId}/eulaURL", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationId}/eulaURL`

Updates the EULA url for an organization.

> Body parameter

```json
{
  "eulaURL": "string"
}
```

<h3 id="post__organizations_{organizationid}_eulaurl-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organizaton|
|body|body|object|true|none|
|eulaURL|body|string|false|URL|

<h3 id="post__organizations_{organizationid}_eulaurl-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|Accepted|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## Update logo

> Code samples

```shell


# You can also use wget
curl -H 'Authorization: Bearer API_KEY' \
  https://api.igrant.io/v1/organizations/{organizationId}/logoimage \
  -F "orgimage={pathToImage}"




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

Updates the logo image for an org. The recommended image size is 400x400 px and in JPG format.

<h3 id="post__organizations_{organizationid}_logoimage-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organizaton|
|orgimage|body|string|true|link to logo|

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
      "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "EulaURL": "string",
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
    ],
    "BillingInfo": {
      "BillingRegistrationID": "string",
      "PlanType": "string"
    }
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

## Update cover image

> Code samples

```shell


# You can also use wget
curl -H 'Authorization: Bearer API_KEY' \
  https://api.igrant.io/v1/organizations/{organizationId}/coverimage \
  -F "orgimage={pathToImage}"




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

Updates the cover image for an org. The recommended image size is 1500x500 px and in JPG format.


<h3 id="post__organizations_{organizationid}_coverimage-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organizaton|
|orgimage|body|string|true|link to image|

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
      "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "EulaURL": "string",
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
    ],
    "BillingInfo": {
      "BillingRegistrationID": "string",
      "PlanType": "string"
    }
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

## Add admin to an organization

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/admins \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

Add a user as an admin to an organization.

> Body parameter

```json
{
  "userID": "string",
  "roleID": 1
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
      "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "EulaURL": "string",
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
    ],
    "BillingInfo": {
      "BillingRegistrationID": "string",
      "PlanType": "string"
    }
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

## Delete admin

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId}/admins \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```http
DELETE https://api.igrant.io/v1/organizations/{organizationId}/admins HTTP/1.1
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
  method: 'delete',

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
  method: 'DELETE',
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

result = RestClient.delete 'https://api.igrant.io/v1/organizations/{organizationId}/admins',
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
        "Content-Type": []string{"application/json"},
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

Delete an admin user from an organization.

> Body parameter

```json
{
  "userID": "string",
  "roleID": 0
}
```

<h3 id="delete__organizations_{organizationid}_admins-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|Id of the organization for which a user shall be deleted|
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
      "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "EulaURL": "string",
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
    ],
    "BillingInfo": {
      "BillingRegistrationID": "string",
      "PlanType": "string"
    }
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

## View users

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId}/users \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

View all users associated with an organization.

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

## Subscribe user

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/users \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

Subscribe a user to an organization.

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
|body|body|object|true|none|
|userId|body|string|false|none|

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

## View subscribed users count

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId}/users/count \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationId}/users/count HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/users/count',
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

fetch('https://api.igrant.io/v1/organizations/{organizationId}/users/count',
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

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationId}/users/count',
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

r = requests.get('https://api.igrant.io/v1/organizations/{organizationId}/users/count', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/users/count");
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
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationId}/users/count", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationId}/users/count`

View the number of users subscribed to an organization.

<h3 id="get__organizations_{organizationid}_users_count-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|

> Example responses

> 200 Response

```json
{
  "SubscribeUserCount": 7
}
```

<h3 id="get__organizations_{organizationid}_users_count-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns SubscribeUserCount|[SubscribeUserCount](#schemasubscribeusercount)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## View subscribed user details

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId}/users/{userId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

View the details of a user in an organization.

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

## Delete subscribed user

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId}/users/{userId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

Delete a user from the organization using user ID.

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

## View user consent data

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

View existing user data sets stored with an organization.

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

## Update user consents

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

Update the consent given by the user.

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

## View a user consent

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

View details of a user consent in an organization.

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

## Delete a user consent

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId}/users/{userId}/consents/{consentId} \
  -H 'Authorization: Bearer API_KEY'

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

Delete a given user consent in an organization by consent ID.

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

## View purpose details

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

View details of a purpose of an organization.

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

## Set status of a purpose

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/status \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

Sets overall status for a given purpose, alternatives are "Allow" and "DisAllow".

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
|body|body|object|true|none|
|Consented|body|string|true|Status of the consent for a given purpose|

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

## Update consent status

> Code samples

```shell
# You can also use wget
curl -X PATCH https://api.igrant.io/v1/organizations/{organizationId}/users/{UserId}/consents/{ConsentId}/purposes/{PurposeId}/attributes/{attrId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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
{
  "Msg": "Consent updated successfully",
  "Status": 200
}
```

<h3 id="patch__organizations_{organizationid}_users_{userid}_consents_{consentid}_purposes_{purposeid}_attributes_{attrid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful response|Inline|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Failed response|None|

<h3 id="patch__organizations_{organizationid}_users_{userid}_consents_{consentid}_purposes_{purposeid}_attributes_{attrid}-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Msg|string|false|none|Response message|
|Status|integer|false|none|Status Code|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>


## Add a purpose

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/purposes \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```http
POST https://api.igrant.io/v1/organizations/{organizationId}/purposes HTTP/1.1
Host: api.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'Bearer API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationId}/purposes',
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
  "ID": "string",
  "Description": "string",
  "LawfulUsage": true,
  "PolicyURL": "string"
}';
const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer API_KEY'

};

fetch('https://api.igrant.io/v1/organizations/{organizationId}/purposes',
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
  'Accept' => 'application/json',
  'Authorization' => 'Bearer API_KEY'
}

result = RestClient.post 'https://api.igrant.io/v1/organizations/{organizationId}/purposes',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer API_KEY'
}

r = requests.post('https://api.igrant.io/v1/organizations/{organizationId}/purposes', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationId}/purposes");
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
        "Authorization": []string{"API_KEY"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.igrant.io/v1/organizations/{organizationId}/purposes", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{organizationId}/purposes`

Add a purpose to an organization.

> Body parameter

```json
{
  "ID": "string",
  "Description": "string",
  "LawfulUsage": true,
  "PolicyURL": "string"
}
```

<h3 id="post__organizations_{organizationid}_purposes-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationId|path|string|true|ID of the organization|
|ID|path|string|true|ID of the purpose|
|Description|path|string|true|Name of the purpose|
|LawfulUsage|path|string|true|Boolean true or false|
|PolicyUrl|path|string|true|Link to privacy policy|

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
      "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "EulaURL": "string",
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
    ],
    "BillingInfo": {
      "BillingRegistrationID": "string",
      "PlanType": "string"
    }
  }
}
```

<h3 id="post__organizations_{organizationid}_purposes-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success, returns the organization details|[OrganizationObject](#schemaorganizationobject)|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>



## Delete a purpose

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId}/purposes/{purposeID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

Deletes a purpose from an organization based on purpose ID.

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
      "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "EulaURL": "string",
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
    ],
    "BillingInfo": {
      "BillingRegistrationID": "string",
      "PlanType": "string"
    }
  }
}
```

<h3 id="delete__organizations_{organizationid}_purposes_{purposeid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Deleted](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success, returns the organization details|[OrganizationObject](#schemaorganizationobject)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## Set attributes in a purpose

> Code samples

```shell
# You can also use wget
curl -X POST https://api.igrant.io/v1/organizations/{organizationId}/purposes/{PurposeId}/attributes/consent \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

Notification request for attributes in a purpose.

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
|body|body|object|true|none|
|attributeIDs|body|[string]|false|none|

<h3 id="post__organizations_{organizationid}_purposes_{purposeid}_attributes_consent-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|Accepted, successful response|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## View consented users

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}/attributes/{attributeID}/consented/users \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

```

```http
GET https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}/attributes/{attributeID}/consented/users HTTP/1.1
Host: api.igrant.io
Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'

};

$.ajax({
  url: 'https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}/attributes/{attributeID}/consented/users',
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

fetch('https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}/attributes/{attributeID}/consented/users',
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

result = RestClient.get 'https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}/attributes/{attributeID}/consented/users',
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

r = requests.get('https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}/attributes/{attributeID}/consented/users', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}/attributes/{attributeID}/consented/users");
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
    req, err := http.NewRequest("GET", "https://api.igrant.io/v1/organizations/{organizationID}/purposes/{purposeID}/attributes/{attributeID}/consented/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{organizationID}/purposes/{purposeID}/attributes/{attributeID}/consented/users`

Retrieves the users consented for a given attribute and a given purpose.

<h3 id="get__organizations_{organizationid}_purposes_{purposeid}_attributes_{attributeid}_consented_users-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|organizationID|path|string|true|ID of the organization|
|purposeID|path|string|true|ID of the purpose|
|attributeID|path|string|true|ID of the attribute|

> Example responses

> 200 Response

```json
[
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
]
```

<h3 id="get__organizations_{organizationid}_purposes_{purposeid}_attributes_{attributeid}_consented_users-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success, list of users consented to the attribute for the given purpose|[consentedUserResp](#schemaconsenteduserresp)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Request failed|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
Bearer
</aside>

## Delete a template

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.igrant.io/v1/organizations/{organizationId}/templates/{templateID} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

Deletes a template from an organization based on template IDs.

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
      "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "EulaURL": "string",
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
    ],
    "BillingInfo": {
      "BillingRegistrationID": "string",
      "PlanType": "string"
    }
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

## Get consents for users

> Code samples

```shell
# You can also use wget
curl -X GET https://api.igrant.io/v1/user/organizations/{organizationId}/consents \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer API_KEY'

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

Get the consents for users for a given organization.

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
|ConsentsAndPurposes|[object]|false|none|none|
|Purpose|object|false|none|none|
|ID|string|false|none|none|
|Description|string|false|none|none|
|LawfulUsage|boolean|false|none|none|
|PolicyURL|string|false|none|none|
|Count|object|false|none|none|
|Total|integer|false|none|Total amount of purposes|
|Consented|integer|false|none|Total consented|
|Consents|object|false|none|none|
|ID|string|false|none|Consent ID|
|Description|string|false|none|Description of consent|
|Value|string|false|none|Value of consent|
|Status|[Status](#schemastatus)|false|none|none|

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
|Days|integer|false|none|Amount of days consented|

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
|Consents|object|false|none|none|
|Purpose|[Purpose](#schemapurpose)|false|none|none|
|Count|[Count](#schemacount)|false|none|none|
|Consents|[[Consents](#schemaconsents)]|false|none|none|

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
|Days|integer|false|none|Amount of days to consent|
|Remaining|integer|false|none|Amount of days remaining|

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
|Total|integer|false|none|Total amount of purposes|
|Consented|integer|false|none|Total consented|

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
  "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
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
|ID|string|true|none|ID of purpose|
|Description|string|true|none|Description of purpose|
|LawfulUsage|boolean|true|none|Lawful usage (True or False)|
|PolicyURL|string|true|none|URL of policy|

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
|Type|integer|false|none|Type of client|

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

<h2 id="tocSsubscribeusercount">SubscribeUserCount</h2>

<a id="schemasubscribeusercount"></a>

```json
{
  "SubscribeUserCount": 7
}

```

*The number of users subscribed*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|integer|false|none|The number of users subscribed|

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
    "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
  },
  "Description": "string",
  "Enabled": true,
  "Policyurl": "string",
  "EulaURL": "string",
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
  ],
  "BillingInfo": {
    "BillingRegistrationID": "string",
    "PlanType": "string"
  }
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
|EulaURL|string|false|none|EulaURL|
|Template|[[ConsentTemplate](#schemaconsenttemplate)]|false|none|Contains properties of a consent|
|Purposes|[[Purpose](#schemapurpose)]|false|none|contains information about purposes|
|Admins|[[userDataAdmin](#schemauserdataadmin)]|false|none|represents the admins of the organization|
|BillingInfo|[BillingInfo](#schemabillinginfo)|false|none|none|

<h2 id="tocSbillinginfo">BillingInfo</h2>

<a id="schemabillinginfo"></a>

```json
{
  "BillingRegistrationID": "string",
  "PlanType": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|BillingRegistrationID|string|false|none|ID of billing registration|
|PlanType|string|false|none|Type of plan|

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
      "ImageURL": "https://api.igrant.io/v1/organizations/types/5bba67ba98135900010927a5/image"
    },
    "Description": "string",
    "Enabled": true,
    "Policyurl": "string",
    "EulaURL": "string",
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
    ],
    "BillingInfo": {
      "BillingRegistrationID": "string",
      "PlanType": "string"
    }
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
|ID|integer|false|none|Unique ID of the roles|
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
|roleID|integer|false|none|ID of role|

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
      "EulaURL": "EulaURL",
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
      ],
      "BillingInfo": {
        "BillingRegistrationID": "",
        "PlanType": ""
      }
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[Organization](#schemaorganization)]|false|none|none|

<h2 id="tocSconsenteduserresp">consentedUserResp</h2>

<a id="schemaconsenteduserresp"></a>

```json
[
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
]

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[User](#schemauser)]|false|none|none|
|ID|string|false|none|ID of the user|
|Name|string|false|none|Name of the user|
|Phone|string|false|none|User phone number|

<h2 id="tocSsubscribetoken">SubscribeToken</h2>

<a id="schemasubscribetoken"></a>

```json
{
  "SubscribeToken": "string",
  "SubscribeMethod": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|SubscribeToken|string|false|none|Client token|
|SubscribeMethod|string|false|none|Type of client|

