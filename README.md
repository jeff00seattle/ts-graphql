# ts-graphql

## ApolloServer

### [1. GraphQL and TypeScript: GraphQL Server Setup](https://www.youtube.com/watch?v=NfqDaFN2bnA&list=PLASldBPN_pkAj8b0Ny5IGoYgsnqylP2c-)

* [Apollo GraphQL Doc](https://www.apollographql.com/docs/)
* [Get started with Apollo Server](https://www.apollographql.com/docs/apollo-server/getting-started)
* https://randomuser.me/
* [Building a Trello clone with React Hooks and GraphQL](https://blog.logrocket.com/building-a-trello-clone-with-react-hooks-and-graphql/)
* [GraphQL schema basics](https://www.apollographql.com/docs/apollo-server/schema/schema/)
* [Prettier: install](https://prettier.io/docs/en/install.html)
* https://github.com/prettier/eslint-config-prettier
* https://prettier.io/docs/en/precommit.html

## [2. GraphQL and TypeScript: TypeScript Setup](https://www.youtube.com/watch?v=2MBYrIxYU1E&list=PLASldBPN_pkAj8b0Ny5IGoYgsnqylP2c-&index=2)

* https://github.com/howtographql/typescript-apollo
* https://www.apollograp#hql.com/docs/apollo-server/api/apollo-server

## MacOS cli curl

```bash
$ curl --request POST \
  --header 'content-type: application/json' \
  --url http://localhost:4000/ \
  --data '{"query":"query { __typename }"}'

{"data":{"__typename":"Query"}}
```
```bash
$ curl --request POST \
  --header 'content-type: application/json' \
  --data '{ "query": "{ books { title } } " }' \
  --url 'http://localhost:4000/'

{"data":{"books":[{"title":"The Awakening"},{"title":"City of Glass"}]}}
```

```bash
$ curl --request POST \
  --header 'content-type: application/json' \
  --data '{ "query": "{ books { title, author } } " }' \
  --url 'http://localhost:4000/'
  
{"data":{"books":[{"title":"The Awakening","author":"Kate Chopin"},{"title":"City of Glass","author":"Paul Auster"}]}}
```

```bash
curl --request POST \
  --header 'content-type: application/json' \
  --data '{ "query": "{ books { title }, users { name } }" }' \
  --url 'http://localhost:4000/'
  
{"data":{"books":[{"title":"The Awakening"},{"title":"City of Glass"}],"users":[{"name":"Vera Hawkins"},{"name":"Courtney Schmidt"}]}}
```

```console
curl --request POST \
  --header "Content-Type: application/json" \
  --data '{ "query": "{ countries { code name } }" }' \
  --url 'https://countries.trevorblades.com'

{"data":{"countries":[{"code":"AD","name":"Andorra"},{"code":"AE","name":"United Arab Emirates"},{"code":"AF","name":"Afghanistan"},{"code":"AG","name":"Antigua and Barbuda"},{"code":"AI","name":"Anguilla"},{"code":"AL","name":"Albania"},{"code":"AM","name":"Armenia"},{"code":"AO","name":"Angola"},{"code":"AQ","name":"Antarctica"}
```

## MacOS bash curl

```console
$ cd ./scripts
$ ./curl_books.sh

-------------------------

  CURL_CMD: curl --url "http://localhost:4000/"
  --request POST
  --data '{ "query": "{ books { title, author } } " }'
  --verbose
  --write-out 'HTTPSTATUS:%{http_code}'
  --silent
  --header "Content-Type: application/json"

-------------------------

*   Trying ::1...
* TCP_NODELAY set
* Connected to localhost (::1) port 4000 (#0)
> POST / HTTP/1.1
> Host: localhost:4000
> User-Agent: curl/7.64.1
> Accept: */*
> Content-Type: application/json
> Content-Length: 43
>
} [43 bytes data]
* upload completely sent off: 43 out of 43 bytes
< HTTP/1.1 200 OK
< Access-Control-Allow-Origin: *
< Content-Type: application/json; charset=utf-8
< Content-Length: 119
< ETag: W/"77-VzDrMdIx/isdC6gL4U3P1JH6fgY"
< Date: Sun, 30 Oct 2022 14:03:21 GMT
< Connection: keep-alive
< Keep-Alive: timeout=5
<
{ [119 bytes data]
* Connection #0 to host localhost left intact
* Closing connection 0

-------------------------

Success [HTTP status: 200]

-------------------------

{
  "data": {
    "books": [
      {
        "title": "The Awakening",
        "author": "Kate Chopin"
      },
      {
        "title": "City of Glass",
        "author": "Paul Auster"
      }
    ]
  }
}

-------------------------
```

## Download GraphQL Schema

[How to Retrieve a GraphQL Schema](https://medium.com/@mrthankyou/how-to-get-a-graphql-schema-28915025de0e#:~:text=How%20To%20Get%20The%20Schema%20%E2%80%94%20Introspection%20Queries,called%20a%20GraphQL%20introspection%20query.)

```console
curl 'http://localhost:4000/' \
  --header 'Content-Type: application/json' \
  --header 'Accept: application/json' \
  --compressed \
  --data-binary '{"query":"{\n\t__schema{\n queryType {\n fields{\n name\n }\n }\n }\n}"}' | jq

{
  "data": {
    "__schema": {
      "queryType": {
        "fields": [
          {
            "name": "books"
          },
          {
            "name": "users"
          }
        ]
      }
    }
  }
}
```

```console
curl 'https://countries.trevorblades.com/' \
  --header 'Content-Type: application/json' \
  --header 'Accept: application/json' \
  --compressed \
  --data-binary '{"query":"{\n\t__schema{\n queryType {\n fields{\n name\n }\n }\n }\n}"}' | jq

{
  "data": {
    "__schema": {
      "queryType": {
        "fields": [
          {
            "name": "_entities"
          },
          {
            "name": "_service"
          },
          {
            "name": "countries"
          },
          {
            "name": "country"
          },
          {
            "name": "continents"
          },
          {
            "name": "continent"
          },
          {
            "name": "languages"
          },
          {
            "name": "language"
          }
        ]
      }
    }
  }
}
```
