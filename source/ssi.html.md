---
title: Introduction to iGrant.io SSI APIs v0.5.6_5.0
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

<h1 id="introduction-to-aries-cloudagent-apis">Introduction to iGrant.io SSI APIs v0.5.6_5.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

This specification is documented in **OpenAPI format**, it describes the RESTFul APIs of Aries Cloudagent with iGrant.io operator integrations
  
iGrant.io offers one form of authentication - Bearer authentication

This form of authentication is a form of authentication scheme that involves security tokens. The client sends this token in the Authorization header when making request.

Base URLs:

* <a href="https://cloudagent.igrant.io/v1/{orgId}/admin">https://cloudagent.igrant.io/v1/{orgId}/admin</a>

    * **orgId** - Org ID assigned by iGrant.io Default: undefined

# Authentication

* API Key (ApiKeyHeader)
    - Parameter Name: **Authorization**, in: header. 

<h1 id="introduction-to-aries-cloudagent-apis-basic-routing">basic-routing</h1>

iGrant.io basic routing protocols

## post__basic-routing_connections_{conn_id}_create-inbox

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/create-inbox \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/create-inbox HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/create-inbox',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/create-inbox',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/create-inbox', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/create-inbox', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/create-inbox");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/create-inbox", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /basic-routing/connections/{conn_id}/create-inbox`

*Send message to create-inbox*

<h3 id="post__basic-routing_connections_{conn_id}_create-inbox-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|

<h3 id="post__basic-routing_connections_{conn_id}_create-inbox-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__basic-routing_connections_{conn_id}_add-route

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/add-route \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/add-route HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/add-route',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/add-route',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/add-route', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/add-route', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/add-route");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/basic-routing/connections/{conn_id}/add-route", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /basic-routing/connections/{conn_id}/add-route`

*Send message to add-route*

<h3 id="post__basic-routing_connections_{conn_id}_add-route-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|

<h3 id="post__basic-routing_connections_{conn_id}_add-route-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-basicmessage">basicmessage</h1>

Simple messaging

<a href="https://github.com/hyperledger/aries-rfcs/tree/527849ec3aa2a8fd47a7bb6c57f918ff8bcb5e8c/features/0095-basic-message">Specification</a>

## post__connections_{conn_id}_send-message

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-message \
  -H 'Content-Type: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-message HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "content": "Hello"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-message',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-message',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-message', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-message', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-message");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-message", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /connections/{conn_id}/send-message`

*Send a basic message to a connection*

> Body parameter

```json
{
  "content": "Hello"
}
```

<h3 id="post__connections_{conn_id}_send-message-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|
|body|body|[SendMessage](#schemasendmessage)|false|none|

<h3 id="post__connections_{conn_id}_send-message-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-connection">connection</h1>

Connection management

<a href="https://github.com/hyperledger/aries-rfcs/tree/9b0aaa39df7e8bd434126c4b33c097aae78d65bf/features/0160-connection-protocol">Specification</a>

## get__connections

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/connections \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/connections HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/connections',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/connections',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/connections', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/connections', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/connections");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/connections", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /connections`

*Query agent-to-agent connections*

<h3 id="get__connections-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|alias|query|string|false|Alias|
|initiator|query|string|false|Connection initiator|
|invitation_key|query|string|false|invitation key|
|my_did|query|string|false|My DID|
|state|query|string|false|Connection state|
|their_did|query|string|false|Their DID|
|their_role|query|string|false|Their assigned connection role|

#### Enumerated Values

|Parameter|Value|
|---|---|
|initiator|self|
|initiator|external|
|state|init|
|state|invitation|
|state|request|
|state|response|
|state|active|
|state|error|
|state|inactive|

> Example responses

> 200 Response

```json
{
  "results": [
    {
      "accept": "auto",
      "alias": "Bob, providing quotes",
      "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "created_at": "2021-02-04 19:10:56Z",
      "error_msg": "No DIDDoc provided; cannot connect to public DID",
      "inbound_connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "initiator": "self",
      "invitation_key": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV",
      "invitation_mode": "once",
      "my_did": "WgWxqztrNooG92RXvxSTWv",
      "request_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "routing_state": "active",
      "state": "active",
      "their_did": "WgWxqztrNooG92RXvxSTWv",
      "their_label": "Bob",
      "their_role": "Point of contact",
      "updated_at": "2021-02-04 19:10:56Z"
    }
  ]
}
```

<h3 id="get__connections-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ConnectionList](#schemaconnectionlist)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__connections_{conn_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id} HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /connections/{conn_id}`

*Fetch a single connection record*

<h3 id="get__connections_{conn_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|

> Example responses

> 200 Response

```json
{
  "accept": "auto",
  "alias": "Bob, providing quotes",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "No DIDDoc provided; cannot connect to public DID",
  "inbound_connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "initiator": "self",
  "invitation_key": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV",
  "invitation_mode": "once",
  "my_did": "WgWxqztrNooG92RXvxSTWv",
  "request_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "routing_state": "active",
  "state": "active",
  "their_did": "WgWxqztrNooG92RXvxSTWv",
  "their_label": "Bob",
  "their_role": "Point of contact",
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="get__connections_{conn_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ConnectionRecord](#schemaconnectionrecord)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## delete__connections_{conn_id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id} \
  -H 'Authorization: API_KEY'

```

```http
DELETE https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}',
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

result = RestClient.delete 'https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.delete('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}");
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
    req, err := http.NewRequest("DELETE", "https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /connections/{conn_id}`

*Remove an existing connection record*

<h3 id="delete__connections_{conn_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|

<h3 id="delete__connections_{conn_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__connections_create-static

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-static \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-static HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "alias": "string",
  "my_did": "WgWxqztrNooG92RXvxSTWv",
  "my_seed": "string",
  "their_did": "WgWxqztrNooG92RXvxSTWv",
  "their_endpoint": "https://myhost:8021",
  "their_label": "string",
  "their_role": "Point of contact",
  "their_seed": "string",
  "their_verkey": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-static',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-static',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-static', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-static', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-static");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-static", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /connections/create-static`

*Create a new static connection*

> Body parameter

```json
{
  "alias": "string",
  "my_did": "WgWxqztrNooG92RXvxSTWv",
  "my_seed": "string",
  "their_did": "WgWxqztrNooG92RXvxSTWv",
  "their_endpoint": "https://myhost:8021",
  "their_label": "string",
  "their_role": "Point of contact",
  "their_seed": "string",
  "their_verkey": "string"
}
```

<h3 id="post__connections_create-static-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ConnectionStaticRequest](#schemaconnectionstaticrequest)|false|none|

> Example responses

> 200 Response

```json
{
  "mv_verkey": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV",
  "my_did": "WgWxqztrNooG92RXvxSTWv",
  "my_endpoint": "https://myhost:8021",
  "record": {
    "accept": "auto",
    "alias": "Bob, providing quotes",
    "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "created_at": "2021-02-04 19:10:56Z",
    "error_msg": "No DIDDoc provided; cannot connect to public DID",
    "inbound_connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "initiator": "self",
    "invitation_key": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV",
    "invitation_mode": "once",
    "my_did": "WgWxqztrNooG92RXvxSTWv",
    "request_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "routing_state": "active",
    "state": "active",
    "their_did": "WgWxqztrNooG92RXvxSTWv",
    "their_label": "Bob",
    "their_role": "Point of contact",
    "updated_at": "2021-02-04 19:10:56Z"
  },
  "their_did": "WgWxqztrNooG92RXvxSTWv",
  "their_verkey": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
}
```

<h3 id="post__connections_create-static-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ConnectionStaticResult](#schemaconnectionstaticresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__connections_create-invitation

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-invitation \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-invitation HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-invitation',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-invitation',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-invitation', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-invitation', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-invitation");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/connections/create-invitation", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /connections/create-invitation`

*Create a new connection invitation*

<h3 id="post__connections_create-invitation-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|alias|query|string|false|Alias|
|auto_accept|query|boolean|false|Auto-accept connection (default as per configuration)|
|multi_use|query|boolean|false|Create invitation for multiple use (default false)|
|public|query|boolean|false|Create invitation from public DID (default false)|

> Example responses

> 200 Response

```json
{
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "invitation": {
    "@id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "@type": "https://didcomm.org/my-family/1.0/my-message-type",
    "did": "WgWxqztrNooG92RXvxSTWv",
    "image_url": "http://192.168.56.101/img/logo.jpg",
    "label": "Bob",
    "recipientKeys": [
      "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
    ],
    "routingKeys": [
      "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
    ],
    "serviceEndpoint": "http://192.168.56.101:8020"
  },
  "invitation_url": "http://192.168.56.101:8020/invite?c_i=eyJAdHlwZSI6Li4ufQ=="
}
```

<h3 id="post__connections_create-invitation-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[InvitationResult](#schemainvitationresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__connections_receive-invitation

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/receive-invitation \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/receive-invitation HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "@id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "did": "WgWxqztrNooG92RXvxSTWv",
  "image_url": "http://192.168.56.101/img/logo.jpg",
  "label": "Bob",
  "recipientKeys": [
    "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  ],
  "routingKeys": [
    "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  ],
  "serviceEndpoint": "http://192.168.56.101:8020"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/receive-invitation',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/connections/receive-invitation',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/receive-invitation', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/connections/receive-invitation', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/connections/receive-invitation");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/connections/receive-invitation", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /connections/receive-invitation`

*Receive a new connection invitation*

> Body parameter

```json
{
  "@id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "did": "WgWxqztrNooG92RXvxSTWv",
  "image_url": "http://192.168.56.101/img/logo.jpg",
  "label": "Bob",
  "recipientKeys": [
    "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  ],
  "routingKeys": [
    "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  ],
  "serviceEndpoint": "http://192.168.56.101:8020"
}
```

<h3 id="post__connections_receive-invitation-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|alias|query|string|false|Alias|
|auto_accept|query|boolean|false|Auto-accept connection (defaults to configuration)|
|body|body|[ReceiveInvitationRequest](#schemareceiveinvitationrequest)|false|none|

> Example responses

> 200 Response

```json
{
  "accept": "auto",
  "alias": "Bob, providing quotes",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "No DIDDoc provided; cannot connect to public DID",
  "inbound_connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "initiator": "self",
  "invitation_key": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV",
  "invitation_mode": "once",
  "my_did": "WgWxqztrNooG92RXvxSTWv",
  "request_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "routing_state": "active",
  "state": "active",
  "their_did": "WgWxqztrNooG92RXvxSTWv",
  "their_label": "Bob",
  "their_role": "Point of contact",
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="post__connections_receive-invitation-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ConnectionRecord](#schemaconnectionrecord)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__connections_{conn_id}_accept-invitation

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-invitation \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-invitation HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-invitation',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-invitation',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-invitation', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-invitation', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-invitation");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-invitation", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /connections/{conn_id}/accept-invitation`

*Accept a stored connection invitation*

<h3 id="post__connections_{conn_id}_accept-invitation-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|
|my_endpoint|query|string|false|My URL endpoint|
|my_label|query|string|false|Label for connection|

> Example responses

> 200 Response

```json
{
  "accept": "auto",
  "alias": "Bob, providing quotes",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "No DIDDoc provided; cannot connect to public DID",
  "inbound_connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "initiator": "self",
  "invitation_key": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV",
  "invitation_mode": "once",
  "my_did": "WgWxqztrNooG92RXvxSTWv",
  "request_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "routing_state": "active",
  "state": "active",
  "their_did": "WgWxqztrNooG92RXvxSTWv",
  "their_label": "Bob",
  "their_role": "Point of contact",
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="post__connections_{conn_id}_accept-invitation-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ConnectionRecord](#schemaconnectionrecord)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__connections_{conn_id}_accept-request

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-request \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-request HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-request',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-request',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-request', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-request', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-request");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/accept-request", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /connections/{conn_id}/accept-request`

*Accept a stored connection request*

<h3 id="post__connections_{conn_id}_accept-request-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|
|my_endpoint|query|string|false|My URL endpoint|

> Example responses

> 200 Response

```json
{
  "accept": "auto",
  "alias": "Bob, providing quotes",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "No DIDDoc provided; cannot connect to public DID",
  "inbound_connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "initiator": "self",
  "invitation_key": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV",
  "invitation_mode": "once",
  "my_did": "WgWxqztrNooG92RXvxSTWv",
  "request_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "routing_state": "active",
  "state": "active",
  "their_did": "WgWxqztrNooG92RXvxSTWv",
  "their_label": "Bob",
  "their_role": "Point of contact",
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="post__connections_{conn_id}_accept-request-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ConnectionRecord](#schemaconnectionrecord)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__connections_{conn_id}_establish-inbound_{ref_id}

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/establish-inbound/{ref_id} \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/establish-inbound/{ref_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/establish-inbound/{ref_id}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/establish-inbound/{ref_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/establish-inbound/{ref_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/establish-inbound/{ref_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/establish-inbound/{ref_id}");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/establish-inbound/{ref_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /connections/{conn_id}/establish-inbound/{ref_id}`

*Assign another connection as the inbound connection*

<h3 id="post__connections_{conn_id}_establish-inbound_{ref_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|
|ref_id|path|string|true|Inbound connection identifier|

<h3 id="post__connections_{conn_id}_establish-inbound_{ref_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-credential-definition">credential-definition</h1>

Credential definition operations

<a href="https://github.com/hyperledger/indy-node/blob/master/design/anoncreds.md#cred_def">Specification</a>

## post__credential-definitions

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "revocation_registry_size": 1000,
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "support_revocation": true,
  "tag": "default"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /credential-definitions`

*Sends a credential definition to the ledger*

> Body parameter

```json
{
  "revocation_registry_size": 1000,
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "support_revocation": true,
  "tag": "default"
}
```

<h3 id="post__credential-definitions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CredentialDefinitionSendRequest](#schemacredentialdefinitionsendrequest)|false|none|

> Example responses

> 200 Response

```json
{
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
}
```

<h3 id="post__credential-definitions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[CredentialDefinitionSendResults](#schemacredentialdefinitionsendresults)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__credential-definitions_created

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/created \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/created HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/created',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/created',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/created', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/created', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/created");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/created", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /credential-definitions/created`

*Search for matching credential definitions that agent originated*

<h3 id="get__credential-definitions_created-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cred_def_id|query|string|false|Credential definition id|
|issuer_did|query|string|false|Issuer DID|
|schema_id|query|string|false|Schema identifier|
|schema_issuer_did|query|string|false|Schema issuer DID|
|schema_name|query|string|false|Schema name|
|schema_version|query|string|false|Schema version|

> Example responses

> 200 Response

```json
{
  "credential_definition_ids": [
    "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
  ]
}
```

<h3 id="get__credential-definitions_created-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[CredentialDefinitionsCreatedResults](#schemacredentialdefinitionscreatedresults)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__credential-definitions_{cred_def_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/{cred_def_id} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/{cred_def_id} HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/{cred_def_id}',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/{cred_def_id}',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/{cred_def_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/{cred_def_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/{cred_def_id}");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/credential-definitions/{cred_def_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /credential-definitions/{cred_def_id}`

*Gets a credential definition from the ledger*

<h3 id="get__credential-definitions_{cred_def_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cred_def_id|path|string|true|Credential definition identifier|

> Example responses

> 200 Response

```json
{
  "credential_definition": {
    "id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
    "schemaId": "20",
    "tag": "tag",
    "type": "CL",
    "value": {},
    "ver": "1.0"
  }
}
```

<h3 id="get__credential-definitions_{cred_def_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[CredentialDefinitionGetResults](#schemacredentialdefinitiongetresults)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-credentials">credentials</h1>

Holder credential management

<a href="https://w3c.github.io/vc-data-model/#credentials">Overview</a>

## get__credential_{credential_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id} HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id}',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id}',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id}");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /credential/{credential_id}`

*Fetch a credential from wallet by id*

<h3 id="get__credential_{credential_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|credential_id|path|string|true|Credential identifier|

> Example responses

> 200 Response

```json
{
  "attrs": {
    "property1": "string",
    "property2": "string"
  },
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "cred_rev_id": "12345",
  "referent": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "rev_reg_id": "WgWxqztrNooG92RXvxSTWv:4:WgWxqztrNooG92RXvxSTWv:3:CL:20:tag:CL_ACCUM:0",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0"
}
```

<h3 id="get__credential_{credential_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[CredBrief](#schemacredbrief)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## delete__credential_{credential_id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id} \
  -H 'Authorization: API_KEY'

```

```http
DELETE https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id}',
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

result = RestClient.delete 'https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.delete('https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id}");
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
    req, err := http.NewRequest("DELETE", "https://cloudagent.igrant.io/v1/{orgId}/admin/credential/{credential_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /credential/{credential_id}`

*Remove a credential from the wallet by id*

<h3 id="delete__credential_{credential_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|credential_id|path|string|true|Credential identifier|

<h3 id="delete__credential_{credential_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__credential_revoked_{credential_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/credential/revoked/{credential_id} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/credential/revoked/{credential_id} HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/credential/revoked/{credential_id}',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/credential/revoked/{credential_id}',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/credential/revoked/{credential_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/credential/revoked/{credential_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/credential/revoked/{credential_id}");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/credential/revoked/{credential_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /credential/revoked/{credential_id}`

*Query credential revocation status by id*

<h3 id="get__credential_revoked_{credential_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|credential_id|path|string|true|Credential identifier|

> Example responses

> 200 Response

```json
{
  "revoked": true
}
```

<h3 id="get__credential_revoked_{credential_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[CredRevokedResult](#schemacredrevokedresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__credential_mime-types_{credential_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/credential/mime-types/{credential_id} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/credential/mime-types/{credential_id} HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/credential/mime-types/{credential_id}',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/credential/mime-types/{credential_id}',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/credential/mime-types/{credential_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/credential/mime-types/{credential_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/credential/mime-types/{credential_id}");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/credential/mime-types/{credential_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /credential/mime-types/{credential_id}`

*Get attribute MIME types from wallet*

<h3 id="get__credential_mime-types_{credential_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|credential_id|path|string|true|Credential identifier|

> Example responses

> 200 Response

```json
{}
```

<h3 id="get__credential_mime-types_{credential_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[AttributeMimeTypesResult](#schemaattributemimetypesresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__credentials

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/credentials \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/credentials HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/credentials',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/credentials',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/credentials', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/credentials', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/credentials");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/credentials", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /credentials`

*Fetch credentials from wallet*

<h3 id="get__credentials-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|count|query|integer(int32)|false|Maximum number to retrieve|
|start|query|integer(int32)|false|Start index|
|wql|query|string|false|(JSON) WQL query|

> Example responses

> 200 Response

```json
{
  "results": [
    {
      "attrs": {
        "property1": "string",
        "property2": "string"
      },
      "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
      "cred_rev_id": "12345",
      "referent": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "rev_reg_id": "WgWxqztrNooG92RXvxSTWv:4:WgWxqztrNooG92RXvxSTWv:3:CL:20:tag:CL_ACCUM:0",
      "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0"
    }
  ]
}
```

<h3 id="get__credentials-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[CredBriefList](#schemacredbrieflist)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-igrantio_operator">igrantio_operator</h1>

iGrant.io operator management

## get__igrantio-operator_operator-configuration

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/operator-configuration \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/operator-configuration HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/operator-configuration',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/operator-configuration',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/operator-configuration', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/operator-configuration', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/operator-configuration");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/operator-configuration", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /igrantio-operator/operator-configuration`

*Fetch iGrant.io operator configuration*

> Example responses

> 200 Response

```json
{
  "api_key": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiI1ZjUyNGZhYmM2NzAwMTAwMDEwMGY5ZTUiLCJleHAiOjE2MzAzMzQ1Nzl9.mE0WH81Y40xImEcEVwhHa5KA8uaxPF4SwrZPKW-SiYc",
  "org_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6"
}
```

<h3 id="get__igrantio-operator_operator-configuration-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[OperatorConfigurationResult](#schemaoperatorconfigurationresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__igrantio-operator_connections_{conn_id}_list-data-certificate-types

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/list-data-certificate-types \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/list-data-certificate-types HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/list-data-certificate-types',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/list-data-certificate-types',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/list-data-certificate-types', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/list-data-certificate-types', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/list-data-certificate-types");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/list-data-certificate-types", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /igrantio-operator/connections/{conn_id}/list-data-certificate-types`

*Sending message for listing available data certificate types that can be issued*

<h3 id="post__igrantio-operator_connections_{conn_id}_list-data-certificate-types-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|

<h3 id="post__igrantio-operator_connections_{conn_id}_list-data-certificate-types-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__igrantio-operator_connections_{conn_id}_organization-info

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/organization-info \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/organization-info HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/organization-info',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/organization-info',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/organization-info', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/organization-info', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/organization-info");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/organization-info", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /igrantio-operator/connections/{conn_id}/organization-info`

*Sending message for fetching organization info*

<h3 id="post__igrantio-operator_connections_{conn_id}_organization-info-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|

<h3 id="post__igrantio-operator_connections_{conn_id}_organization-info-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## head__igrantio-operator_connections_{conn_id}_org-multiple-connections

> Code samples

```shell
# You can also use wget
curl -X HEAD https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections \
  -H 'Authorization: API_KEY'

```

```http
HEAD https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections',
{
  method: 'HEAD',

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

result = RestClient.head 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.head('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('HEAD','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("HEAD");
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
    req, err := http.NewRequest("HEAD", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`HEAD /igrantio-operator/connections/{conn_id}/org-multiple-connections`

*Fetch multi connections record for a connection ID if available*

<h3 id="head__igrantio-operator_connections_{conn_id}_org-multiple-connections-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|

<h3 id="head__igrantio-operator_connections_{conn_id}_org-multiple-connections-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__igrantio-operator_connections_{conn_id}_org-multiple-connections

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /igrantio-operator/connections/{conn_id}/org-multiple-connections`

*Fetch multi connections record for a connection ID if available*

<h3 id="get__igrantio-operator_connections_{conn_id}_org-multiple-connections-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|

<h3 id="get__igrantio-operator_connections_{conn_id}_org-multiple-connections-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__igrantio-operator_connections_{conn_id}_org-multiple-connections

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections?their_did=string \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections?their_did=string HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections?their_did=string',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections',
  params: {
  'their_did' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections', params={
  'their_did': 'string'
}, headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections?their_did=string");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connections/{conn_id}/org-multiple-connections", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /igrantio-operator/connections/{conn_id}/org-multiple-connections`

*Sending message to inform existing connection*

<h3 id="post__igrantio-operator_connections_{conn_id}_org-multiple-connections-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|
|their_did|query|string|true|Existing pairwise Their DID|

<h3 id="post__igrantio-operator_connections_{conn_id}_org-multiple-connections-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__igrantio-operator_connection_qr-link_{conn_id}

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connection/qr-link/{conn_id} \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connection/qr-link/{conn_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connection/qr-link/{conn_id}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connection/qr-link/{conn_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connection/qr-link/{conn_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connection/qr-link/{conn_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connection/qr-link/{conn_id}");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/connection/qr-link/{conn_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /igrantio-operator/connection/qr-link/{conn_id}`

*Resolve connection invitation short link*

<h3 id="post__igrantio-operator_connection_qr-link_{conn_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|

<h3 id="post__igrantio-operator_connection_qr-link_{conn_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__igrantio-operator_data-exchange

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange \
  -H 'Content-Type: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "name": "Proof request",
  "non_revoked": {
    "from": 1612465856,
    "to": 1612465856
  },
  "nonce": "1234567890",
  "requested_attributes": {
    "property1": {
      "name": "favouriteDrink",
      "names": [
        "age"
      ],
      "non_revoked": {
        "from": 1612465856,
        "to": 1612465856
      },
      "restrictions": [
        {
          "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
          "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
        }
      ]
    },
    "property2": {
      "name": "favouriteDrink",
      "names": [
        "age"
      ],
      "non_revoked": {
        "from": 1612465856,
        "to": 1612465856
      },
      "restrictions": [
        {
          "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
          "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
        }
      ]
    }
  },
  "requested_predicates": {
    "property1": {
      "name": "index",
      "non_revoked": {
        "from": 1612465856,
        "to": 1612465856
      },
      "p_type": ">=",
      "p_value": 0,
      "restrictions": [
        {
          "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
          "issuer_did": "WgWxqztrNooG92RXvxSTWv",
          "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
          "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
          "schema_name": "transcript",
          "schema_version": "1.0"
        }
      ]
    },
    "property2": {
      "name": "index",
      "non_revoked": {
        "from": 1612465856,
        "to": 1612465856
      },
      "p_type": ">=",
      "p_value": 0,
      "restrictions": [
        {
          "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
          "issuer_did": "WgWxqztrNooG92RXvxSTWv",
          "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
          "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
          "schema_name": "transcript",
          "schema_version": "1.0"
        }
      ]
    }
  },
  "version": "1.0"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /igrantio-operator/data-exchange`

*Create automated data exchange record*

> Body parameter

```json
{
  "name": "Proof request",
  "non_revoked": {
    "from": 1612465856,
    "to": 1612465856
  },
  "nonce": "1234567890",
  "requested_attributes": {
    "property1": {
      "name": "favouriteDrink",
      "names": [
        "age"
      ],
      "non_revoked": {
        "from": 1612465856,
        "to": 1612465856
      },
      "restrictions": [
        {
          "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
          "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
        }
      ]
    },
    "property2": {
      "name": "favouriteDrink",
      "names": [
        "age"
      ],
      "non_revoked": {
        "from": 1612465856,
        "to": 1612465856
      },
      "restrictions": [
        {
          "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
          "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
        }
      ]
    }
  },
  "requested_predicates": {
    "property1": {
      "name": "index",
      "non_revoked": {
        "from": 1612465856,
        "to": 1612465856
      },
      "p_type": ">=",
      "p_value": 0,
      "restrictions": [
        {
          "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
          "issuer_did": "WgWxqztrNooG92RXvxSTWv",
          "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
          "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
          "schema_name": "transcript",
          "schema_version": "1.0"
        }
      ]
    },
    "property2": {
      "name": "index",
      "non_revoked": {
        "from": 1612465856,
        "to": 1612465856
      },
      "p_type": ">=",
      "p_value": 0,
      "restrictions": [
        {
          "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
          "issuer_did": "WgWxqztrNooG92RXvxSTWv",
          "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
          "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
          "schema_name": "transcript",
          "schema_version": "1.0"
        }
      ]
    }
  },
  "version": "1.0"
}
```

<h3 id="post__igrantio-operator_data-exchange-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[IndyProofRequest](#schemaindyproofrequest)|false|none|

<h3 id="post__igrantio-operator_data-exchange-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## head__igrantio-operator_data-exchange

> Code samples

```shell
# You can also use wget
curl -X HEAD https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange \
  -H 'Authorization: API_KEY'

```

```http
HEAD https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange',
{
  method: 'HEAD',

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

result = RestClient.head 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.head('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('HEAD','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("HEAD");
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
    req, err := http.NewRequest("HEAD", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`HEAD /igrantio-operator/data-exchange`

*List automated data exchange records*

<h3 id="head__igrantio-operator_data-exchange-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__igrantio-operator_data-exchange

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /igrantio-operator/data-exchange`

*List automated data exchange records*

<h3 id="get__igrantio-operator_data-exchange-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## head__igrantio-operator_data-exchange_{auto_data_ex_id}

> Code samples

```shell
# You can also use wget
curl -X HEAD https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id} \
  -H 'Authorization: API_KEY'

```

```http
HEAD https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}',
{
  method: 'HEAD',

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

result = RestClient.head 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.head('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('HEAD','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("HEAD");
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
    req, err := http.NewRequest("HEAD", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`HEAD /igrantio-operator/data-exchange/{auto_data_ex_id}`

*Get automated data exchange record*

<h3 id="head__igrantio-operator_data-exchange_{auto_data_ex_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|auto_data_ex_id|path|string|true|Automated data exchange identifier|

<h3 id="head__igrantio-operator_data-exchange_{auto_data_ex_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__igrantio-operator_data-exchange_{auto_data_ex_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id} \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /igrantio-operator/data-exchange/{auto_data_ex_id}`

*Get automated data exchange record*

<h3 id="get__igrantio-operator_data-exchange_{auto_data_ex_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|auto_data_ex_id|path|string|true|Automated data exchange identifier|

<h3 id="get__igrantio-operator_data-exchange_{auto_data_ex_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## delete__igrantio-operator_data-exchange_{auto_data_ex_id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id} \
  -H 'Authorization: API_KEY'

```

```http
DELETE https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}',
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

result = RestClient.delete 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.delete('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}");
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
    req, err := http.NewRequest("DELETE", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/{auto_data_ex_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /igrantio-operator/data-exchange/{auto_data_ex_id}`

*Delete automated data exchange record*

<h3 id="delete__igrantio-operator_data-exchange_{auto_data_ex_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|auto_data_ex_id|path|string|true|Automated data exchange identifier|

<h3 id="delete__igrantio-operator_data-exchange_{auto_data_ex_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## delete__igrantio-operator_data-exchange_qr_{qr_id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{qr_id} \
  -H 'Authorization: API_KEY'

```

```http
DELETE https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{qr_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{qr_id}',
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

result = RestClient.delete 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{qr_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.delete('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{qr_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{qr_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{qr_id}");
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
    req, err := http.NewRequest("DELETE", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{qr_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /igrantio-operator/data-exchange/qr/{qr_id}`

*Delete QR automated data exchange record*

<h3 id="delete__igrantio-operator_data-exchange_qr_{qr_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|qr_id|path|string|true|QR identifier|

<h3 id="delete__igrantio-operator_data-exchange_qr_{qr_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__igrantio-operator_data-exchange_qr_{auto_data_ex_id}

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id} \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /igrantio-operator/data-exchange/qr/{auto_data_ex_id}`

*Create automated QR data exchange record*

<h3 id="post__igrantio-operator_data-exchange_qr_{auto_data_ex_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|auto_data_ex_id|path|string|true|Automated data exchange identifier|

<h3 id="post__igrantio-operator_data-exchange_qr_{auto_data_ex_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## head__igrantio-operator_data-exchange_qr_{auto_data_ex_id}_list

> Code samples

```shell
# You can also use wget
curl -X HEAD https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list \
  -H 'Authorization: API_KEY'

```

```http
HEAD https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list',
{
  method: 'HEAD',

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

result = RestClient.head 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.head('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('HEAD','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("HEAD");
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
    req, err := http.NewRequest("HEAD", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`HEAD /igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list`

*List automated QR data exchange records*

<h3 id="head__igrantio-operator_data-exchange_qr_{auto_data_ex_id}_list-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|auto_data_ex_id|path|string|true|Automated data exchange identifier|

<h3 id="head__igrantio-operator_data-exchange_qr_{auto_data_ex_id}_list-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__igrantio-operator_data-exchange_qr_{auto_data_ex_id}_list

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /igrantio-operator/data-exchange/qr/{auto_data_ex_id}/list`

*List automated QR data exchange records*

<h3 id="get__igrantio-operator_data-exchange_qr_{auto_data_ex_id}_list-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|auto_data_ex_id|path|string|true|Automated data exchange identifier|

<h3 id="get__igrantio-operator_data-exchange_qr_{auto_data_ex_id}_list-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## head__igrantio-operator_data-exchange_qr-link_{qr_id}

> Code samples

```shell
# You can also use wget
curl -X HEAD https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id} \
  -H 'Authorization: API_KEY'

```

```http
HEAD https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id}',
{
  method: 'HEAD',

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

result = RestClient.head 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.head('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('HEAD','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("HEAD");
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
    req, err := http.NewRequest("HEAD", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`HEAD /igrantio-operator/data-exchange/qr-link/{qr_id}`

*Resolve automated data exchange QR short link*

<h3 id="head__igrantio-operator_data-exchange_qr-link_{qr_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|qr_id|path|string|true|QR identifier|

<h3 id="head__igrantio-operator_data-exchange_qr-link_{qr_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__igrantio-operator_data-exchange_qr-link_{qr_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id} \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id}',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id}");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/igrantio-operator/data-exchange/qr-link/{qr_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /igrantio-operator/data-exchange/qr-link/{qr_id}`

*Resolve automated data exchange QR short link*

<h3 id="get__igrantio-operator_data-exchange_qr-link_{qr_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|qr_id|path|string|true|QR identifier|

<h3 id="get__igrantio-operator_data-exchange_qr-link_{qr_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-issuer">issuer</h1>

Credential issue, revocation

<a href="https://github.com/hyperledger/aries-rfcs/tree/bb42a6c35e0d5543718fb36dd099551ab192f7b0/features/0036-issue-credential">Specification</a>

## get__issue-credential_records

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /issue-credential/records`

*Fetch all credential exchange records*

<h3 id="get__issue-credential_records-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|connection_id|query|string(uuid)|false|Connection identifier|
|role|query|string|false|Role assigned in credential exchange|
|state|query|string|false|Credential exchange state|
|thread_id|query|string(uuid)|false|Thread identifier|

#### Enumerated Values

|Parameter|Value|
|---|---|
|role|issuer|
|role|holder|
|state|proposal_sent|
|state|proposal_received|
|state|offer_sent|
|state|offer_received|
|state|request_sent|
|state|request_received|
|state|credential_issued|
|state|credential_received|
|state|credential_acked|

> Example responses

> 200 Response

```json
{
  "results": [
    {
      "auto_issue": false,
      "auto_offer": false,
      "auto_remove": false,
      "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "created_at": "2021-02-04 19:10:56Z",
      "credential": {},
      "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
      "credential_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "credential_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "credential_offer": {},
      "credential_offer_dict": {},
      "credential_proposal_dict": {},
      "credential_request": {},
      "credential_request_metadata": {},
      "error_msg": "credential definition identifier is not set in proposal",
      "initiator": "self",
      "parent_thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "raw_credential": {},
      "revoc_reg_id": "string",
      "revocation_id": "string",
      "role": "issuer",
      "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
      "state": "credential_acked",
      "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "trace": true,
      "updated_at": "2021-02-04 19:10:56Z"
    }
  ]
}
```

<h3 id="get__issue-credential_records-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10CredentialExchangeListResult](#schemav10credentialexchangelistresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__issue-credential_records_{cred_ex_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id} HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /issue-credential/records/{cred_ex_id}`

*Fetch a single credential exchange record*

<h3 id="get__issue-credential_records_{cred_ex_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cred_ex_id|path|string|true|Credential exchange identifier|

> Example responses

> 200 Response

```json
{
  "auto_issue": false,
  "auto_offer": false,
  "auto_remove": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "credential": {},
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_offer": {},
  "credential_offer_dict": {},
  "credential_proposal_dict": {},
  "credential_request": {},
  "credential_request_metadata": {},
  "error_msg": "credential definition identifier is not set in proposal",
  "initiator": "self",
  "parent_thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "raw_credential": {},
  "revoc_reg_id": "string",
  "revocation_id": "string",
  "role": "issuer",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "state": "credential_acked",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="get__issue-credential_records_{cred_ex_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10CredentialExchange](#schemav10credentialexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## delete__issue-credential_records_{cred_ex_id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id} \
  -H 'Authorization: API_KEY'

```

```http
DELETE https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}',
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

result = RestClient.delete 'https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.delete('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}");
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
    req, err := http.NewRequest("DELETE", "https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /issue-credential/records/{cred_ex_id}`

*Remove an existing credential exchange record*

<h3 id="delete__issue-credential_records_{cred_ex_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cred_ex_id|path|string|true|Credential exchange identifier|

<h3 id="delete__issue-credential_records_{cred_ex_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__issue-credential_create

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/create \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/create HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "auto_remove": true,
  "comment": "string",
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_proposal": {
    "@type": "issue-credential/1.0/credential-preview",
    "attributes": [
      {
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "value": "martini"
      }
    ]
  },
  "issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_name": "preferences",
  "schema_version": "1.0",
  "trace": false
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/create',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/create',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/create', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/create', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/create");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/create", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /issue-credential/create`

*Send holder a credential, automating entire flow*

> Body parameter

```json
{
  "auto_remove": true,
  "comment": "string",
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_proposal": {
    "@type": "issue-credential/1.0/credential-preview",
    "attributes": [
      {
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "value": "martini"
      }
    ]
  },
  "issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_name": "preferences",
  "schema_version": "1.0",
  "trace": false
}
```

<h3 id="post__issue-credential_create-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[V10CredentialCreate](#schemav10credentialcreate)|false|none|

> Example responses

> 200 Response

```json
{
  "auto_issue": false,
  "auto_offer": false,
  "auto_remove": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "credential": {},
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_offer": {},
  "credential_offer_dict": {},
  "credential_proposal_dict": {},
  "credential_request": {},
  "credential_request_metadata": {},
  "error_msg": "credential definition identifier is not set in proposal",
  "initiator": "self",
  "parent_thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "raw_credential": {},
  "revoc_reg_id": "string",
  "revocation_id": "string",
  "role": "issuer",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "state": "credential_acked",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="post__issue-credential_create-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10CredentialExchange](#schemav10credentialexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__issue-credential_send

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "auto_remove": true,
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_proposal": {
    "@type": "issue-credential/1.0/credential-preview",
    "attributes": [
      {
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "value": "martini"
      }
    ]
  },
  "issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_name": "preferences",
  "schema_version": "1.0",
  "trace": false
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /issue-credential/send`

*Send holder a credential, automating entire flow*

> Body parameter

```json
{
  "auto_remove": true,
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_proposal": {
    "@type": "issue-credential/1.0/credential-preview",
    "attributes": [
      {
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "value": "martini"
      }
    ]
  },
  "issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_name": "preferences",
  "schema_version": "1.0",
  "trace": false
}
```

<h3 id="post__issue-credential_send-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[V10CredentialProposalRequestMand](#schemav10credentialproposalrequestmand)|false|none|

> Example responses

> 200 Response

```json
{
  "auto_issue": false,
  "auto_offer": false,
  "auto_remove": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "credential": {},
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_offer": {},
  "credential_offer_dict": {},
  "credential_proposal_dict": {},
  "credential_request": {},
  "credential_request_metadata": {},
  "error_msg": "credential definition identifier is not set in proposal",
  "initiator": "self",
  "parent_thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "raw_credential": {},
  "revoc_reg_id": "string",
  "revocation_id": "string",
  "role": "issuer",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "state": "credential_acked",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="post__issue-credential_send-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10CredentialExchange](#schemav10credentialexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__issue-credential_send-proposal

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-proposal \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-proposal HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "auto_remove": true,
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_proposal": {
    "@type": "issue-credential/1.0/credential-preview",
    "attributes": [
      {
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "value": "martini"
      }
    ]
  },
  "issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_name": "preferences",
  "schema_version": "1.0",
  "trace": false
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-proposal',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-proposal',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-proposal', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-proposal', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-proposal");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-proposal", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /issue-credential/send-proposal`

*Send issuer a credential proposal*

> Body parameter

```json
{
  "auto_remove": true,
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_proposal": {
    "@type": "issue-credential/1.0/credential-preview",
    "attributes": [
      {
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "value": "martini"
      }
    ]
  },
  "issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_name": "preferences",
  "schema_version": "1.0",
  "trace": false
}
```

<h3 id="post__issue-credential_send-proposal-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[V10CredentialProposalRequestOpt](#schemav10credentialproposalrequestopt)|false|none|

> Example responses

> 200 Response

```json
{
  "auto_issue": false,
  "auto_offer": false,
  "auto_remove": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "credential": {},
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_offer": {},
  "credential_offer_dict": {},
  "credential_proposal_dict": {},
  "credential_request": {},
  "credential_request_metadata": {},
  "error_msg": "credential definition identifier is not set in proposal",
  "initiator": "self",
  "parent_thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "raw_credential": {},
  "revoc_reg_id": "string",
  "revocation_id": "string",
  "role": "issuer",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "state": "credential_acked",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="post__issue-credential_send-proposal-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10CredentialExchange](#schemav10credentialexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__issue-credential_send-offer

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-offer \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-offer HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "auto_issue": true,
  "auto_remove": true,
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_preview": {
    "@type": "issue-credential/1.0/credential-preview",
    "attributes": [
      {
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "value": "martini"
      }
    ]
  },
  "trace": false
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-offer',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-offer',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-offer', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-offer', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-offer");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/send-offer", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /issue-credential/send-offer`

*Send holder a credential offer, independent of any proposal*

> Body parameter

```json
{
  "auto_issue": true,
  "auto_remove": true,
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_preview": {
    "@type": "issue-credential/1.0/credential-preview",
    "attributes": [
      {
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "value": "martini"
      }
    ]
  },
  "trace": false
}
```

<h3 id="post__issue-credential_send-offer-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[V10CredentialOfferRequest](#schemav10credentialofferrequest)|false|none|

> Example responses

> 200 Response

```json
{
  "auto_issue": false,
  "auto_offer": false,
  "auto_remove": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "credential": {},
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_offer": {},
  "credential_offer_dict": {},
  "credential_proposal_dict": {},
  "credential_request": {},
  "credential_request_metadata": {},
  "error_msg": "credential definition identifier is not set in proposal",
  "initiator": "self",
  "parent_thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "raw_credential": {},
  "revoc_reg_id": "string",
  "revocation_id": "string",
  "role": "issuer",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "state": "credential_acked",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="post__issue-credential_send-offer-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10CredentialExchange](#schemav10credentialexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__issue-credential_records_{cred_ex_id}_send-offer

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-offer \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-offer HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-offer',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-offer',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-offer', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-offer', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-offer");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-offer", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /issue-credential/records/{cred_ex_id}/send-offer`

*Send holder a credential offer in reference to a proposal with preview*

<h3 id="post__issue-credential_records_{cred_ex_id}_send-offer-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cred_ex_id|path|string|true|Credential exchange identifier|

> Example responses

> 200 Response

```json
{
  "auto_issue": false,
  "auto_offer": false,
  "auto_remove": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "credential": {},
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_offer": {},
  "credential_offer_dict": {},
  "credential_proposal_dict": {},
  "credential_request": {},
  "credential_request_metadata": {},
  "error_msg": "credential definition identifier is not set in proposal",
  "initiator": "self",
  "parent_thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "raw_credential": {},
  "revoc_reg_id": "string",
  "revocation_id": "string",
  "role": "issuer",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "state": "credential_acked",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="post__issue-credential_records_{cred_ex_id}_send-offer-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10CredentialExchange](#schemav10credentialexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__issue-credential_records_{cred_ex_id}_send-request

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-request \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-request HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-request',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-request',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-request', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-request', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-request");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/send-request", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /issue-credential/records/{cred_ex_id}/send-request`

*Send issuer a credential request*

<h3 id="post__issue-credential_records_{cred_ex_id}_send-request-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cred_ex_id|path|string|true|Credential exchange identifier|

> Example responses

> 200 Response

```json
{
  "auto_issue": false,
  "auto_offer": false,
  "auto_remove": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "credential": {},
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_offer": {},
  "credential_offer_dict": {},
  "credential_proposal_dict": {},
  "credential_request": {},
  "credential_request_metadata": {},
  "error_msg": "credential definition identifier is not set in proposal",
  "initiator": "self",
  "parent_thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "raw_credential": {},
  "revoc_reg_id": "string",
  "revocation_id": "string",
  "role": "issuer",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "state": "credential_acked",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="post__issue-credential_records_{cred_ex_id}_send-request-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10CredentialExchange](#schemav10credentialexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__issue-credential_records_{cred_ex_id}_issue

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/issue \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/issue HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "comment": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/issue',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/issue',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/issue', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/issue', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/issue");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/issue", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /issue-credential/records/{cred_ex_id}/issue`

*Send holder a credential*

> Body parameter

```json
{
  "comment": "string"
}
```

<h3 id="post__issue-credential_records_{cred_ex_id}_issue-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cred_ex_id|path|string|true|Credential exchange identifier|
|body|body|[V10CredentialIssueRequest](#schemav10credentialissuerequest)|false|none|

> Example responses

> 200 Response

```json
{
  "auto_issue": false,
  "auto_offer": false,
  "auto_remove": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "credential": {},
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_offer": {},
  "credential_offer_dict": {},
  "credential_proposal_dict": {},
  "credential_request": {},
  "credential_request_metadata": {},
  "error_msg": "credential definition identifier is not set in proposal",
  "initiator": "self",
  "parent_thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "raw_credential": {},
  "revoc_reg_id": "string",
  "revocation_id": "string",
  "role": "issuer",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "state": "credential_acked",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="post__issue-credential_records_{cred_ex_id}_issue-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10CredentialExchange](#schemav10credentialexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__issue-credential_records_{cred_ex_id}_store

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/store \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/store HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "credential_id": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/store',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/store',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/store', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/store', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/store");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/store", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /issue-credential/records/{cred_ex_id}/store`

*Store a received credential*

> Body parameter

```json
{
  "credential_id": "string"
}
```

<h3 id="post__issue-credential_records_{cred_ex_id}_store-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cred_ex_id|path|string|true|Credential exchange identifier|
|body|body|[V10CredentialStoreRequest](#schemav10credentialstorerequest)|false|none|

> Example responses

> 200 Response

```json
{
  "auto_issue": false,
  "auto_offer": false,
  "auto_remove": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "credential": {},
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_offer": {},
  "credential_offer_dict": {},
  "credential_proposal_dict": {},
  "credential_request": {},
  "credential_request_metadata": {},
  "error_msg": "credential definition identifier is not set in proposal",
  "initiator": "self",
  "parent_thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "raw_credential": {},
  "revoc_reg_id": "string",
  "revocation_id": "string",
  "role": "issuer",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "state": "credential_acked",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z"
}
```

<h3 id="post__issue-credential_records_{cred_ex_id}_store-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10CredentialExchange](#schemav10credentialexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__issue-credential_records_{cred_ex_id}_problem-report

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/problem-report \
  -H 'Content-Type: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/problem-report HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "explain_ltxt": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/problem-report',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/problem-report',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/problem-report', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/problem-report', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/problem-report");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/issue-credential/records/{cred_ex_id}/problem-report", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /issue-credential/records/{cred_ex_id}/problem-report`

*Send a problem report for credential exchange*

> Body parameter

```json
{
  "explain_ltxt": "string"
}
```

<h3 id="post__issue-credential_records_{cred_ex_id}_problem-report-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cred_ex_id|path|string|true|Credential exchange identifier|
|body|body|[V10CredentialProblemReportRequest](#schemav10credentialproblemreportrequest)|false|none|

<h3 id="post__issue-credential_records_{cred_ex_id}_problem-report-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-ledger">ledger</h1>

Interaction with ledger

<a href="https://hyperledger-indy.readthedocs.io/projects/plenum/en/latest/storage.html#ledger">Overview</a>

## post__ledger_register-nym

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/register-nym?did=WgWxqztrNooG92RXvxSTWv&verkey=H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/register-nym?did=WgWxqztrNooG92RXvxSTWv&verkey=H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/register-nym?did=WgWxqztrNooG92RXvxSTWv&verkey=H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/register-nym',
  params: {
  'did' => 'string',
'verkey' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/register-nym', params={
  'did': 'WgWxqztrNooG92RXvxSTWv',  'verkey': 'H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV'
}, headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/register-nym', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/register-nym?did=WgWxqztrNooG92RXvxSTWv&verkey=H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/register-nym", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /ledger/register-nym`

*Send a NYM registration to the ledger.*

<h3 id="post__ledger_register-nym-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|did|query|string|true|DID to register|
|verkey|query|string|true|Verification key|
|alias|query|string|false|Alias|
|role|query|string|false|Role|

#### Enumerated Values

|Parameter|Value|
|---|---|
|role|STEWARD|
|role|TRUSTEE|
|role|ENDORSER|
|role|NETWORK_MONITOR|
|role|reset|

<h3 id="post__ledger_register-nym-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__ledger_get-nym-role

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/get-nym-role?did=WgWxqztrNooG92RXvxSTWv \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/get-nym-role?did=WgWxqztrNooG92RXvxSTWv HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/get-nym-role?did=WgWxqztrNooG92RXvxSTWv',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/get-nym-role',
  params: {
  'did' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/get-nym-role', params={
  'did': 'WgWxqztrNooG92RXvxSTWv'
}, headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/get-nym-role', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/get-nym-role?did=WgWxqztrNooG92RXvxSTWv");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/get-nym-role", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /ledger/get-nym-role`

*Get the role from the NYM registration of a public DID.*

<h3 id="get__ledger_get-nym-role-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|did|query|string|true|DID of interest|

<h3 id="get__ledger_get-nym-role-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## patch__ledger_rotate-public-did-keypair

> Code samples

```shell
# You can also use wget
curl -X PATCH https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/rotate-public-did-keypair \
  -H 'Authorization: API_KEY'

```

```http
PATCH https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/rotate-public-did-keypair HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/rotate-public-did-keypair',
{
  method: 'PATCH',

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

result = RestClient.patch 'https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/rotate-public-did-keypair',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.patch('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/rotate-public-did-keypair', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/rotate-public-did-keypair', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/rotate-public-did-keypair");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/rotate-public-did-keypair", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /ledger/rotate-public-did-keypair`

*Rotate key pair for public DID.*

<h3 id="patch__ledger_rotate-public-did-keypair-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__ledger_did-verkey

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-verkey?did=WgWxqztrNooG92RXvxSTWv \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-verkey?did=WgWxqztrNooG92RXvxSTWv HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-verkey?did=WgWxqztrNooG92RXvxSTWv',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-verkey',
  params: {
  'did' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-verkey', params={
  'did': 'WgWxqztrNooG92RXvxSTWv'
}, headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-verkey', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-verkey?did=WgWxqztrNooG92RXvxSTWv");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-verkey", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /ledger/did-verkey`

*Get the verkey for a DID from the ledger.*

<h3 id="get__ledger_did-verkey-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|did|query|string|true|DID of interest|

<h3 id="get__ledger_did-verkey-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__ledger_did-endpoint

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-endpoint?did=WgWxqztrNooG92RXvxSTWv \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-endpoint?did=WgWxqztrNooG92RXvxSTWv HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-endpoint?did=WgWxqztrNooG92RXvxSTWv',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-endpoint',
  params: {
  'did' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-endpoint', params={
  'did': 'WgWxqztrNooG92RXvxSTWv'
}, headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-endpoint', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-endpoint?did=WgWxqztrNooG92RXvxSTWv");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/did-endpoint", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /ledger/did-endpoint`

*Get the endpoint for a DID from the ledger.*

<h3 id="get__ledger_did-endpoint-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|did|query|string|true|DID of interest|
|endpoint_type|query|string|false|Endpoint type of interest (default 'Endpoint')|

#### Enumerated Values

|Parameter|Value|
|---|---|
|endpoint_type|Endpoint|
|endpoint_type|Profile|
|endpoint_type|LinkedDomains|

<h3 id="get__ledger_did-endpoint-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__ledger_taa

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /ledger/taa`

*Fetch the current transaction author agreement, if any*

> Example responses

> 200 Response

```json
{
  "result": {
    "aml_record": {
      "aml": {
        "property1": "string",
        "property2": "string"
      },
      "amlContext": "string",
      "version": "string"
    },
    "taa_accepted": {
      "mechanism": "string",
      "time": 0
    },
    "taa_record": {
      "digest": "string",
      "text": "string",
      "version": "string"
    },
    "taa_required": true
  }
}
```

<h3 id="get__ledger_taa-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[TAAResult](#schemataaresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__ledger_taa_accept

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa/accept \
  -H 'Content-Type: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa/accept HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "mechanism": "string",
  "text": "string",
  "version": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa/accept',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa/accept',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa/accept', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa/accept', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa/accept");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/ledger/taa/accept", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /ledger/taa/accept`

*Accept the transaction author agreement*

> Body parameter

```json
{
  "mechanism": "string",
  "text": "string",
  "version": "string"
}
```

<h3 id="post__ledger_taa_accept-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[TAAAccept](#schemataaaccept)|false|none|

<h3 id="post__ledger_taa_accept-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-verifier">verifier</h1>

Data exchange and verification

<a href="https://github.com/hyperledger/aries-rfcs/tree/4fae574c03f9f1013db30bf2c0c676b1122f7149/features/0037-present-proof">Specification</a>

## get__present-proof_records

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /present-proof/records`

*Fetch all present-proof exchange records*

<h3 id="get__present-proof_records-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|connection_id|query|string(uuid)|false|Connection identifier|
|role|query|string|false|Role assigned in presentation exchange|
|state|query|string|false|Presentation exchange state|
|thread_id|query|string(uuid)|false|Thread identifier|

#### Enumerated Values

|Parameter|Value|
|---|---|
|role|prover|
|role|verifier|
|state|proposal_sent|
|state|proposal_received|
|state|request_sent|
|state|request_received|
|state|presentation_sent|
|state|presentation_received|
|state|verified|
|state|presentation_acked|

> Example responses

> 200 Response

```json
{
  "results": [
    {
      "auto_present": false,
      "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "created_at": "2021-02-04 19:10:56Z",
      "error_msg": "Invalid structure",
      "initiator": "self",
      "presentation": {},
      "presentation_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "presentation_proposal_dict": {},
      "presentation_request": {},
      "presentation_request_dict": {},
      "role": "prover",
      "state": "verified",
      "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "trace": true,
      "updated_at": "2021-02-04 19:10:56Z",
      "verified": "true"
    }
  ]
}
```

<h3 id="get__present-proof_records-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10PresentationExchangeList](#schemav10presentationexchangelist)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__present-proof_records_{pres_ex_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id} HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /present-proof/records/{pres_ex_id}`

*Fetch a single presentation exchange record*

<h3 id="get__present-proof_records_{pres_ex_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pres_ex_id|path|string|true|Presentation exchange identifier|

> Example responses

> 200 Response

```json
{
  "auto_present": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "Invalid structure",
  "initiator": "self",
  "presentation": {},
  "presentation_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "presentation_proposal_dict": {},
  "presentation_request": {},
  "presentation_request_dict": {},
  "role": "prover",
  "state": "verified",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z",
  "verified": "true"
}
```

<h3 id="get__present-proof_records_{pres_ex_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10PresentationExchange](#schemav10presentationexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## delete__present-proof_records_{pres_ex_id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id} \
  -H 'Authorization: API_KEY'

```

```http
DELETE https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id} HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}',
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

result = RestClient.delete 'https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.delete('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}");
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
    req, err := http.NewRequest("DELETE", "https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /present-proof/records/{pres_ex_id}`

*Remove an existing presentation exchange record*

<h3 id="delete__present-proof_records_{pres_ex_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pres_ex_id|path|string|true|Presentation exchange identifier|

<h3 id="delete__present-proof_records_{pres_ex_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__present-proof_records_{pres_ex_id}_credentials

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/credentials \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/credentials HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/credentials',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/credentials',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/credentials', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/credentials', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/credentials");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/credentials", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /present-proof/records/{pres_ex_id}/credentials`

*Fetch credentials for a presentation request from wallet*

<h3 id="get__present-proof_records_{pres_ex_id}_credentials-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pres_ex_id|path|string|true|Presentation exchange identifier|
|count|query|integer(int32)|false|Maximum number to retrieve|
|extra_query|query|string|false|(JSON) object mapping referents to extra WQL queries|
|referent|query|string|false|Proof request referents of interest, comma-separated|
|start|query|integer(int32)|false|Start index|

<h3 id="get__present-proof_records_{pres_ex_id}_credentials-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__present-proof_send-proposal

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-proposal \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-proposal HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "auto_present": true,
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "presentation_proposal": {
    "@type": "did:sov:BzCbsNYhMrjHiqZDTUASHg;spec/present-proof/1.0/presentation-preview",
    "attributes": [
      {
        "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "referent": "0",
        "value": "martini"
      }
    ],
    "predicates": [
      {
        "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
        "name": "high_score",
        "predicate": ">=",
        "threshold": 0
      }
    ]
  },
  "trace": false
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-proposal',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-proposal',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-proposal', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-proposal', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-proposal");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-proposal", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /present-proof/send-proposal`

*Sends a presentation proposal*

> Body parameter

```json
{
  "auto_present": true,
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "presentation_proposal": {
    "@type": "did:sov:BzCbsNYhMrjHiqZDTUASHg;spec/present-proof/1.0/presentation-preview",
    "attributes": [
      {
        "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "referent": "0",
        "value": "martini"
      }
    ],
    "predicates": [
      {
        "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
        "name": "high_score",
        "predicate": ">=",
        "threshold": 0
      }
    ]
  },
  "trace": false
}
```

<h3 id="post__present-proof_send-proposal-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[V10PresentationProposalRequest](#schemav10presentationproposalrequest)|false|none|

> Example responses

> 200 Response

```json
{
  "auto_present": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "Invalid structure",
  "initiator": "self",
  "presentation": {},
  "presentation_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "presentation_proposal_dict": {},
  "presentation_request": {},
  "presentation_request_dict": {},
  "role": "prover",
  "state": "verified",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z",
  "verified": "true"
}
```

<h3 id="post__present-proof_send-proposal-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10PresentationExchange](#schemav10presentationexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__present-proof_create-request

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/create-request \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/create-request HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "comment": "string",
  "proof_request": {
    "name": "Proof request",
    "non_revoked": {
      "from": 1612465856,
      "to": 1612465856
    },
    "nonce": "1234567890",
    "requested_attributes": {
      "property1": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      },
      "property2": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      }
    },
    "requested_predicates": {
      "property1": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      },
      "property2": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      }
    },
    "version": "1.0"
  },
  "trace": false
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/create-request',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/create-request',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/create-request', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/create-request', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/create-request");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/create-request", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /present-proof/create-request`

*
    Creates a presentation request not bound to any proposal or existing connection*

> Body parameter

```json
{
  "comment": "string",
  "proof_request": {
    "name": "Proof request",
    "non_revoked": {
      "from": 1612465856,
      "to": 1612465856
    },
    "nonce": "1234567890",
    "requested_attributes": {
      "property1": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      },
      "property2": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      }
    },
    "requested_predicates": {
      "property1": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      },
      "property2": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      }
    },
    "version": "1.0"
  },
  "trace": false
}
```

<h3 id="post__present-proof_create-request-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[V10PresentationCreateRequestRequest](#schemav10presentationcreaterequestrequest)|false|none|

> Example responses

> 200 Response

```json
{
  "auto_present": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "Invalid structure",
  "initiator": "self",
  "presentation": {},
  "presentation_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "presentation_proposal_dict": {},
  "presentation_request": {},
  "presentation_request_dict": {},
  "role": "prover",
  "state": "verified",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z",
  "verified": "true"
}
```

<h3 id="post__present-proof_create-request-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10PresentationExchange](#schemav10presentationexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__present-proof_send-request

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-request \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-request HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "proof_request": {
    "name": "Proof request",
    "non_revoked": {
      "from": 1612465856,
      "to": 1612465856
    },
    "nonce": "1234567890",
    "requested_attributes": {
      "property1": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      },
      "property2": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      }
    },
    "requested_predicates": {
      "property1": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      },
      "property2": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      }
    },
    "version": "1.0"
  },
  "trace": false
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-request',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-request',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-request', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-request', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-request");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/send-request", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /present-proof/send-request`

*Sends a free presentation request not bound to any proposal*

> Body parameter

```json
{
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "proof_request": {
    "name": "Proof request",
    "non_revoked": {
      "from": 1612465856,
      "to": 1612465856
    },
    "nonce": "1234567890",
    "requested_attributes": {
      "property1": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      },
      "property2": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      }
    },
    "requested_predicates": {
      "property1": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      },
      "property2": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      }
    },
    "version": "1.0"
  },
  "trace": false
}
```

<h3 id="post__present-proof_send-request-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[V10PresentationSendRequestRequest](#schemav10presentationsendrequestrequest)|false|none|

> Example responses

> 200 Response

```json
{
  "auto_present": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "Invalid structure",
  "initiator": "self",
  "presentation": {},
  "presentation_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "presentation_proposal_dict": {},
  "presentation_request": {},
  "presentation_request_dict": {},
  "role": "prover",
  "state": "verified",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z",
  "verified": "true"
}
```

<h3 id="post__present-proof_send-request-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10PresentationExchange](#schemav10presentationexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__present-proof_records_{pres_ex_id}_send-request

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-request \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-request HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "proof_request": {
    "name": "Proof request",
    "non_revoked": {
      "from": 1612465856,
      "to": 1612465856
    },
    "nonce": "1234567890",
    "requested_attributes": {
      "property1": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      },
      "property2": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      }
    },
    "requested_predicates": {
      "property1": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      },
      "property2": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      }
    },
    "version": "1.0"
  },
  "trace": false
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-request',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-request',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-request', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-request', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-request");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-request", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /present-proof/records/{pres_ex_id}/send-request`

*Sends a presentation request in reference to a proposal*

> Body parameter

```json
{
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "proof_request": {
    "name": "Proof request",
    "non_revoked": {
      "from": 1612465856,
      "to": 1612465856
    },
    "nonce": "1234567890",
    "requested_attributes": {
      "property1": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      },
      "property2": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      }
    },
    "requested_predicates": {
      "property1": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      },
      "property2": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      }
    },
    "version": "1.0"
  },
  "trace": false
}
```

<h3 id="post__present-proof_records_{pres_ex_id}_send-request-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pres_ex_id|path|string|true|Presentation exchange identifier|
|body|body|[V10PresentationSendRequestRequest](#schemav10presentationsendrequestrequest)|false|none|

> Example responses

> 200 Response

```json
{
  "auto_present": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "Invalid structure",
  "initiator": "self",
  "presentation": {},
  "presentation_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "presentation_proposal_dict": {},
  "presentation_request": {},
  "presentation_request_dict": {},
  "role": "prover",
  "state": "verified",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z",
  "verified": "true"
}
```

<h3 id="post__present-proof_records_{pres_ex_id}_send-request-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10PresentationExchange](#schemav10presentationexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__present-proof_records_{pres_ex_id}_send-presentation

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-presentation \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-presentation HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "requested_attributes": {
    "property1": {
      "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "revealed": true,
      "timestamp": 1612465856
    },
    "property2": {
      "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "revealed": true,
      "timestamp": 1612465856
    }
  },
  "requested_predicates": {
    "property1": {
      "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "timestamp": 1612465856
    },
    "property2": {
      "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "timestamp": 1612465856
    }
  },
  "self_attested_attributes": {
    "property1": "self_attested_value",
    "property2": "self_attested_value"
  },
  "trace": false
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-presentation',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-presentation',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-presentation', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-presentation', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-presentation");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/send-presentation", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /present-proof/records/{pres_ex_id}/send-presentation`

*Sends a proof presentation*

> Body parameter

```json
{
  "requested_attributes": {
    "property1": {
      "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "revealed": true,
      "timestamp": 1612465856
    },
    "property2": {
      "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "revealed": true,
      "timestamp": 1612465856
    }
  },
  "requested_predicates": {
    "property1": {
      "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "timestamp": 1612465856
    },
    "property2": {
      "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "timestamp": 1612465856
    }
  },
  "self_attested_attributes": {
    "property1": "self_attested_value",
    "property2": "self_attested_value"
  },
  "trace": false
}
```

<h3 id="post__present-proof_records_{pres_ex_id}_send-presentation-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pres_ex_id|path|string|true|Presentation exchange identifier|
|body|body|[V10PresentationRequest](#schemav10presentationrequest)|false|none|

> Example responses

> 200 Response

```json
{
  "auto_present": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "Invalid structure",
  "initiator": "self",
  "presentation": {},
  "presentation_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "presentation_proposal_dict": {},
  "presentation_request": {},
  "presentation_request_dict": {},
  "role": "prover",
  "state": "verified",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z",
  "verified": "true"
}
```

<h3 id="post__present-proof_records_{pres_ex_id}_send-presentation-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10PresentationExchange](#schemav10presentationexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__present-proof_records_{pres_ex_id}_verify-presentation

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/verify-presentation \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/verify-presentation HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/verify-presentation',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/verify-presentation',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/verify-presentation', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/verify-presentation', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/verify-presentation");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/present-proof/records/{pres_ex_id}/verify-presentation", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /present-proof/records/{pres_ex_id}/verify-presentation`

*Verify a received presentation*

<h3 id="post__present-proof_records_{pres_ex_id}_verify-presentation-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pres_ex_id|path|string|true|Presentation exchange identifier|

> Example responses

> 200 Response

```json
{
  "auto_present": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "Invalid structure",
  "initiator": "self",
  "presentation": {},
  "presentation_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "presentation_proposal_dict": {},
  "presentation_request": {},
  "presentation_request_dict": {},
  "role": "prover",
  "state": "verified",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z",
  "verified": "true"
}
```

<h3 id="post__present-proof_records_{pres_ex_id}_verify-presentation-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[V10PresentationExchange](#schemav10presentationexchange)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-revocation">revocation</h1>

Revocation registry management

<a href="https://github.com/hyperledger/indy-hipe/tree/master/text/0011-cred-revocation">Overview</a>

## post__revocation_revoke

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/revoke \
  -H 'Content-Type: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/revoke HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "cred_ex_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "cred_rev_id": "12345",
  "publish": true,
  "rev_reg_id": "WgWxqztrNooG92RXvxSTWv:4:WgWxqztrNooG92RXvxSTWv:3:CL:20:tag:CL_ACCUM:0"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/revoke',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/revoke',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/revoke', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/revoke', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/revoke");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/revoke", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /revocation/revoke`

*Revoke an issued credential*

> Body parameter

```json
{
  "cred_ex_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "cred_rev_id": "12345",
  "publish": true,
  "rev_reg_id": "WgWxqztrNooG92RXvxSTWv:4:WgWxqztrNooG92RXvxSTWv:3:CL:20:tag:CL_ACCUM:0"
}
```

<h3 id="post__revocation_revoke-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[RevokeRequest](#schemarevokerequest)|false|none|

<h3 id="post__revocation_revoke-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__revocation_publish-revocations

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/publish-revocations \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/publish-revocations HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "rrid2crid": {
    "property1": [
      "12345"
    ],
    "property2": [
      "12345"
    ]
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/publish-revocations',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/publish-revocations',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/publish-revocations', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/publish-revocations', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/publish-revocations");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/publish-revocations", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /revocation/publish-revocations`

*Publish pending revocations to ledger*

> Body parameter

```json
{
  "rrid2crid": {
    "property1": [
      "12345"
    ],
    "property2": [
      "12345"
    ]
  }
}
```

<h3 id="post__revocation_publish-revocations-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[PublishRevocations](#schemapublishrevocations)|false|none|

> Example responses

> 200 Response

```json
{
  "rrid2crid": {
    "property1": [
      "12345"
    ],
    "property2": [
      "12345"
    ]
  }
}
```

<h3 id="post__revocation_publish-revocations-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[PublishRevocations](#schemapublishrevocations)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__revocation_clear-pending-revocations

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/clear-pending-revocations \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/clear-pending-revocations HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "purge": {
    "property1": [
      "12345"
    ],
    "property2": [
      "12345"
    ]
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/clear-pending-revocations',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/clear-pending-revocations',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/clear-pending-revocations', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/clear-pending-revocations', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/clear-pending-revocations");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/clear-pending-revocations", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /revocation/clear-pending-revocations`

*Clear pending revocations*

> Body parameter

```json
{
  "purge": {
    "property1": [
      "12345"
    ],
    "property2": [
      "12345"
    ]
  }
}
```

<h3 id="post__revocation_clear-pending-revocations-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ClearPendingRevocationsRequest](#schemaclearpendingrevocationsrequest)|false|none|

> Example responses

> 200 Response

```json
{
  "rrid2crid": {
    "property1": [
      "12345"
    ],
    "property2": [
      "12345"
    ]
  }
}
```

<h3 id="post__revocation_clear-pending-revocations-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[PublishRevocations](#schemapublishrevocations)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__revocation_credential-record

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/credential-record \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/credential-record HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/credential-record',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/credential-record',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/credential-record', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/credential-record', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/credential-record");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/credential-record", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /revocation/credential-record`

*Get credential revocation status*

<h3 id="get__revocation_credential-record-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cred_ex_id|query|string|false|Credential exchange identifier|
|cred_rev_id|query|string|false|Credential revocation identifier|
|rev_reg_id|query|string|false|Revocation registry identifier|

> Example responses

> 200 Response

```json
{}
```

<h3 id="get__revocation_credential-record-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[CredRevRecordResult](#schemacredrevrecordresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__revocation_registries_created

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registries/created \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registries/created HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registries/created',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registries/created',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registries/created', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registries/created', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registries/created");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registries/created", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /revocation/registries/created`

*Search for matching revocation registries that current agent created*

<h3 id="get__revocation_registries_created-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cred_def_id|query|string|false|Credential definition identifier|
|state|query|string|false|Revocation registry state|

#### Enumerated Values

|Parameter|Value|
|---|---|
|state|init|
|state|generated|
|state|posted|
|state|active|
|state|full|

> Example responses

> 200 Response

```json
{
  "rev_reg_ids": [
    "WgWxqztrNooG92RXvxSTWv:4:WgWxqztrNooG92RXvxSTWv:3:CL:20:tag:CL_ACCUM:0"
  ]
}
```

<h3 id="get__revocation_registries_created-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[RevRegsCreated](#schemarevregscreated)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__revocation_registry_{rev_reg_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id} HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /revocation/registry/{rev_reg_id}`

*Get revocation registry by revocation registry id*

<h3 id="get__revocation_registry_{rev_reg_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|rev_reg_id|path|string|true|Revocation Registry identifier|

> Example responses

> 200 Response

```json
{}
```

<h3 id="get__revocation_registry_{rev_reg_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[RevRegResult](#schemarevregresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## patch__revocation_registry_{rev_reg_id}

> Code samples

```shell
# You can also use wget
curl -X PATCH https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
PATCH https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id} HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "tails_public_uri": "http://192.168.56.133:6543/revocation/registry/WgWxqztrNooG92RXvxSTWv:4:WgWxqztrNooG92RXvxSTWv:3:CL:20:tag:CL_ACCUM:0/tails-file"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}',
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

result = RestClient.patch 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}',
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

r = requests.patch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}");
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
    req, err := http.NewRequest("PATCH", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /revocation/registry/{rev_reg_id}`

*Update revocation registry with new public URI to its tails file*

> Body parameter

```json
{
  "tails_public_uri": "http://192.168.56.133:6543/revocation/registry/WgWxqztrNooG92RXvxSTWv:4:WgWxqztrNooG92RXvxSTWv:3:CL:20:tag:CL_ACCUM:0/tails-file"
}
```

<h3 id="patch__revocation_registry_{rev_reg_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|rev_reg_id|path|string|true|Revocation Registry identifier|
|body|body|[RevRegUpdateTailsFileUri](#schemarevregupdatetailsfileuri)|false|none|

> Example responses

> 200 Response

```json
{}
```

<h3 id="patch__revocation_registry_{rev_reg_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[RevRegResult](#schemarevregresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__revocation_active-registry_{cred_def_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/active-registry/{cred_def_id} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/active-registry/{cred_def_id} HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/active-registry/{cred_def_id}',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/active-registry/{cred_def_id}',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/active-registry/{cred_def_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/active-registry/{cred_def_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/active-registry/{cred_def_id}");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/active-registry/{cred_def_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /revocation/active-registry/{cred_def_id}`

*Get current active revocation registry by credential definition id*

<h3 id="get__revocation_active-registry_{cred_def_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cred_def_id|path|string|true|Credential definition identifier|

> Example responses

> 200 Response

```json
{}
```

<h3 id="get__revocation_active-registry_{cred_def_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[RevRegResult](#schemarevregresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__revocation_registry_{rev_reg_id}_issued

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/issued \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/issued HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/issued',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/issued',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/issued', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/issued', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/issued");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/issued", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /revocation/registry/{rev_reg_id}/issued`

*Get number of credentials issued against revocation registry*

<h3 id="get__revocation_registry_{rev_reg_id}_issued-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|rev_reg_id|path|string|true|Revocation Registry identifier|

> Example responses

> 200 Response

```json
{
  "result": 0
}
```

<h3 id="get__revocation_registry_{rev_reg_id}_issued-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[RevRegIssuedResult](#schemarevregissuedresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__revocation_create-registry

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/create-registry \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/create-registry HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "max_cred_num": 1000
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/create-registry',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/create-registry',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/create-registry', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/create-registry', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/create-registry");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/create-registry", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /revocation/create-registry`

*Creates a new revocation registry*

> Body parameter

```json
{
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "max_cred_num": 1000
}
```

<h3 id="post__revocation_create-registry-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[RevRegCreateRequest](#schemarevregcreaterequest)|false|none|

> Example responses

> 200 Response

```json
{}
```

<h3 id="post__revocation_create-registry-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[RevRegResult](#schemarevregresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__revocation_registry_{rev_reg_id}_definition

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/definition \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/definition HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/definition',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/definition',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/definition', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/definition', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/definition");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/definition", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /revocation/registry/{rev_reg_id}/definition`

*Send revocation registry definition to ledger*

<h3 id="post__revocation_registry_{rev_reg_id}_definition-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|rev_reg_id|path|string|true|Revocation Registry identifier|

> Example responses

> 200 Response

```json
{}
```

<h3 id="post__revocation_registry_{rev_reg_id}_definition-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[RevRegResult](#schemarevregresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__revocation_registry_{rev_reg_id}_entry

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/entry \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/entry HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/entry',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/entry',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/entry', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/entry', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/entry");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/entry", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /revocation/registry/{rev_reg_id}/entry`

*Send revocation registry entry to ledger*

<h3 id="post__revocation_registry_{rev_reg_id}_entry-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|rev_reg_id|path|string|true|Revocation Registry identifier|

> Example responses

> 200 Response

```json
{}
```

<h3 id="post__revocation_registry_{rev_reg_id}_entry-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[RevRegResult](#schemarevregresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## put__revocation_registry_{rev_reg_id}_tails-file

> Code samples

```shell
# You can also use wget
curl -X PUT https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file \
  -H 'Authorization: API_KEY'

```

```http
PUT https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file',
{
  method: 'PUT',

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

result = RestClient.put 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.put('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PUT','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PUT /revocation/registry/{rev_reg_id}/tails-file`

*Upload local tails file to server*

<h3 id="put__revocation_registry_{rev_reg_id}_tails-file-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|rev_reg_id|path|string|true|Revocation Registry identifier|

<h3 id="put__revocation_registry_{rev_reg_id}_tails-file-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__revocation_registry_{rev_reg_id}_tails-file

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file \
  -H 'Accept: application/octet-stream' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/octet-stream

```

```javascript

const headers = {
  'Accept':'application/octet-stream',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file',
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
  'Accept' => 'application/octet-stream',
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/octet-stream',
  'Authorization': 'API_KEY'
}

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/octet-stream',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file");
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
        "Accept": []string{"application/octet-stream"},
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/tails-file", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /revocation/registry/{rev_reg_id}/tails-file`

*Download tails file*

<h3 id="get__revocation_registry_{rev_reg_id}_tails-file-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|rev_reg_id|path|string|true|Revocation Registry identifier|

> Example responses

> 200 Response

<h3 id="get__revocation_registry_{rev_reg_id}_tails-file-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|tails file|string|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## patch__revocation_registry_{rev_reg_id}_set-state

> Code samples

```shell
# You can also use wget
curl -X PATCH https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/set-state?state=init \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
PATCH https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/set-state?state=init HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/set-state?state=init',
{
  method: 'PATCH',

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

result = RestClient.patch 'https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/set-state',
  params: {
  'state' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.patch('https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/set-state', params={
  'state': 'init'
}, headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/set-state', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/set-state?state=init");
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
        "Accept": []string{"application/json"},
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://cloudagent.igrant.io/v1/{orgId}/admin/revocation/registry/{rev_reg_id}/set-state", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /revocation/registry/{rev_reg_id}/set-state`

*Set revocation registry state manually*

<h3 id="patch__revocation_registry_{rev_reg_id}_set-state-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|rev_reg_id|path|string|true|Revocation Registry identifier|
|state|query|string|true|Revocation registry state to set|

#### Enumerated Values

|Parameter|Value|
|---|---|
|state|init|
|state|generated|
|state|posted|
|state|active|
|state|full|

> Example responses

> 200 Response

```json
{}
```

<h3 id="patch__revocation_registry_{rev_reg_id}_set-state-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[RevRegResult](#schemarevregresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-schema">schema</h1>

Schema operations

<a href="https://github.com/hyperledger/indy-node/blob/master/design/anoncreds.md#schema">Specification</a>

## post__schemas

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/schemas \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/schemas HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "attributes": [
    "score"
  ],
  "schema_name": "prefs",
  "schema_version": "1.0"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/schemas',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/schemas',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/schemas', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/schemas', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/schemas");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/schemas", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /schemas`

*Sends a schema to the ledger*

> Body parameter

```json
{
  "attributes": [
    "score"
  ],
  "schema_name": "prefs",
  "schema_version": "1.0"
}
```

<h3 id="post__schemas-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SchemaSendRequest](#schemaschemasendrequest)|false|none|

> Example responses

> 200 Response

```json
{
  "schema": {},
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0"
}
```

<h3 id="post__schemas-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[SchemaSendResults](#schemaschemasendresults)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__schemas_created

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/created \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/created HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/created',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/created',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/created', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/created', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/created");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/created", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /schemas/created`

*Search for matching schema that agent originated*

<h3 id="get__schemas_created-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|schema_id|query|string|false|Schema identifier|
|schema_issuer_did|query|string|false|Schema issuer DID|
|schema_name|query|string|false|Schema name|
|schema_version|query|string|false|Schema version|

> Example responses

> 200 Response

```json
{
  "schema_ids": [
    "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0"
  ]
}
```

<h3 id="get__schemas_created-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[SchemasCreatedResults](#schemaschemascreatedresults)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__schemas_{schema_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/{schema_id} \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/{schema_id} HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/{schema_id}',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/{schema_id}',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/{schema_id}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/{schema_id}', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/{schema_id}");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/schemas/{schema_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /schemas/{schema_id}`

*Gets a schema from the ledger*

<h3 id="get__schemas_{schema_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|schema_id|path|string|true|Schema identifier|

> Example responses

> 200 Response

```json
{
  "schema": {
    "attrNames": [
      "score"
    ],
    "id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
    "name": "schema_name",
    "seqNo": 10,
    "ver": "1.0",
    "version": "1.0"
  }
}
```

<h3 id="get__schemas_{schema_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[SchemaGetResults](#schemaschemagetresults)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-server">server</h1>

Feature discovery

<a href="https://github.com/hyperledger/aries-rfcs/tree/9b7ab9814f2e7d1108f74aca6f3d2e5d62899473/features/0031-discover-features">Specification</a>

## get__plugins

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/plugins \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/plugins HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/plugins',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/plugins',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/plugins', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/plugins', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/plugins");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/plugins", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /plugins`

*Fetch the list of loaded plugins*

> Example responses

> 200 Response

```json
{
  "result": [
    "string"
  ]
}
```

<h3 id="get__plugins-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[AdminModules](#schemaadminmodules)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__status

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/status \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/status HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/status',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/status',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/status', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/status', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/status");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/status", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /status`

*Fetch the server status*

> Example responses

> 200 Response

```json
{}
```

<h3 id="get__status-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[AdminStatus](#schemaadminstatus)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__status_reset

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/status/reset \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/status/reset HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/status/reset',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/status/reset',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/status/reset', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/status/reset', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/status/reset");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/status/reset", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /status/reset`

*Reset statistics*

> Example responses

> 200 Response

```json
{}
```

<h3 id="post__status_reset-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[AdminStatus](#schemaadminstatus)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__status_live

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/status/live \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/status/live HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/status/live',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/status/live',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/status/live', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/status/live', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/status/live");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/status/live", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /status/live`

*Liveliness check*

> Example responses

> 200 Response

```json
{
  "alive": true
}
```

<h3 id="get__status_live-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[AdminStatusLiveliness](#schemaadminstatusliveliness)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__status_ready

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/status/ready \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/status/ready HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/status/ready',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/status/ready',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/status/ready', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/status/ready', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/status/ready");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/status/ready", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /status/ready`

*Readiness check*

> Example responses

> 200 Response

```json
{
  "ready": true
}
```

<h3 id="get__status_ready-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[AdminStatusReadiness](#schemaadminstatusreadiness)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__shutdown

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/shutdown \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/shutdown HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/shutdown',
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
  'Authorization' => 'API_KEY'
}

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/shutdown',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/shutdown', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/shutdown', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/shutdown");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/shutdown", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /shutdown`

*Shut down server*

<h3 id="get__shutdown-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__features

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/features \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/features HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/features',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/features',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/features', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/features', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/features");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/features", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /features`

*Query supported features*

<h3 id="get__features-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|query|query|string|false|Query|

> Example responses

> 200 Response

```json
{
  "results": {
    "property1": {},
    "property2": {}
  }
}
```

<h3 id="get__features-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[QueryResult](#schemaqueryresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-trustping">trustping</h1>

Trust-ping over connection

<a href="https://github.com/hyperledger/aries-rfcs/tree/527849ec3aa2a8fd47a7bb6c57f918ff8bcb5e8c/features/0048-trust-ping">Specification</a>

## post__connections_{conn_id}_send-ping

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-ping \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-ping HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "comment": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-ping',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-ping',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-ping', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-ping', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-ping");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/connections/{conn_id}/send-ping", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /connections/{conn_id}/send-ping`

*Send a trust ping to a connection*

> Body parameter

```json
{
  "comment": "string"
}
```

<h3 id="post__connections_{conn_id}_send-ping-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|conn_id|path|string|true|Connection identifier|
|body|body|[PingRequest](#schemapingrequest)|false|none|

> Example responses

> 200 Response

```json
{
  "thread_id": "string"
}
```

<h3 id="post__connections_{conn_id}_send-ping-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[PingRequestResponse](#schemapingrequestresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

<h1 id="introduction-to-aries-cloudagent-apis-wallet">wallet</h1>

DID and tag policy management

<a href="https://github.com/hyperledger/indy-sdk/tree/master/docs/design/003-wallet-storage">Design</a>

## get__wallet_did

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /wallet/did`

*List wallet DIDs*

<h3 id="get__wallet_did-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|did|query|string|false|DID of interest|
|posture|query|string|false|Whether DID is current public DID, posted to ledger but current public DID, or local to the wallet|
|verkey|query|string|false|Verification key of interest|

#### Enumerated Values

|Parameter|Value|
|---|---|
|posture|public|
|posture|posted|
|posture|wallet_only|

> Example responses

> 200 Response

```json
{
  "results": [
    {
      "did": "WgWxqztrNooG92RXvxSTWv",
      "posture": "wallet_only",
      "verkey": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
    }
  ]
}
```

<h3 id="get__wallet_did-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[DIDList](#schemadidlist)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__wallet_did_create

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/create \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/create HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/create',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/create',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/create', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/create', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/create");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/create", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /wallet/did/create`

*Create a local DID*

> Example responses

> 200 Response

```json
{
  "result": {
    "did": "WgWxqztrNooG92RXvxSTWv",
    "posture": "wallet_only",
    "verkey": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  }
}
```

<h3 id="post__wallet_did_create-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[DIDResult](#schemadidresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__wallet_did_public

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public',
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

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /wallet/did/public`

*Fetch the current public DID*

> Example responses

> 200 Response

```json
{
  "result": {
    "did": "WgWxqztrNooG92RXvxSTWv",
    "posture": "wallet_only",
    "verkey": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  }
}
```

<h3 id="get__wallet_did_public-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[DIDResult](#schemadidresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__wallet_did_public

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public?did=WgWxqztrNooG92RXvxSTWv \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public?did=WgWxqztrNooG92RXvxSTWv HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public?did=WgWxqztrNooG92RXvxSTWv',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public',
  params: {
  'did' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public', params={
  'did': 'WgWxqztrNooG92RXvxSTWv'
}, headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public?did=WgWxqztrNooG92RXvxSTWv");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/public", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /wallet/did/public`

*Assign the current public DID*

<h3 id="post__wallet_did_public-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|did|query|string|true|DID of interest|

> Example responses

> 200 Response

```json
{
  "result": {
    "did": "WgWxqztrNooG92RXvxSTWv",
    "posture": "wallet_only",
    "verkey": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  }
}
```

<h3 id="post__wallet_did_public-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[DIDResult](#schemadidresult)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## post__wallet_set-did-endpoint

> Code samples

```shell
# You can also use wget
curl -X POST https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/set-did-endpoint \
  -H 'Content-Type: application/json' \
  -H 'Authorization: API_KEY'

```

```http
POST https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/set-did-endpoint HTTP/1.1
Host: cloudagent.igrant.io
Content-Type: application/json

```

```javascript
const inputBody = '{
  "did": "WgWxqztrNooG92RXvxSTWv",
  "endpoint": "https://myhost:8021",
  "endpoint_type": "Endpoint"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/set-did-endpoint',
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

result = RestClient.post 'https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/set-did-endpoint',
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

r = requests.post('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/set-did-endpoint', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/set-did-endpoint', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/set-did-endpoint");
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
    req, err := http.NewRequest("POST", "https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/set-did-endpoint", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /wallet/set-did-endpoint`

*Update endpoint in wallet and on ledger if posted to it*

> Body parameter

```json
{
  "did": "WgWxqztrNooG92RXvxSTWv",
  "endpoint": "https://myhost:8021",
  "endpoint_type": "Endpoint"
}
```

<h3 id="post__wallet_set-did-endpoint-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[DIDEndpointWithType](#schemadidendpointwithtype)|false|none|

<h3 id="post__wallet_set-did-endpoint-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## get__wallet_get-did-endpoint

> Code samples

```shell
# You can also use wget
curl -X GET https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/get-did-endpoint?did=WgWxqztrNooG92RXvxSTWv \
  -H 'Accept: application/json' \
  -H 'Authorization: API_KEY'

```

```http
GET https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/get-did-endpoint?did=WgWxqztrNooG92RXvxSTWv HTTP/1.1
Host: cloudagent.igrant.io
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/get-did-endpoint?did=WgWxqztrNooG92RXvxSTWv',
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

result = RestClient.get 'https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/get-did-endpoint',
  params: {
  'did' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'API_KEY'
}

r = requests.get('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/get-did-endpoint', params={
  'did': 'WgWxqztrNooG92RXvxSTWv'
}, headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/get-did-endpoint', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/get-did-endpoint?did=WgWxqztrNooG92RXvxSTWv");
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
    req, err := http.NewRequest("GET", "https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/get-did-endpoint", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /wallet/get-did-endpoint`

*Query DID endpoint in wallet*

<h3 id="get__wallet_get-did-endpoint-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|did|query|string|true|DID of interest|

> Example responses

> 200 Response

```json
{
  "did": "WgWxqztrNooG92RXvxSTWv",
  "endpoint": "https://myhost:8021"
}
```

<h3 id="get__wallet_get-did-endpoint-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[DIDEndpoint](#schemadidendpoint)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

## patch__wallet_did_local_rotate-keypair

> Code samples

```shell
# You can also use wget
curl -X PATCH https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/local/rotate-keypair?did=WgWxqztrNooG92RXvxSTWv \
  -H 'Authorization: API_KEY'

```

```http
PATCH https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/local/rotate-keypair?did=WgWxqztrNooG92RXvxSTWv HTTP/1.1
Host: cloudagent.igrant.io

```

```javascript

const headers = {
  'Authorization':'API_KEY'
};

fetch('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/local/rotate-keypair?did=WgWxqztrNooG92RXvxSTWv',
{
  method: 'PATCH',

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

result = RestClient.patch 'https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/local/rotate-keypair',
  params: {
  'did' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Authorization': 'API_KEY'
}

r = requests.patch('https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/local/rotate-keypair', params={
  'did': 'WgWxqztrNooG92RXvxSTWv'
}, headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/local/rotate-keypair', array(
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
URL obj = new URL("https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/local/rotate-keypair?did=WgWxqztrNooG92RXvxSTWv");
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
        "Authorization": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://cloudagent.igrant.io/v1/{orgId}/admin/wallet/did/local/rotate-keypair", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /wallet/did/local/rotate-keypair`

*Rotate keypair for a DID not posted to the ledger*

<h3 id="patch__wallet_did_local_rotate-keypair-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|did|query|string|true|DID of interest|

<h3 id="patch__wallet_did_local_rotate-keypair-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
ApiKeyHeader
</aside>

# Schemas

<h2 id="tocS_AMLRecord">AMLRecord</h2>
<!-- backwards compatibility -->
<a id="schemaamlrecord"></a>
<a id="schema_AMLRecord"></a>
<a id="tocSamlrecord"></a>
<a id="tocsamlrecord"></a>

```json
{
  "aml": {
    "property1": "string",
    "property2": "string"
  },
  "amlContext": "string",
  "version": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|aml|object|false|none|none|
|» **additionalProperties**|string|false|none|none|
|amlContext|string|false|none|none|
|version|string|false|none|none|

<h2 id="tocS_AdminModules">AdminModules</h2>
<!-- backwards compatibility -->
<a id="schemaadminmodules"></a>
<a id="schema_AdminModules"></a>
<a id="tocSadminmodules"></a>
<a id="tocsadminmodules"></a>

```json
{
  "result": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|result|[string]|false|none|List of admin modules|

<h2 id="tocS_AdminStatus">AdminStatus</h2>
<!-- backwards compatibility -->
<a id="schemaadminstatus"></a>
<a id="schema_AdminStatus"></a>
<a id="tocSadminstatus"></a>
<a id="tocsadminstatus"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_AdminStatusLiveliness">AdminStatusLiveliness</h2>
<!-- backwards compatibility -->
<a id="schemaadminstatusliveliness"></a>
<a id="schema_AdminStatusLiveliness"></a>
<a id="tocSadminstatusliveliness"></a>
<a id="tocsadminstatusliveliness"></a>

```json
{
  "alive": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|alive|boolean|false|none|Liveliness status|

<h2 id="tocS_AdminStatusReadiness">AdminStatusReadiness</h2>
<!-- backwards compatibility -->
<a id="schemaadminstatusreadiness"></a>
<a id="schema_AdminStatusReadiness"></a>
<a id="tocSadminstatusreadiness"></a>
<a id="tocsadminstatusreadiness"></a>

```json
{
  "ready": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ready|boolean|false|none|Readiness status|

<h2 id="tocS_AttributeMimeTypesResult">AttributeMimeTypesResult</h2>
<!-- backwards compatibility -->
<a id="schemaattributemimetypesresult"></a>
<a id="schema_AttributeMimeTypesResult"></a>
<a id="tocSattributemimetypesresult"></a>
<a id="tocsattributemimetypesresult"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_ClearPendingRevocationsRequest">ClearPendingRevocationsRequest</h2>
<!-- backwards compatibility -->
<a id="schemaclearpendingrevocationsrequest"></a>
<a id="schema_ClearPendingRevocationsRequest"></a>
<a id="tocSclearpendingrevocationsrequest"></a>
<a id="tocsclearpendingrevocationsrequest"></a>

```json
{
  "purge": {
    "property1": [
      "12345"
    ],
    "property2": [
      "12345"
    ]
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|purge|object|false|none|Credential revocation ids by revocation registry id: omit for all, specify null or empty list for all pending per revocation registry|
|» **additionalProperties**|[string]|false|none|none|

<h2 id="tocS_ConnectionInvitation">ConnectionInvitation</h2>
<!-- backwards compatibility -->
<a id="schemaconnectioninvitation"></a>
<a id="schema_ConnectionInvitation"></a>
<a id="tocSconnectioninvitation"></a>
<a id="tocsconnectioninvitation"></a>

```json
{
  "@id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "@type": "https://didcomm.org/my-family/1.0/my-message-type",
  "did": "WgWxqztrNooG92RXvxSTWv",
  "image_url": "http://192.168.56.101/img/logo.jpg",
  "label": "Bob",
  "recipientKeys": [
    "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  ],
  "routingKeys": [
    "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  ],
  "serviceEndpoint": "http://192.168.56.101:8020"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|@id|string|false|none|Message identifier|
|@type|string|false|read-only|Message type|
|did|string|false|none|DID for connection invitation|
|image_url|string(url)¦null|false|none|Optional image URL for connection invitation|
|label|string|false|none|Optional label for connection|
|recipientKeys|[string]|false|none|List of recipient keys|
|routingKeys|[string]|false|none|List of routing keys|
|serviceEndpoint|string|false|none|Service endpoint at which to reach this agent|

<h2 id="tocS_ConnectionList">ConnectionList</h2>
<!-- backwards compatibility -->
<a id="schemaconnectionlist"></a>
<a id="schema_ConnectionList"></a>
<a id="tocSconnectionlist"></a>
<a id="tocsconnectionlist"></a>

```json
{
  "results": [
    {
      "accept": "auto",
      "alias": "Bob, providing quotes",
      "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "created_at": "2021-02-04 19:10:56Z",
      "error_msg": "No DIDDoc provided; cannot connect to public DID",
      "inbound_connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "initiator": "self",
      "invitation_key": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV",
      "invitation_mode": "once",
      "my_did": "WgWxqztrNooG92RXvxSTWv",
      "request_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "routing_state": "active",
      "state": "active",
      "their_did": "WgWxqztrNooG92RXvxSTWv",
      "their_label": "Bob",
      "their_role": "Point of contact",
      "updated_at": "2021-02-04 19:10:56Z"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|results|[[ConnectionRecord](#schemaconnectionrecord)]|false|none|List of connection records|

<h2 id="tocS_ConnectionRecord">ConnectionRecord</h2>
<!-- backwards compatibility -->
<a id="schemaconnectionrecord"></a>
<a id="schema_ConnectionRecord"></a>
<a id="tocSconnectionrecord"></a>
<a id="tocsconnectionrecord"></a>

```json
{
  "accept": "auto",
  "alias": "Bob, providing quotes",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "No DIDDoc provided; cannot connect to public DID",
  "inbound_connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "initiator": "self",
  "invitation_key": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV",
  "invitation_mode": "once",
  "my_did": "WgWxqztrNooG92RXvxSTWv",
  "request_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "routing_state": "active",
  "state": "active",
  "their_did": "WgWxqztrNooG92RXvxSTWv",
  "their_label": "Bob",
  "their_role": "Point of contact",
  "updated_at": "2021-02-04 19:10:56Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|accept|string|false|none|Connection acceptance: manual or auto|
|alias|string|false|none|Optional alias to apply to connection for later use|
|connection_id|string|false|none|Connection identifier|
|created_at|string|false|none|Time of record creation|
|error_msg|string|false|none|Error message|
|inbound_connection_id|string|false|none|Inbound routing connection id to use|
|initiator|string|false|none|Connection initiator: self, external, or multiuse|
|invitation_key|string|false|none|Public key for connection|
|invitation_mode|string|false|none|Invitation mode: once, multi, or static|
|my_did|string|false|none|Our DID for connection|
|request_id|string|false|none|Connection request identifier|
|routing_state|string|false|none|Routing state of connection|
|state|string|false|none|Current record state|
|their_did|string|false|none|Their DID for connection|
|their_label|string|false|none|Their label for connection|
|their_role|string|false|none|Their assigned role for connection|
|updated_at|string|false|none|Time of last record update|

#### Enumerated Values

|Property|Value|
|---|---|
|accept|manual|
|accept|auto|
|initiator|self|
|initiator|external|
|initiator|multiuse|
|invitation_mode|once|
|invitation_mode|multi|
|invitation_mode|static|

<h2 id="tocS_ConnectionStaticRequest">ConnectionStaticRequest</h2>
<!-- backwards compatibility -->
<a id="schemaconnectionstaticrequest"></a>
<a id="schema_ConnectionStaticRequest"></a>
<a id="tocSconnectionstaticrequest"></a>
<a id="tocsconnectionstaticrequest"></a>

```json
{
  "alias": "string",
  "my_did": "WgWxqztrNooG92RXvxSTWv",
  "my_seed": "string",
  "their_did": "WgWxqztrNooG92RXvxSTWv",
  "their_endpoint": "https://myhost:8021",
  "their_label": "string",
  "their_role": "Point of contact",
  "their_seed": "string",
  "their_verkey": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|alias|string|false|none|Alias to assign to this connection|
|my_did|string|false|none|Local DID|
|my_seed|string|false|none|Seed to use for the local DID|
|their_did|string|false|none|Remote DID|
|their_endpoint|string|false|none|URL endpoint for the other party|
|their_label|string|false|none|Label to assign to this connection|
|their_role|string|false|none|Role to assign to this connection|
|their_seed|string|false|none|Seed to use for the remote DID|
|their_verkey|string|false|none|Remote verification key|

<h2 id="tocS_ConnectionStaticResult">ConnectionStaticResult</h2>
<!-- backwards compatibility -->
<a id="schemaconnectionstaticresult"></a>
<a id="schema_ConnectionStaticResult"></a>
<a id="tocSconnectionstaticresult"></a>
<a id="tocsconnectionstaticresult"></a>

```json
{
  "mv_verkey": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV",
  "my_did": "WgWxqztrNooG92RXvxSTWv",
  "my_endpoint": "https://myhost:8021",
  "record": {
    "accept": "auto",
    "alias": "Bob, providing quotes",
    "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "created_at": "2021-02-04 19:10:56Z",
    "error_msg": "No DIDDoc provided; cannot connect to public DID",
    "inbound_connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "initiator": "self",
    "invitation_key": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV",
    "invitation_mode": "once",
    "my_did": "WgWxqztrNooG92RXvxSTWv",
    "request_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "routing_state": "active",
    "state": "active",
    "their_did": "WgWxqztrNooG92RXvxSTWv",
    "their_label": "Bob",
    "their_role": "Point of contact",
    "updated_at": "2021-02-04 19:10:56Z"
  },
  "their_did": "WgWxqztrNooG92RXvxSTWv",
  "their_verkey": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|mv_verkey|string|true|none|My verification key|
|my_did|string|true|none|Local DID|
|my_endpoint|string|true|none|My URL endpoint|
|record|[ConnectionRecord](#schemaconnectionrecord)|true|none|none|
|their_did|string|true|none|Remote DID|
|their_verkey|string|true|none|Remote verification key|

<h2 id="tocS_CredAttrSpec">CredAttrSpec</h2>
<!-- backwards compatibility -->
<a id="schemacredattrspec"></a>
<a id="schema_CredAttrSpec"></a>
<a id="tocScredattrspec"></a>
<a id="tocscredattrspec"></a>

```json
{
  "mime-type": "image/jpeg",
  "name": "favourite_drink",
  "value": "martini"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|mime-type|string¦null|false|none|MIME type: omit for (null) default|
|name|string|true|none|Attribute name|
|value|string|true|none|Attribute value: base64-encode if MIME type is present|

<h2 id="tocS_CredBrief">CredBrief</h2>
<!-- backwards compatibility -->
<a id="schemacredbrief"></a>
<a id="schema_CredBrief"></a>
<a id="tocScredbrief"></a>
<a id="tocscredbrief"></a>

```json
{
  "attrs": {
    "property1": "string",
    "property2": "string"
  },
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "cred_rev_id": "12345",
  "referent": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "rev_reg_id": "WgWxqztrNooG92RXvxSTWv:4:WgWxqztrNooG92RXvxSTWv:3:CL:20:tag:CL_ACCUM:0",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|attrs|object|false|none|Attribute names mapped to their raw values|
|» **additionalProperties**|string|false|none|Attribute value|
|cred_def_id|string|false|none|Credential definition identifier|
|cred_rev_id|string|false|none|Credential revocation identifier|
|referent|string|false|none|Credential referent|
|rev_reg_id|string|false|none|Revocation registry identifier|
|schema_id|string|false|none|Schema identifier|

<h2 id="tocS_CredBriefList">CredBriefList</h2>
<!-- backwards compatibility -->
<a id="schemacredbrieflist"></a>
<a id="schema_CredBriefList"></a>
<a id="tocScredbrieflist"></a>
<a id="tocscredbrieflist"></a>

```json
{
  "results": [
    {
      "attrs": {
        "property1": "string",
        "property2": "string"
      },
      "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
      "cred_rev_id": "12345",
      "referent": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "rev_reg_id": "WgWxqztrNooG92RXvxSTWv:4:WgWxqztrNooG92RXvxSTWv:3:CL:20:tag:CL_ACCUM:0",
      "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|results|[[CredBrief](#schemacredbrief)]|false|none|none|

<h2 id="tocS_CredRevRecordResult">CredRevRecordResult</h2>
<!-- backwards compatibility -->
<a id="schemacredrevrecordresult"></a>
<a id="schema_CredRevRecordResult"></a>
<a id="tocScredrevrecordresult"></a>
<a id="tocscredrevrecordresult"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_CredRevokedResult">CredRevokedResult</h2>
<!-- backwards compatibility -->
<a id="schemacredrevokedresult"></a>
<a id="schema_CredRevokedResult"></a>
<a id="tocScredrevokedresult"></a>
<a id="tocscredrevokedresult"></a>

```json
{
  "revoked": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|revoked|boolean|false|none|Whether credential is revoked on the ledger|

<h2 id="tocS_CredentialDefinition">CredentialDefinition</h2>
<!-- backwards compatibility -->
<a id="schemacredentialdefinition"></a>
<a id="schema_CredentialDefinition"></a>
<a id="tocScredentialdefinition"></a>
<a id="tocscredentialdefinition"></a>

```json
{
  "id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "schemaId": "20",
  "tag": "tag",
  "type": "CL",
  "value": {},
  "ver": "1.0"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string|false|none|Credential definition identifier|
|schemaId|string|false|none|Schema identifier within credential definition identifier|
|tag|string|false|none|Tag within credential definition identifier|
|type|any|false|none|Signature type: CL for Camenisch-Lysyanskaya|
|value|object|false|none|Credential definition primary and revocation values|
|ver|string|false|none|Node protocol version|

<h2 id="tocS_CredentialDefinitionGetResults">CredentialDefinitionGetResults</h2>
<!-- backwards compatibility -->
<a id="schemacredentialdefinitiongetresults"></a>
<a id="schema_CredentialDefinitionGetResults"></a>
<a id="tocScredentialdefinitiongetresults"></a>
<a id="tocscredentialdefinitiongetresults"></a>

```json
{
  "credential_definition": {
    "id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
    "schemaId": "20",
    "tag": "tag",
    "type": "CL",
    "value": {},
    "ver": "1.0"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|credential_definition|[CredentialDefinition](#schemacredentialdefinition)|false|none|none|

<h2 id="tocS_CredentialDefinitionSendRequest">CredentialDefinitionSendRequest</h2>
<!-- backwards compatibility -->
<a id="schemacredentialdefinitionsendrequest"></a>
<a id="schema_CredentialDefinitionSendRequest"></a>
<a id="tocScredentialdefinitionsendrequest"></a>
<a id="tocscredentialdefinitionsendrequest"></a>

```json
{
  "revocation_registry_size": 1000,
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "support_revocation": true,
  "tag": "default"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|revocation_registry_size|integer(int32)|false|none|Revocation registry size|
|schema_id|string|false|none|Schema identifier|
|support_revocation|boolean|false|none|Revocation supported flag|
|tag|string|false|none|Credential definition identifier tag|

<h2 id="tocS_CredentialDefinitionSendResults">CredentialDefinitionSendResults</h2>
<!-- backwards compatibility -->
<a id="schemacredentialdefinitionsendresults"></a>
<a id="schema_CredentialDefinitionSendResults"></a>
<a id="tocScredentialdefinitionsendresults"></a>
<a id="tocscredentialdefinitionsendresults"></a>

```json
{
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|credential_definition_id|string|false|none|Credential definition identifier|

<h2 id="tocS_CredentialDefinitionsCreatedResults">CredentialDefinitionsCreatedResults</h2>
<!-- backwards compatibility -->
<a id="schemacredentialdefinitionscreatedresults"></a>
<a id="schema_CredentialDefinitionsCreatedResults"></a>
<a id="tocScredentialdefinitionscreatedresults"></a>
<a id="tocscredentialdefinitionscreatedresults"></a>

```json
{
  "credential_definition_ids": [
    "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|credential_definition_ids|[string]|false|none|none|

<h2 id="tocS_CredentialPreview">CredentialPreview</h2>
<!-- backwards compatibility -->
<a id="schemacredentialpreview"></a>
<a id="schema_CredentialPreview"></a>
<a id="tocScredentialpreview"></a>
<a id="tocscredentialpreview"></a>

```json
{
  "@type": "issue-credential/1.0/credential-preview",
  "attributes": [
    {
      "mime-type": "image/jpeg",
      "name": "favourite_drink",
      "value": "martini"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|@type|string|false|none|Message type identifier|
|attributes|[[CredAttrSpec](#schemacredattrspec)]|true|none|none|

<h2 id="tocS_DID">DID</h2>
<!-- backwards compatibility -->
<a id="schemadid"></a>
<a id="schema_DID"></a>
<a id="tocSdid"></a>
<a id="tocsdid"></a>

```json
{
  "did": "WgWxqztrNooG92RXvxSTWv",
  "posture": "wallet_only",
  "verkey": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|did|string|false|none|DID of interest|
|posture|string|false|none|Whether DID is current public DID, posted to ledger but not current public DID, or local to the wallet|
|verkey|string|false|none|Public verification key|

#### Enumerated Values

|Property|Value|
|---|---|
|posture|public|
|posture|posted|
|posture|wallet_only|

<h2 id="tocS_DIDEndpoint">DIDEndpoint</h2>
<!-- backwards compatibility -->
<a id="schemadidendpoint"></a>
<a id="schema_DIDEndpoint"></a>
<a id="tocSdidendpoint"></a>
<a id="tocsdidendpoint"></a>

```json
{
  "did": "WgWxqztrNooG92RXvxSTWv",
  "endpoint": "https://myhost:8021"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|did|string|true|none|DID of interest|
|endpoint|string|false|none|Endpoint to set (omit to delete)|

<h2 id="tocS_DIDEndpointWithType">DIDEndpointWithType</h2>
<!-- backwards compatibility -->
<a id="schemadidendpointwithtype"></a>
<a id="schema_DIDEndpointWithType"></a>
<a id="tocSdidendpointwithtype"></a>
<a id="tocsdidendpointwithtype"></a>

```json
{
  "did": "WgWxqztrNooG92RXvxSTWv",
  "endpoint": "https://myhost:8021",
  "endpoint_type": "Endpoint"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|did|string|true|none|DID of interest|
|endpoint|string|false|none|Endpoint to set (omit to delete)|
|endpoint_type|string|false|none|Endpoint type to set (default 'Endpoint'); affects only public or posted DIDs|

#### Enumerated Values

|Property|Value|
|---|---|
|endpoint_type|Endpoint|
|endpoint_type|Profile|
|endpoint_type|LinkedDomains|

<h2 id="tocS_DIDList">DIDList</h2>
<!-- backwards compatibility -->
<a id="schemadidlist"></a>
<a id="schema_DIDList"></a>
<a id="tocSdidlist"></a>
<a id="tocsdidlist"></a>

```json
{
  "results": [
    {
      "did": "WgWxqztrNooG92RXvxSTWv",
      "posture": "wallet_only",
      "verkey": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|results|[[DID](#schemadid)]|false|none|DID list|

<h2 id="tocS_DIDResult">DIDResult</h2>
<!-- backwards compatibility -->
<a id="schemadidresult"></a>
<a id="schema_DIDResult"></a>
<a id="tocSdidresult"></a>
<a id="tocsdidresult"></a>

```json
{
  "result": {
    "did": "WgWxqztrNooG92RXvxSTWv",
    "posture": "wallet_only",
    "verkey": "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|result|[DID](#schemadid)|false|none|none|

<h2 id="tocS_IndyProofReqAttrSpec">IndyProofReqAttrSpec</h2>
<!-- backwards compatibility -->
<a id="schemaindyproofreqattrspec"></a>
<a id="schema_IndyProofReqAttrSpec"></a>
<a id="tocSindyproofreqattrspec"></a>
<a id="tocsindyproofreqattrspec"></a>

```json
{
  "name": "favouriteDrink",
  "names": [
    "age"
  ],
  "non_revoked": {
    "from": 1612465856,
    "to": 1612465856
  },
  "restrictions": [
    {
      "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
      "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|Attribute name|
|names|[string]|false|none|Attribute name group|
|non_revoked|[IndyProofReqNonRevoked](#schemaindyproofreqnonrevoked)|false|none|none|
|restrictions|[object]|false|none|If present, credential must satisfy one of given restrictions: specify schema_id, schema_issuer_did, schema_name, schema_version, issuer_did, cred_def_id, and/or attr::<attribute-name>::value where <attribute-name> represents a credential attribute name|
|» **additionalProperties**|string|false|none|none|

<h2 id="tocS_IndyProofReqNonRevoked">IndyProofReqNonRevoked</h2>
<!-- backwards compatibility -->
<a id="schemaindyproofreqnonrevoked"></a>
<a id="schema_IndyProofReqNonRevoked"></a>
<a id="tocSindyproofreqnonrevoked"></a>
<a id="tocsindyproofreqnonrevoked"></a>

```json
{
  "from": 1612465856,
  "to": 1612465856
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|from|integer(int32)|false|none|Earliest epoch of interest for non-revocation proof|
|to|integer(int32)|false|none|Latest epoch of interest for non-revocation proof|

<h2 id="tocS_IndyProofReqPredSpec">IndyProofReqPredSpec</h2>
<!-- backwards compatibility -->
<a id="schemaindyproofreqpredspec"></a>
<a id="schema_IndyProofReqPredSpec"></a>
<a id="tocSindyproofreqpredspec"></a>
<a id="tocsindyproofreqpredspec"></a>

```json
{
  "name": "index",
  "non_revoked": {
    "from": 1612465856,
    "to": 1612465856
  },
  "p_type": ">=",
  "p_value": 0,
  "restrictions": [
    {
      "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
      "issuer_did": "WgWxqztrNooG92RXvxSTWv",
      "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
      "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
      "schema_name": "transcript",
      "schema_version": "1.0"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|Attribute name|
|non_revoked|[IndyProofReqNonRevoked](#schemaindyproofreqnonrevoked)|false|none|none|
|p_type|string|true|none|Predicate type ('<', '<=', '>=', or '>')|
|p_value|integer(int32)|true|none|Threshold value|
|restrictions|[[IndyProofReqPredSpecRestrictions](#schemaindyproofreqpredspecrestrictions)]|false|none|If present, credential must satisfy one of given restrictions|

#### Enumerated Values

|Property|Value|
|---|---|
|p_type|<|
|p_type|<=|
|p_type|>=|
|p_type|>|

<h2 id="tocS_IndyProofReqPredSpecRestrictions">IndyProofReqPredSpecRestrictions</h2>
<!-- backwards compatibility -->
<a id="schemaindyproofreqpredspecrestrictions"></a>
<a id="schema_IndyProofReqPredSpecRestrictions"></a>
<a id="tocSindyproofreqpredspecrestrictions"></a>
<a id="tocsindyproofreqpredspecrestrictions"></a>

```json
{
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_name": "transcript",
  "schema_version": "1.0"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|cred_def_id|string|false|none|Credential definition identifier|
|issuer_did|string|false|none|Credential issuer DID|
|schema_id|string|false|none|Schema identifier|
|schema_issuer_did|string|false|none|Schema issuer (origin) DID|
|schema_name|string|false|none|Schema name|
|schema_version|string|false|none|Schema version|

<h2 id="tocS_IndyProofRequest">IndyProofRequest</h2>
<!-- backwards compatibility -->
<a id="schemaindyproofrequest"></a>
<a id="schema_IndyProofRequest"></a>
<a id="tocSindyproofrequest"></a>
<a id="tocsindyproofrequest"></a>

```json
{
  "name": "Proof request",
  "non_revoked": {
    "from": 1612465856,
    "to": 1612465856
  },
  "nonce": "1234567890",
  "requested_attributes": {
    "property1": {
      "name": "favouriteDrink",
      "names": [
        "age"
      ],
      "non_revoked": {
        "from": 1612465856,
        "to": 1612465856
      },
      "restrictions": [
        {
          "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
          "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
        }
      ]
    },
    "property2": {
      "name": "favouriteDrink",
      "names": [
        "age"
      ],
      "non_revoked": {
        "from": 1612465856,
        "to": 1612465856
      },
      "restrictions": [
        {
          "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
          "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
        }
      ]
    }
  },
  "requested_predicates": {
    "property1": {
      "name": "index",
      "non_revoked": {
        "from": 1612465856,
        "to": 1612465856
      },
      "p_type": ">=",
      "p_value": 0,
      "restrictions": [
        {
          "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
          "issuer_did": "WgWxqztrNooG92RXvxSTWv",
          "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
          "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
          "schema_name": "transcript",
          "schema_version": "1.0"
        }
      ]
    },
    "property2": {
      "name": "index",
      "non_revoked": {
        "from": 1612465856,
        "to": 1612465856
      },
      "p_type": ">=",
      "p_value": 0,
      "restrictions": [
        {
          "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
          "issuer_did": "WgWxqztrNooG92RXvxSTWv",
          "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
          "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
          "schema_name": "transcript",
          "schema_version": "1.0"
        }
      ]
    }
  },
  "version": "1.0"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|Proof request name|
|non_revoked|[IndyProofReqNonRevoked](#schemaindyproofreqnonrevoked)|false|none|none|
|nonce|string|false|none|Nonce|
|requested_attributes|object|true|none|Requested attribute specifications of proof request|
|» **additionalProperties**|[IndyProofReqAttrSpec](#schemaindyproofreqattrspec)|false|none|none|
|requested_predicates|object|true|none|Requested predicate specifications of proof request|
|» **additionalProperties**|[IndyProofReqPredSpec](#schemaindyproofreqpredspec)|false|none|none|
|version|string|false|none|Proof request version|

<h2 id="tocS_IndyRequestedCredsRequestedAttr">IndyRequestedCredsRequestedAttr</h2>
<!-- backwards compatibility -->
<a id="schemaindyrequestedcredsrequestedattr"></a>
<a id="schema_IndyRequestedCredsRequestedAttr"></a>
<a id="tocSindyrequestedcredsrequestedattr"></a>
<a id="tocsindyrequestedcredsrequestedattr"></a>

```json
{
  "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "revealed": true,
  "timestamp": 1612465856
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|cred_id|string|true|none|Wallet credential identifier (typically but not necessarily a UUID)|
|revealed|boolean|true|none|Whether to reveal attribute in proof|
|timestamp|integer(int32)|false|none|Epoch timestamp of interest for non-revocation proof|

<h2 id="tocS_IndyRequestedCredsRequestedPred">IndyRequestedCredsRequestedPred</h2>
<!-- backwards compatibility -->
<a id="schemaindyrequestedcredsrequestedpred"></a>
<a id="schema_IndyRequestedCredsRequestedPred"></a>
<a id="tocSindyrequestedcredsrequestedpred"></a>
<a id="tocsindyrequestedcredsrequestedpred"></a>

```json
{
  "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "timestamp": 1612465856
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|cred_id|string|true|none|Wallet credential identifier (typically but not necessarily a UUID)|
|timestamp|integer(int32)|false|none|Epoch timestamp of interest for non-revocation proof|

<h2 id="tocS_InvitationResult">InvitationResult</h2>
<!-- backwards compatibility -->
<a id="schemainvitationresult"></a>
<a id="schema_InvitationResult"></a>
<a id="tocSinvitationresult"></a>
<a id="tocsinvitationresult"></a>

```json
{
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "invitation": {
    "@id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "@type": "https://didcomm.org/my-family/1.0/my-message-type",
    "did": "WgWxqztrNooG92RXvxSTWv",
    "image_url": "http://192.168.56.101/img/logo.jpg",
    "label": "Bob",
    "recipientKeys": [
      "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
    ],
    "routingKeys": [
      "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
    ],
    "serviceEndpoint": "http://192.168.56.101:8020"
  },
  "invitation_url": "http://192.168.56.101:8020/invite?c_i=eyJAdHlwZSI6Li4ufQ=="
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|connection_id|string|false|none|Connection identifier|
|invitation|[ConnectionInvitation](#schemaconnectioninvitation)|false|none|none|
|invitation_url|string|false|none|Invitation URL|

<h2 id="tocS_OperatorConfigurationResult">OperatorConfigurationResult</h2>
<!-- backwards compatibility -->
<a id="schemaoperatorconfigurationresult"></a>
<a id="schema_OperatorConfigurationResult"></a>
<a id="tocSoperatorconfigurationresult"></a>
<a id="tocsoperatorconfigurationresult"></a>

```json
{
  "api_key": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiI1ZjUyNGZhYmM2NzAwMTAwMDEwMGY5ZTUiLCJleHAiOjE2MzAzMzQ1Nzl9.mE0WH81Y40xImEcEVwhHa5KA8uaxPF4SwrZPKW-SiYc",
  "org_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|api_key|string|false|none|iGrant.io operator API key|
|org_id|string|true|none|Organization ID|

<h2 id="tocS_PingRequest">PingRequest</h2>
<!-- backwards compatibility -->
<a id="schemapingrequest"></a>
<a id="schema_PingRequest"></a>
<a id="tocSpingrequest"></a>
<a id="tocspingrequest"></a>

```json
{
  "comment": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|comment|string¦null|false|none|Comment for the ping message|

<h2 id="tocS_PingRequestResponse">PingRequestResponse</h2>
<!-- backwards compatibility -->
<a id="schemapingrequestresponse"></a>
<a id="schema_PingRequestResponse"></a>
<a id="tocSpingrequestresponse"></a>
<a id="tocspingrequestresponse"></a>

```json
{
  "thread_id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|thread_id|string|false|none|Thread ID of the ping message|

<h2 id="tocS_PresAttrSpec">PresAttrSpec</h2>
<!-- backwards compatibility -->
<a id="schemapresattrspec"></a>
<a id="schema_PresAttrSpec"></a>
<a id="tocSpresattrspec"></a>
<a id="tocspresattrspec"></a>

```json
{
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "mime-type": "image/jpeg",
  "name": "favourite_drink",
  "referent": "0",
  "value": "martini"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|cred_def_id|string|false|none|none|
|mime-type|string|false|none|MIME type (default null)|
|name|string|true|none|Attribute name|
|referent|string|false|none|Credential referent|
|value|string|false|none|Attribute value|

<h2 id="tocS_PresPredSpec">PresPredSpec</h2>
<!-- backwards compatibility -->
<a id="schemaprespredspec"></a>
<a id="schema_PresPredSpec"></a>
<a id="tocSprespredspec"></a>
<a id="tocsprespredspec"></a>

```json
{
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "name": "high_score",
  "predicate": ">=",
  "threshold": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|cred_def_id|string|false|none|Credential definition identifier|
|name|string|true|none|Attribute name|
|predicate|string|true|none|Predicate type ('<', '<=', '>=', or '>')|
|threshold|integer(int32)|true|none|Threshold value|

#### Enumerated Values

|Property|Value|
|---|---|
|predicate|<|
|predicate|<=|
|predicate|>=|
|predicate|>|

<h2 id="tocS_PresentationPreview">PresentationPreview</h2>
<!-- backwards compatibility -->
<a id="schemapresentationpreview"></a>
<a id="schema_PresentationPreview"></a>
<a id="tocSpresentationpreview"></a>
<a id="tocspresentationpreview"></a>

```json
{
  "@type": "did:sov:BzCbsNYhMrjHiqZDTUASHg;spec/present-proof/1.0/presentation-preview",
  "attributes": [
    {
      "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
      "mime-type": "image/jpeg",
      "name": "favourite_drink",
      "referent": "0",
      "value": "martini"
    }
  ],
  "predicates": [
    {
      "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
      "name": "high_score",
      "predicate": ">=",
      "threshold": 0
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|@type|string|false|none|Message type identifier|
|attributes|[[PresAttrSpec](#schemapresattrspec)]|true|none|none|
|predicates|[[PresPredSpec](#schemaprespredspec)]|true|none|none|

<h2 id="tocS_PublishRevocations">PublishRevocations</h2>
<!-- backwards compatibility -->
<a id="schemapublishrevocations"></a>
<a id="schema_PublishRevocations"></a>
<a id="tocSpublishrevocations"></a>
<a id="tocspublishrevocations"></a>

```json
{
  "rrid2crid": {
    "property1": [
      "12345"
    ],
    "property2": [
      "12345"
    ]
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|rrid2crid|object|false|none|Credential revocation ids by revocation registry id|
|» **additionalProperties**|[string]|false|none|none|

<h2 id="tocS_QueryResult">QueryResult</h2>
<!-- backwards compatibility -->
<a id="schemaqueryresult"></a>
<a id="schema_QueryResult"></a>
<a id="tocSqueryresult"></a>
<a id="tocsqueryresult"></a>

```json
{
  "results": {
    "property1": {},
    "property2": {}
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|results|object|false|none|Query results keyed by protocol|
|» **additionalProperties**|object|false|none|Protocol descriptor|

<h2 id="tocS_ReceiveInvitationRequest">ReceiveInvitationRequest</h2>
<!-- backwards compatibility -->
<a id="schemareceiveinvitationrequest"></a>
<a id="schema_ReceiveInvitationRequest"></a>
<a id="tocSreceiveinvitationrequest"></a>
<a id="tocsreceiveinvitationrequest"></a>

```json
{
  "@id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "@type": "https://didcomm.org/my-family/1.0/my-message-type",
  "did": "WgWxqztrNooG92RXvxSTWv",
  "image_url": "http://192.168.56.101/img/logo.jpg",
  "label": "Bob",
  "recipientKeys": [
    "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  ],
  "routingKeys": [
    "H3C2AVvLMv6gmMNam3uVAjZpfkcJCwDwnZn6z3wXmqPV"
  ],
  "serviceEndpoint": "http://192.168.56.101:8020"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|@id|string|false|none|Message identifier|
|@type|string|false|read-only|Message type|
|did|string|false|none|DID for connection invitation|
|image_url|string(url)¦null|false|none|Optional image URL for connection invitation|
|label|string|false|none|Optional label for connection|
|recipientKeys|[string]|false|none|List of recipient keys|
|routingKeys|[string]|false|none|List of routing keys|
|serviceEndpoint|string|false|none|Service endpoint at which to reach this agent|

<h2 id="tocS_RevRegCreateRequest">RevRegCreateRequest</h2>
<!-- backwards compatibility -->
<a id="schemarevregcreaterequest"></a>
<a id="schema_RevRegCreateRequest"></a>
<a id="tocSrevregcreaterequest"></a>
<a id="tocsrevregcreaterequest"></a>

```json
{
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "max_cred_num": 1000
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|credential_definition_id|string|false|none|Credential definition identifier|
|max_cred_num|integer(int32)|false|none|Revocation registry size|

<h2 id="tocS_RevRegIssuedResult">RevRegIssuedResult</h2>
<!-- backwards compatibility -->
<a id="schemarevregissuedresult"></a>
<a id="schema_RevRegIssuedResult"></a>
<a id="tocSrevregissuedresult"></a>
<a id="tocsrevregissuedresult"></a>

```json
{
  "result": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|result|integer(int32)|false|none|Number of credentials issued against revocation registry|

<h2 id="tocS_RevRegResult">RevRegResult</h2>
<!-- backwards compatibility -->
<a id="schemarevregresult"></a>
<a id="schema_RevRegResult"></a>
<a id="tocSrevregresult"></a>
<a id="tocsrevregresult"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_RevRegUpdateTailsFileUri">RevRegUpdateTailsFileUri</h2>
<!-- backwards compatibility -->
<a id="schemarevregupdatetailsfileuri"></a>
<a id="schema_RevRegUpdateTailsFileUri"></a>
<a id="tocSrevregupdatetailsfileuri"></a>
<a id="tocsrevregupdatetailsfileuri"></a>

```json
{
  "tails_public_uri": "http://192.168.56.133:6543/revocation/registry/WgWxqztrNooG92RXvxSTWv:4:WgWxqztrNooG92RXvxSTWv:3:CL:20:tag:CL_ACCUM:0/tails-file"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|tails_public_uri|string(url)|true|none|Public URI to the tails file|

<h2 id="tocS_RevRegsCreated">RevRegsCreated</h2>
<!-- backwards compatibility -->
<a id="schemarevregscreated"></a>
<a id="schema_RevRegsCreated"></a>
<a id="tocSrevregscreated"></a>
<a id="tocsrevregscreated"></a>

```json
{
  "rev_reg_ids": [
    "WgWxqztrNooG92RXvxSTWv:4:WgWxqztrNooG92RXvxSTWv:3:CL:20:tag:CL_ACCUM:0"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|rev_reg_ids|[string]|false|none|none|

<h2 id="tocS_RevokeRequest">RevokeRequest</h2>
<!-- backwards compatibility -->
<a id="schemarevokerequest"></a>
<a id="schema_RevokeRequest"></a>
<a id="tocSrevokerequest"></a>
<a id="tocsrevokerequest"></a>

```json
{
  "cred_ex_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "cred_rev_id": "12345",
  "publish": true,
  "rev_reg_id": "WgWxqztrNooG92RXvxSTWv:4:WgWxqztrNooG92RXvxSTWv:3:CL:20:tag:CL_ACCUM:0"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|cred_ex_id|string|false|none|Credential exchange identifier|
|cred_rev_id|string|false|none|Credential revocation identifier|
|publish|boolean|false|none|(True) publish revocation to ledger immediately, or (default, False) mark it pending|
|rev_reg_id|string|false|none|Revocation registry identifier|

<h2 id="tocS_Schema">Schema</h2>
<!-- backwards compatibility -->
<a id="schemaschema"></a>
<a id="schema_Schema"></a>
<a id="tocSschema"></a>
<a id="tocsschema"></a>

```json
{
  "attrNames": [
    "score"
  ],
  "id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "name": "schema_name",
  "seqNo": 10,
  "ver": "1.0",
  "version": "1.0"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|attrNames|[string]|false|none|Schema attribute names|
|id|string|false|none|Schema identifier|
|name|string|false|none|Schema name|
|seqNo|integer(int32)|false|none|Schema sequence number|
|ver|string|false|none|Node protocol version|
|version|string|false|none|Schema version|

<h2 id="tocS_SchemaGetResults">SchemaGetResults</h2>
<!-- backwards compatibility -->
<a id="schemaschemagetresults"></a>
<a id="schema_SchemaGetResults"></a>
<a id="tocSschemagetresults"></a>
<a id="tocsschemagetresults"></a>

```json
{
  "schema": {
    "attrNames": [
      "score"
    ],
    "id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
    "name": "schema_name",
    "seqNo": 10,
    "ver": "1.0",
    "version": "1.0"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|schema|[Schema](#schemaschema)|false|none|none|

<h2 id="tocS_SchemaSendRequest">SchemaSendRequest</h2>
<!-- backwards compatibility -->
<a id="schemaschemasendrequest"></a>
<a id="schema_SchemaSendRequest"></a>
<a id="tocSschemasendrequest"></a>
<a id="tocsschemasendrequest"></a>

```json
{
  "attributes": [
    "score"
  ],
  "schema_name": "prefs",
  "schema_version": "1.0"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|attributes|[string]|true|none|List of schema attributes|
|schema_name|string|true|none|Schema name|
|schema_version|string|true|none|Schema version|

<h2 id="tocS_SchemaSendResults">SchemaSendResults</h2>
<!-- backwards compatibility -->
<a id="schemaschemasendresults"></a>
<a id="schema_SchemaSendResults"></a>
<a id="tocSschemasendresults"></a>
<a id="tocsschemasendresults"></a>

```json
{
  "schema": {},
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|schema|object|true|none|Schema result|
|schema_id|string|true|none|Schema identifier|

<h2 id="tocS_SchemasCreatedResults">SchemasCreatedResults</h2>
<!-- backwards compatibility -->
<a id="schemaschemascreatedresults"></a>
<a id="schema_SchemasCreatedResults"></a>
<a id="tocSschemascreatedresults"></a>
<a id="tocsschemascreatedresults"></a>

```json
{
  "schema_ids": [
    "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|schema_ids|[string]|false|none|none|

<h2 id="tocS_SendMessage">SendMessage</h2>
<!-- backwards compatibility -->
<a id="schemasendmessage"></a>
<a id="schema_SendMessage"></a>
<a id="tocSsendmessage"></a>
<a id="tocssendmessage"></a>

```json
{
  "content": "Hello"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|content|string|false|none|Message content|

<h2 id="tocS_TAAAccept">TAAAccept</h2>
<!-- backwards compatibility -->
<a id="schemataaaccept"></a>
<a id="schema_TAAAccept"></a>
<a id="tocStaaaccept"></a>
<a id="tocstaaaccept"></a>

```json
{
  "mechanism": "string",
  "text": "string",
  "version": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|mechanism|string|false|none|none|
|text|string|false|none|none|
|version|string|false|none|none|

<h2 id="tocS_TAAAcceptance">TAAAcceptance</h2>
<!-- backwards compatibility -->
<a id="schemataaacceptance"></a>
<a id="schema_TAAAcceptance"></a>
<a id="tocStaaacceptance"></a>
<a id="tocstaaacceptance"></a>

```json
{
  "mechanism": "string",
  "time": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|mechanism|string|false|none|none|
|time|integer(int32)|false|none|none|

<h2 id="tocS_TAAInfo">TAAInfo</h2>
<!-- backwards compatibility -->
<a id="schemataainfo"></a>
<a id="schema_TAAInfo"></a>
<a id="tocStaainfo"></a>
<a id="tocstaainfo"></a>

```json
{
  "aml_record": {
    "aml": {
      "property1": "string",
      "property2": "string"
    },
    "amlContext": "string",
    "version": "string"
  },
  "taa_accepted": {
    "mechanism": "string",
    "time": 0
  },
  "taa_record": {
    "digest": "string",
    "text": "string",
    "version": "string"
  },
  "taa_required": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|aml_record|[AMLRecord](#schemaamlrecord)|false|none|none|
|taa_accepted|[TAAAcceptance](#schemataaacceptance)|false|none|none|
|taa_record|[TAARecord](#schemataarecord)|false|none|none|
|taa_required|boolean|false|none|none|

<h2 id="tocS_TAARecord">TAARecord</h2>
<!-- backwards compatibility -->
<a id="schemataarecord"></a>
<a id="schema_TAARecord"></a>
<a id="tocStaarecord"></a>
<a id="tocstaarecord"></a>

```json
{
  "digest": "string",
  "text": "string",
  "version": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|digest|string|false|none|none|
|text|string|false|none|none|
|version|string|false|none|none|

<h2 id="tocS_TAAResult">TAAResult</h2>
<!-- backwards compatibility -->
<a id="schemataaresult"></a>
<a id="schema_TAAResult"></a>
<a id="tocStaaresult"></a>
<a id="tocstaaresult"></a>

```json
{
  "result": {
    "aml_record": {
      "aml": {
        "property1": "string",
        "property2": "string"
      },
      "amlContext": "string",
      "version": "string"
    },
    "taa_accepted": {
      "mechanism": "string",
      "time": 0
    },
    "taa_record": {
      "digest": "string",
      "text": "string",
      "version": "string"
    },
    "taa_required": true
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|result|[TAAInfo](#schemataainfo)|false|none|none|

<h2 id="tocS_V10CredentialCreate">V10CredentialCreate</h2>
<!-- backwards compatibility -->
<a id="schemav10credentialcreate"></a>
<a id="schema_V10CredentialCreate"></a>
<a id="tocSv10credentialcreate"></a>
<a id="tocsv10credentialcreate"></a>

```json
{
  "auto_remove": true,
  "comment": "string",
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_proposal": {
    "@type": "issue-credential/1.0/credential-preview",
    "attributes": [
      {
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "value": "martini"
      }
    ]
  },
  "issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_name": "preferences",
  "schema_version": "1.0",
  "trace": false
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|auto_remove|boolean|false|none|Whether to remove the credential exchange record on completion (overrides --preserve-exchange-records configuration setting)|
|comment|string¦null|false|none|Human-readable comment|
|cred_def_id|string|false|none|Credential definition identifier|
|credential_proposal|[CredentialPreview](#schemacredentialpreview)|true|none|none|
|issuer_did|string|false|none|Credential issuer DID|
|schema_id|string|false|none|Schema identifier|
|schema_issuer_did|string|false|none|Schema issuer DID|
|schema_name|string|false|none|Schema name|
|schema_version|string|false|none|Schema version|
|trace|boolean|false|none|Whether to trace event (default false)|

<h2 id="tocS_V10CredentialExchange">V10CredentialExchange</h2>
<!-- backwards compatibility -->
<a id="schemav10credentialexchange"></a>
<a id="schema_V10CredentialExchange"></a>
<a id="tocSv10credentialexchange"></a>
<a id="tocsv10credentialexchange"></a>

```json
{
  "auto_issue": false,
  "auto_offer": false,
  "auto_remove": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "credential": {},
  "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "credential_offer": {},
  "credential_offer_dict": {},
  "credential_proposal_dict": {},
  "credential_request": {},
  "credential_request_metadata": {},
  "error_msg": "credential definition identifier is not set in proposal",
  "initiator": "self",
  "parent_thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "raw_credential": {},
  "revoc_reg_id": "string",
  "revocation_id": "string",
  "role": "issuer",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "state": "credential_acked",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|auto_issue|boolean|false|none|Issuer choice to issue to request in this credential exchange|
|auto_offer|boolean|false|none|Holder choice to accept offer in this credential exchange|
|auto_remove|boolean|false|none|Issuer choice to remove this credential exchange record when complete|
|connection_id|string|false|none|Connection identifier|
|created_at|string|false|none|Time of record creation|
|credential|object|false|none|Credential as stored|
|credential_definition_id|string|false|none|Credential definition identifier|
|credential_exchange_id|string|false|none|Credential exchange identifier|
|credential_id|string|false|none|Credential identifier|
|credential_offer|object|false|none|(Indy) credential offer|
|credential_offer_dict|object|false|none|Serialized credential offer message|
|credential_proposal_dict|object|false|none|Serialized credential proposal message|
|credential_request|object|false|none|(Indy) credential request|
|credential_request_metadata|object|false|none|(Indy) credential request metadata|
|error_msg|string|false|none|Error message|
|initiator|string|false|none|Issue-credential exchange initiator: self or external|
|parent_thread_id|string|false|none|Parent thread identifier|
|raw_credential|object|false|none|Credential as received, prior to storage in holder wallet|
|revoc_reg_id|string|false|none|Revocation registry identifier|
|revocation_id|string|false|none|Credential identifier within revocation registry|
|role|string|false|none|Issue-credential exchange role: holder or issuer|
|schema_id|string|false|none|Schema identifier|
|state|string|false|none|Issue-credential exchange state|
|thread_id|string|false|none|Thread identifier|
|trace|boolean|false|none|Record trace information, based on agent configuration|
|updated_at|string|false|none|Time of last record update|

#### Enumerated Values

|Property|Value|
|---|---|
|initiator|self|
|initiator|external|
|role|holder|
|role|issuer|

<h2 id="tocS_V10CredentialExchangeListResult">V10CredentialExchangeListResult</h2>
<!-- backwards compatibility -->
<a id="schemav10credentialexchangelistresult"></a>
<a id="schema_V10CredentialExchangeListResult"></a>
<a id="tocSv10credentialexchangelistresult"></a>
<a id="tocsv10credentialexchangelistresult"></a>

```json
{
  "results": [
    {
      "auto_issue": false,
      "auto_offer": false,
      "auto_remove": false,
      "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "created_at": "2021-02-04 19:10:56Z",
      "credential": {},
      "credential_definition_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
      "credential_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "credential_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "credential_offer": {},
      "credential_offer_dict": {},
      "credential_proposal_dict": {},
      "credential_request": {},
      "credential_request_metadata": {},
      "error_msg": "credential definition identifier is not set in proposal",
      "initiator": "self",
      "parent_thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "raw_credential": {},
      "revoc_reg_id": "string",
      "revocation_id": "string",
      "role": "issuer",
      "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
      "state": "credential_acked",
      "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "trace": true,
      "updated_at": "2021-02-04 19:10:56Z"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|results|[[V10CredentialExchange](#schemav10credentialexchange)]|false|none|Aries#0036 v1.0 credential exchange records|

<h2 id="tocS_V10CredentialIssueRequest">V10CredentialIssueRequest</h2>
<!-- backwards compatibility -->
<a id="schemav10credentialissuerequest"></a>
<a id="schema_V10CredentialIssueRequest"></a>
<a id="tocSv10credentialissuerequest"></a>
<a id="tocsv10credentialissuerequest"></a>

```json
{
  "comment": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|comment|string¦null|false|none|Human-readable comment|

<h2 id="tocS_V10CredentialOfferRequest">V10CredentialOfferRequest</h2>
<!-- backwards compatibility -->
<a id="schemav10credentialofferrequest"></a>
<a id="schema_V10CredentialOfferRequest"></a>
<a id="tocSv10credentialofferrequest"></a>
<a id="tocsv10credentialofferrequest"></a>

```json
{
  "auto_issue": true,
  "auto_remove": true,
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_preview": {
    "@type": "issue-credential/1.0/credential-preview",
    "attributes": [
      {
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "value": "martini"
      }
    ]
  },
  "trace": false
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|auto_issue|boolean|false|none|Whether to respond automatically to credential requests, creating and issuing requested credentials|
|auto_remove|boolean|false|none|Whether to remove the credential exchange record on completion (overrides --preserve-exchange-records configuration setting)|
|comment|string¦null|false|none|Human-readable comment|
|connection_id|string(uuid)|true|none|Connection identifier|
|cred_def_id|string|true|none|Credential definition identifier|
|credential_preview|[CredentialPreview](#schemacredentialpreview)|true|none|none|
|trace|boolean|false|none|Whether to trace event (default false)|

<h2 id="tocS_V10CredentialProblemReportRequest">V10CredentialProblemReportRequest</h2>
<!-- backwards compatibility -->
<a id="schemav10credentialproblemreportrequest"></a>
<a id="schema_V10CredentialProblemReportRequest"></a>
<a id="tocSv10credentialproblemreportrequest"></a>
<a id="tocsv10credentialproblemreportrequest"></a>

```json
{
  "explain_ltxt": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|explain_ltxt|string|true|none|none|

<h2 id="tocS_V10CredentialProposalRequestMand">V10CredentialProposalRequestMand</h2>
<!-- backwards compatibility -->
<a id="schemav10credentialproposalrequestmand"></a>
<a id="schema_V10CredentialProposalRequestMand"></a>
<a id="tocSv10credentialproposalrequestmand"></a>
<a id="tocsv10credentialproposalrequestmand"></a>

```json
{
  "auto_remove": true,
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_proposal": {
    "@type": "issue-credential/1.0/credential-preview",
    "attributes": [
      {
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "value": "martini"
      }
    ]
  },
  "issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_name": "preferences",
  "schema_version": "1.0",
  "trace": false
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|auto_remove|boolean|false|none|Whether to remove the credential exchange record on completion (overrides --preserve-exchange-records configuration setting)|
|comment|string¦null|false|none|Human-readable comment|
|connection_id|string(uuid)|true|none|Connection identifier|
|cred_def_id|string|false|none|Credential definition identifier|
|credential_proposal|[CredentialPreview](#schemacredentialpreview)|true|none|none|
|issuer_did|string|false|none|Credential issuer DID|
|schema_id|string|false|none|Schema identifier|
|schema_issuer_did|string|false|none|Schema issuer DID|
|schema_name|string|false|none|Schema name|
|schema_version|string|false|none|Schema version|
|trace|boolean|false|none|Whether to trace event (default false)|

<h2 id="tocS_V10CredentialProposalRequestOpt">V10CredentialProposalRequestOpt</h2>
<!-- backwards compatibility -->
<a id="schemav10credentialproposalrequestopt"></a>
<a id="schema_V10CredentialProposalRequestOpt"></a>
<a id="tocSv10credentialproposalrequestopt"></a>
<a id="tocsv10credentialproposalrequestopt"></a>

```json
{
  "auto_remove": true,
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
  "credential_proposal": {
    "@type": "issue-credential/1.0/credential-preview",
    "attributes": [
      {
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "value": "martini"
      }
    ]
  },
  "issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
  "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
  "schema_name": "preferences",
  "schema_version": "1.0",
  "trace": false
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|auto_remove|boolean|false|none|Whether to remove the credential exchange record on completion (overrides --preserve-exchange-records configuration setting)|
|comment|string¦null|false|none|Human-readable comment|
|connection_id|string(uuid)|true|none|Connection identifier|
|cred_def_id|string|false|none|Credential definition identifier|
|credential_proposal|[CredentialPreview](#schemacredentialpreview)|false|none|none|
|issuer_did|string|false|none|Credential issuer DID|
|schema_id|string|false|none|Schema identifier|
|schema_issuer_did|string|false|none|Schema issuer DID|
|schema_name|string|false|none|Schema name|
|schema_version|string|false|none|Schema version|
|trace|boolean|false|none|Whether to trace event (default false)|

<h2 id="tocS_V10CredentialStoreRequest">V10CredentialStoreRequest</h2>
<!-- backwards compatibility -->
<a id="schemav10credentialstorerequest"></a>
<a id="schema_V10CredentialStoreRequest"></a>
<a id="tocSv10credentialstorerequest"></a>
<a id="tocsv10credentialstorerequest"></a>

```json
{
  "credential_id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|credential_id|string|false|none|none|

<h2 id="tocS_V10PresentationCreateRequestRequest">V10PresentationCreateRequestRequest</h2>
<!-- backwards compatibility -->
<a id="schemav10presentationcreaterequestrequest"></a>
<a id="schema_V10PresentationCreateRequestRequest"></a>
<a id="tocSv10presentationcreaterequestrequest"></a>
<a id="tocsv10presentationcreaterequestrequest"></a>

```json
{
  "comment": "string",
  "proof_request": {
    "name": "Proof request",
    "non_revoked": {
      "from": 1612465856,
      "to": 1612465856
    },
    "nonce": "1234567890",
    "requested_attributes": {
      "property1": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      },
      "property2": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      }
    },
    "requested_predicates": {
      "property1": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      },
      "property2": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      }
    },
    "version": "1.0"
  },
  "trace": false
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|comment|string¦null|false|none|none|
|proof_request|[IndyProofRequest](#schemaindyproofrequest)|true|none|none|
|trace|boolean|false|none|Whether to trace event (default false)|

<h2 id="tocS_V10PresentationExchange">V10PresentationExchange</h2>
<!-- backwards compatibility -->
<a id="schemav10presentationexchange"></a>
<a id="schema_V10PresentationExchange"></a>
<a id="tocSv10presentationexchange"></a>
<a id="tocsv10presentationexchange"></a>

```json
{
  "auto_present": false,
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "created_at": "2021-02-04 19:10:56Z",
  "error_msg": "Invalid structure",
  "initiator": "self",
  "presentation": {},
  "presentation_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "presentation_proposal_dict": {},
  "presentation_request": {},
  "presentation_request_dict": {},
  "role": "prover",
  "state": "verified",
  "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "trace": true,
  "updated_at": "2021-02-04 19:10:56Z",
  "verified": "true"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|auto_present|boolean|false|none|Prover choice to auto-present proof as verifier requests|
|connection_id|string|false|none|Connection identifier|
|created_at|string|false|none|Time of record creation|
|error_msg|string|false|none|Error message|
|initiator|string|false|none|Present-proof exchange initiator: self or external|
|presentation|object|false|none|(Indy) presentation (also known as proof)|
|presentation_exchange_id|string|false|none|Presentation exchange identifier|
|presentation_proposal_dict|object|false|none|Serialized presentation proposal message|
|presentation_request|object|false|none|(Indy) presentation request (also known as proof request)|
|presentation_request_dict|object|false|none|Serialized presentation request message|
|role|string|false|none|Present-proof exchange role: prover or verifier|
|state|string|false|none|Present-proof exchange state|
|thread_id|string|false|none|Thread identifier|
|trace|boolean|false|none|Record trace information, based on agent configuration|
|updated_at|string|false|none|Time of last record update|
|verified|string|false|none|Whether presentation is verified: true or false|

#### Enumerated Values

|Property|Value|
|---|---|
|initiator|self|
|initiator|external|
|role|prover|
|role|verifier|
|verified|true|
|verified|false|

<h2 id="tocS_V10PresentationExchangeList">V10PresentationExchangeList</h2>
<!-- backwards compatibility -->
<a id="schemav10presentationexchangelist"></a>
<a id="schema_V10PresentationExchangeList"></a>
<a id="tocSv10presentationexchangelist"></a>
<a id="tocsv10presentationexchangelist"></a>

```json
{
  "results": [
    {
      "auto_present": false,
      "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "created_at": "2021-02-04 19:10:56Z",
      "error_msg": "Invalid structure",
      "initiator": "self",
      "presentation": {},
      "presentation_exchange_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "presentation_proposal_dict": {},
      "presentation_request": {},
      "presentation_request_dict": {},
      "role": "prover",
      "state": "verified",
      "thread_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "trace": true,
      "updated_at": "2021-02-04 19:10:56Z",
      "verified": "true"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|results|[[V10PresentationExchange](#schemav10presentationexchange)]|false|none|Aries RFC 37 v1.0 presentation exchange records|

<h2 id="tocS_V10PresentationProposalRequest">V10PresentationProposalRequest</h2>
<!-- backwards compatibility -->
<a id="schemav10presentationproposalrequest"></a>
<a id="schema_V10PresentationProposalRequest"></a>
<a id="tocSv10presentationproposalrequest"></a>
<a id="tocsv10presentationproposalrequest"></a>

```json
{
  "auto_present": true,
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "presentation_proposal": {
    "@type": "did:sov:BzCbsNYhMrjHiqZDTUASHg;spec/present-proof/1.0/presentation-preview",
    "attributes": [
      {
        "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
        "mime-type": "image/jpeg",
        "name": "favourite_drink",
        "referent": "0",
        "value": "martini"
      }
    ],
    "predicates": [
      {
        "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
        "name": "high_score",
        "predicate": ">=",
        "threshold": 0
      }
    ]
  },
  "trace": false
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|auto_present|boolean|false|none|Whether to respond automatically to presentation requests, building and presenting requested proof|
|comment|string¦null|false|none|Human-readable comment|
|connection_id|string(uuid)|true|none|Connection identifier|
|presentation_proposal|[PresentationPreview](#schemapresentationpreview)|true|none|none|
|trace|boolean|false|none|Whether to trace event (default false)|

<h2 id="tocS_V10PresentationRequest">V10PresentationRequest</h2>
<!-- backwards compatibility -->
<a id="schemav10presentationrequest"></a>
<a id="schema_V10PresentationRequest"></a>
<a id="tocSv10presentationrequest"></a>
<a id="tocsv10presentationrequest"></a>

```json
{
  "requested_attributes": {
    "property1": {
      "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "revealed": true,
      "timestamp": 1612465856
    },
    "property2": {
      "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "revealed": true,
      "timestamp": 1612465856
    }
  },
  "requested_predicates": {
    "property1": {
      "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "timestamp": 1612465856
    },
    "property2": {
      "cred_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "timestamp": 1612465856
    }
  },
  "self_attested_attributes": {
    "property1": "self_attested_value",
    "property2": "self_attested_value"
  },
  "trace": false
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|requested_attributes|object|true|none|Nested object mapping proof request attribute referents to requested-attribute specifiers|
|» **additionalProperties**|[IndyRequestedCredsRequestedAttr](#schemaindyrequestedcredsrequestedattr)|false|none|none|
|requested_predicates|object|true|none|Nested object mapping proof request predicate referents to requested-predicate specifiers|
|» **additionalProperties**|[IndyRequestedCredsRequestedPred](#schemaindyrequestedcredsrequestedpred)|false|none|none|
|self_attested_attributes|object|true|none|Self-attested attributes to build into proof|
|» **additionalProperties**|string|false|none|Self-attested attribute values to use in requested-credentials structure for proof construction|
|trace|boolean|false|none|Whether to trace event (default false)|

<h2 id="tocS_V10PresentationSendRequestRequest">V10PresentationSendRequestRequest</h2>
<!-- backwards compatibility -->
<a id="schemav10presentationsendrequestrequest"></a>
<a id="schema_V10PresentationSendRequestRequest"></a>
<a id="tocSv10presentationsendrequestrequest"></a>
<a id="tocsv10presentationsendrequestrequest"></a>

```json
{
  "comment": "string",
  "connection_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "proof_request": {
    "name": "Proof request",
    "non_revoked": {
      "from": 1612465856,
      "to": 1612465856
    },
    "nonce": "1234567890",
    "requested_attributes": {
      "property1": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      },
      "property2": {
        "name": "favouriteDrink",
        "names": [
          "age"
        ],
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "restrictions": [
          {
            "property1": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "property2": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag"
          }
        ]
      }
    },
    "requested_predicates": {
      "property1": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      },
      "property2": {
        "name": "index",
        "non_revoked": {
          "from": 1612465856,
          "to": 1612465856
        },
        "p_type": ">=",
        "p_value": 0,
        "restrictions": [
          {
            "cred_def_id": "WgWxqztrNooG92RXvxSTWv:3:CL:20:tag",
            "issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_id": "WgWxqztrNooG92RXvxSTWv:2:schema_name:1.0",
            "schema_issuer_did": "WgWxqztrNooG92RXvxSTWv",
            "schema_name": "transcript",
            "schema_version": "1.0"
          }
        ]
      }
    },
    "version": "1.0"
  },
  "trace": false
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|comment|string¦null|false|none|none|
|connection_id|string(uuid)|true|none|Connection identifier|
|proof_request|[IndyProofRequest](#schemaindyproofrequest)|true|none|none|
|trace|boolean|false|none|Whether to trace event (default false)|

