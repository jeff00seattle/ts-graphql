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
* https://www.apollographql.com/docs/apollo-server/api/apollo-server

## [3. GraphQL and TypeScript: Adding a Database](https://www.youtube.com/watch?v=YudkjAsZJk0&list=PLASldBPN_pkAj8b0Ny5IGoYgsnqylP2c-&index=3)

## [4. GraphQL and TypeScript: Adding a Database - Part 2](https://www.youtube.com/watch?v=gt2Z6zAGtc8&list=PLASldBPN_pkAj8b0Ny5IGoYgsnqylP2c-&index=4)

## [5. GraphQL and TypeScript: Using an ORM - Sequelize](https://www.youtube.com/watch?v=hjQ61H_7YwM&list=PLASldBPN_pkAj8b0Ny5IGoYgsnqylP2c-&index=5)

## [6. GraphQL and TypeScript: Using an ORM - Prisma 2](https://www.youtube.com/watch?v=aqp8B_lekDE&list=PLASldBPN_pkAj8b0Ny5IGoYgsnqylP2c-&index=6)

## [7. GraphQL and TypeScript: Data Source Configuration - Apollo Server](https://www.youtube.com/watch?v=LaQt-Q5hya8&list=PLASldBPN_pkAj8b0Ny5IGoYgsnqylP2c-&index=7)

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
